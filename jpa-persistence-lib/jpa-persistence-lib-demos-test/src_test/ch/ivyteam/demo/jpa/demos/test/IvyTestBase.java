package ch.ivyteam.demo.jpa.demos.test;

import java.text.MessageFormat;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.persistence.Tuple;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.PropertyConfigurator;
import org.hsqldb.util.DatabaseManagerSwing;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import com.axonivy.persistence.util.IvyUtilities;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.service.IvyService;
import ch.ivyteam.demo.jpa.demos.test.dao.TestDAO;
import ch.ivyteam.demo.jpa.demos.test.mock.Mocked;
import ch.ivyteam.demo.jpa.demos.test.mock.SimpleWorkflowSession;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.IWorkflowContext;


@ExtendWith(MockitoExtension.class)
public class IvyTestBase {
	protected final Logger LOG = Logger.getLogger(getClass());

	protected String defaultUserName = "Developer";
	protected String defaultUserFullName = "Developer";
	protected String defaultUserEmail = "developer@axonivy.com";
	protected MockedStatic<Ivy> ivy;
	protected MockedStatic<FacesContext> facesContext;
	protected MockedStatic<IvyUtilities> ivyUtilities;

	
	@BeforeEach
	public void setup() {
		ivy = Mockito.mockStatic(Ivy.class);
		facesContext = Mockito.mockStatic(FacesContext.class);
		// re-initialize all the ivy stuff before every test
		Mocked.initialize();

		IUser user = Mocked.securityContext.createUser(defaultUserName, defaultUserFullName, "password", Locale.GERMAN, defaultUserEmail, null);
		Mocked.workflowSession.setSessionUser(user);
		// use thenAnswer instead of theReturn to reevaluate always at time of call
		// so it will be possible to change Mocked objects at runtime (eg Session)
		Mockito.when(Ivy.var()).thenAnswer(i -> Mocked.globalVariableContext);
		Mockito.when(Ivy.cms()).thenAnswer(i -> Mocked.contentManagementSystem);
		Mockito.when(Ivy.persistence()).thenAnswer(i -> Mocked.persistenceContext);
		Mockito.when(Ivy.session()).thenAnswer(i -> Mocked.workflowSession);

		Mockito.when(Ivy.wf()).thenReturn(Mockito.mock(IWorkflowContext.class));
		Mockito.when(Ivy.wf().getApplication()).thenReturn(Mockito.mock(IApplication.class));

		Mockito.lenient().when(Ivy.wf().getSecurityContext()).thenAnswer(i -> Mocked.securityContext);
		Mockito.lenient().when(Ivy.wf().getApplication().getSecurityContext()).thenAnswer(i -> Mocked.securityContext);
		// override some static methods
		ivyUtilities = Mockito.mockStatic(IvyUtilities.class);
		Mockito.when(IvyUtilities.getProcessModelName()).thenReturn("TestProcessModel");
		// override FacesContext
		Mockito.when(FacesContext.getCurrentInstance()).thenAnswer(i -> Mocked.facesContext);

		LOG.info("Finished setting up mocking.");
	}

	public PackageLevel packageLevel(String packagePrefix, Level level) {
		PackageLevel pl = new PackageLevel();
		pl.setLevel(level);
		pl.setPackagePrefix(packagePrefix);
		return pl;
	}

	public static class PackageLevel {
		private Level level;
		private String packagePrefix;

		private PackageLevel() {
		}
		public Level getLevel() {
			return level;
		}
		public void setLevel(Level level) {
			this.level = level;
		}
		public String getPackagePrefix() {
			return packagePrefix;
		}
		public void setPackagePrefix(String packagePrefix) {
			this.packagePrefix = packagePrefix;
		}
	}

	/**
	 * Set the given categories to the given {@link Level}.
	 *
	 * If no packages are given, then all packages will match.
	 *
	 * @param message
	 * @param globalLevel
	 * @param packageLevels
	 */
	public void switchOnLogging(Level globalLevel, PackageLevel...packageLevels) {
		switchOnLogging("Configuring logging system:", globalLevel, packageLevels);
	}

	/**
	 * Automatically switch logging to a useful default after test.
	 */
	@AfterEach
	public void switchOffLogging() {
		if(ivy != null) {
			ivy.close();
		}
		if(facesContext != null) {
			facesContext.close();
		}
		if(ivyUtilities != null) {
			ivyUtilities.close();
		}
		switchOnLogging("Resetting logging system:", Level.WARN);
	}

	/**
	 * Set the given categories to the given {@link Level}.
	 *
	 * If no packages are given, then all packages will match.
	 *
	 * @param message
	 * @param globalLevel
	 * @param packageLevels
	 */
	private void switchOnLogging(String message, Level globalLevel, PackageLevel...packageLevels) {
		prepareLog(message, p -> {
			p.setProperty("log4j.rootLogger", globalLevel.toString() + ",stdout");
			p.setProperty("log4j.additivity", "false");
			for (PackageLevel packageLevel : packageLevels) {
				p.setProperty("log4j.logger." + packageLevel.getPackagePrefix(), packageLevel.getLevel().toString() + ",stdout");
				p.setProperty("log4j.additivity." + packageLevel.getPackagePrefix(), "false");
			}
		});
	}

	private Properties prepareLog(String message, Consumer<Properties> propertiesSetter) {
		Properties props = new Properties();
		// props.setProperty("log4j.debug", "true");
		props.setProperty("log4j.appender.stdout", "org.apache.log4j.ConsoleAppender");
		props.setProperty("log4j.appender.stdout.target", "System.out");
		props.setProperty("log4j.appender.stdout.layout", "org.apache.log4j.PatternLayout");
		props.setProperty("log4j.appender.stdout.layout.ConversionPattern", "%d{HH:mm:ss.SSS} %-5p %c - %m%n");
		propertiesSetter.accept(props);

		String logMessage = MessageFormat.format("{0}: {1} {2}", message, "log4j.rootLogger", props.get("log4j.rootLogger"));

		List<Entry<Object, Object>> loggers = props.entrySet().stream()
				.filter(e -> e.getKey().toString().contains("logger"))
				.sorted((l,r) -> l.getKey().toString().compareToIgnoreCase(r.getKey().toString())).collect(Collectors.toList());

		if(loggers.size() > 0) {
			logMessage =
					logMessage +
					System.lineSeparator() +
					loggers.stream()
					.map(e -> "    " + e.getKey().toString() + ": " + e.getValue())
					.collect(Collectors.joining(System.lineSeparator()));
		}

		LOG.info(logMessage);

		LogManager.resetConfiguration();
		PropertyConfigurator.configure(props);

		return props;
	}

	/**
	 * Show Hibernate statements.
	 * 
	 * @return
	 */
	public PackageLevel packageLevelHibernateSqlStatements() {
		return packageLevel("org.hibernate.SQL", Level.TRACE);
	}

	/**
	 * Show Hibernate parameters (except Enums).
	 * 
	 * @return
	 */
	public PackageLevel packageLevelHibernateSqlParameters() {
		return packageLevel("org.hibernate.type.descriptor.sql.BasicBinder", Level.TRACE);
	}

	/**
	 * Show Hibernate enum parameters.
	 * 
	 * @return
	 */
	public PackageLevel packageLevelHibernateSqlEnums() {
		return packageLevel("org.hibernate.type.EnumType", Level.TRACE);
	}

	/**
	 * Show Hibernate results.
	 * @return
	 */
	public PackageLevel packageLevelHibernateSqlResults() {
		return packageLevel("org.hibernate.type.descriptor.sql.BasicExtractor", Level.TRACE);
	}

	/**
	 * Show everything from Hibernate.
	 * 
	 * @return
	 */
	public PackageLevel[] packageLevelHibernateFull() {
		return new PackageLevel[] {
				packageLevelHibernateSqlStatements(),
				packageLevelHibernateSqlParameters(),
				packageLevelHibernateSqlEnums(),
				packageLevelHibernateSqlResults()
		};
	}

	/**
	 * Combine package levels.
	 * 
	 * @param left
	 * @param right
	 * @return
	 */
	public PackageLevel[] packageLevelCombine(PackageLevel[] left, PackageLevel...right) {
		PackageLevel[] result = new PackageLevel[left.length + right.length];
		int currIndex = 0;
		for(int i=0; i<left.length; i++) {
			result[currIndex++] = left[i];
		}
		for(int i=0; i<right.length; i++) {
			result[currIndex++] = right[i];
		}
		return result;
	}

	/**
	 * Combine package levels.
	 * 
	 * @param levels
	 * @return
	 */
	public PackageLevel[] packageLevelCombine(PackageLevel...levels) {
		return levels;
	}

	/**
	 * Start a GUI for the testing database.
	 * 
	 * @param testDao
	 */
	public void startDatabaseManagerSwing(TestDAO testDao) {
		Object url = testDao.getEntityManagerProperty("hibernate.connection.url");
		DatabaseManagerSwing.main(new String[] {"--url", url.toString(), "--noexit" });
	}

	/**
	 * Log a collection of tuples intelligently.
	 * 
	 * @param tupleName name which is printed as a headline
	 * @param tuples
	 * @param max max length per column, if < 0 then entries will be abbreviated to fit
	 */
	public void logTuples(String tupleName, Collection<Tuple> tuples, int max) {
		LOG.info("Begin of tuples ''{0}'' ({1} entries)", tupleName, tuples.size());
		boolean abbreviate = max < 0;
		int maxWidth = max < 0 ? -max : max;

		boolean first = true;
		int widths[] = new int[0];
		for (Tuple tuple : tuples) {
			if(first) {
				// initialize list of max column widths
				first = false;
				widths = new int[tuple.getElements().size()];
			}
			// check lengths of all columns, if bigger, remember
			for (int i = 0; i < widths.length; i++) {
				String value = "" + tuple.get(i);
				int length = value.toString().length();
				if(widths[i] < length) {
					widths[i] = length;
				}

				widths[i] = Math.min(widths[i], maxWidth);
			}
		}

		if(!first) {
			int row = 0;
			for (Tuple tuple : tuples) {
				row++;
				StringBuilder lineBuilder = new StringBuilder(String.format("%3d", row));

				for (int i = 0; i < widths.length; i++) {
					String value = "" + tuple.get(i);
					if(value.length() > maxWidth && abbreviate) {
						value = StringUtils.abbreviate(value, maxWidth);
					}
					lineBuilder.append(String.format(" %-" + widths[i] + "s", value));
				}
				LOG.info(lineBuilder.toString());
			}

		}
		LOG.info("End of tuples ''{0}'' ({1} entries)", tupleName, tuples.size());
	}

	/**
	 * Switch to a new user and return the previous user.
	 * 
	 * @param username
	 * @return
	 */
	public IUser switchToUser(String username) {
		IUser old = IvyService.getSessionUser();
		IUser user = IvyService.findUser(username);
		if(user == null) {
			throw new RuntimeException("Could not find user " + username);
		}
		Mocked.workflowSession = new SimpleWorkflowSession();
		Mocked.workflowSession.setSessionUser(user);
		return old;
	}

	/**
	 * Switch to the system user.
	 * 
	 * @return
	 */
	public IUser switchToSystemUser() {
		IUser systemUser = IvyService.getSystemUser();
		if(systemUser == null) {
			throw new RuntimeException("Could not find system user");
		}
		return switchToUser(systemUser.getName());
	}

	/**
	 * Grant a role to a user.
	 * 
	 * @param username
	 */
	public void grantRoleToUser(String rolename, String username) {
		IUser user = IvyService.findUser(username);
		if(user == null) {
			throw new RuntimeException("Could not find user " + username);
		}

		IRole role = IvyService.findRole(rolename);
		if(role == null) {
			throw new RuntimeException("Could not find role " + rolename);
		}
		user.addRole(role);
	}

	/**
	 * Revoke a role from a user.
	 * 
	 * @param username
	 */
	public void revokeRoleFromUser(String rolename, String username) {
		IUser user = IvyService.findUser(username);
		if(user == null) {
			throw new RuntimeException("Could not find user " + username);
		}

		IRole role = IvyService.findRole(rolename);
		if(role == null) {
			throw new RuntimeException("Could not find role " + rolename);
		}
		user.removeRole(role);
	}

	/**
	 * Set a global variable.
	 * 
	 * @param key
	 * @param value
	 * @return 
	 */
	public String setGlobalVariable(String key, String value) {
		return Mocked.globalVariableContext.put(key, value);
	}

	private boolean safeCompare(Object l, Object r) {
		if(l == r) {
			return true;
		}
		if(l == null || r == null) {
			return false;
		}

		return l.equals(r);
	}

	private String toString(FacesMessage m) {
		return "" + m.getSeverity() + ":" + m.getSummary() + ":"	+ m.getDetail();
	}

	public void assertFacesMessages(String message, FacesMessage...expected) {
		boolean differ = false;
		List<FacesMessage> faces = Mocked.facesContext.getMessageList();

		StringBuilder sb = new StringBuilder();
		int max = faces.size();
		if(expected.length > max) {
			max = expected.length;
		}
		for (int i = 0; i < max; i++) {
			String ex = null;
			String got = null;
			if(i < expected.length) {
				ex = toString(expected[i]);
			}
			if(i < faces.size()) {
				got = toString(faces.get(i));
			}
			if(!safeCompare(ex, got)) {
				differ = true;
				sb.append(String.format("diff at index %d: expected: '%s' got: '%s'%n", i, ex, got));
			}
		}

		if(differ) {
			String assertError = String.format(
					"%s%nFaces Messages differ, size: expected: %d got: %d%n%s",
					message,
					expected.length,
					faces.size(),
					sb.toString());
			LOG.error(assertError);
			throw new AssertionError(
					assertError);
		}
	}
}