package ch.ivyteam.demo.jpa.demos;

import java.text.MessageFormat;

import org.apache.log4j.Level;
import org.apache.log4j.Priority;

import ch.ivyteam.demo.jpa.demos.service.IvyService;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.log.ILogger;

/**
 * Ivy Environment safe {@link ILogger}.
 *
 * This {@link ILogger} logs to the Ivy Logger in Designer and
 * to log4j {@link org.apache.log4j.Logger} if not which allows
 * for better filtering.
 */
public class Logger implements ILogger {
	private static final org.apache.log4j.Logger LOG = org.apache.log4j.Logger.getLogger(Logger.class);
	private static volatile ILogger ivyLogger;
	private org.apache.log4j.Logger log4jLogger;
	private static boolean initialized = false;

	private Logger() {
	}

	private Logger(String name) {
		log4jLogger = org.apache.log4j.Logger.getLogger(name);
	}

	/**
	 * get logger for string, usually a class name
	 * @param name
	 * @return logger instance
	 */
	public static Logger getLogger(String name) {
		return new Logger(name);
	}

	/**
	 * get logger for  class with name
	 * @param clazz
	 * @return logger instance
	 */
	public static Logger getLogger(Class<?> clazz) {
		return new Logger(clazz.getCanonicalName());
	}

	@Override
	public void log(Priority level, String formattedMessage, Object... args) {
		log(level, formattedMessage, (Throwable)null, args);
	}

	@Override
	public void log(Priority level, String formattedMessage, Throwable throwable, Object... args) {
		ensureInitialized();
		if (log4jLogger != null && level.isGreaterOrEqual(log4jLogger.getEffectiveLevel())) {
			log4jLogger.log(level, MessageFormat.format(formattedMessage, args), throwable);
		}
		if (ivyLogger != null) {
			ivyLogger.log(level, formattedMessage, throwable, args);
		}
	}

	/**
	 * Checks if is debug enabled.
	 *
	 * @return true, if is debug enabled
	 */
	public boolean isDebugEnabled() {
		return isLevelEnabled(Level.DEBUG);
	}

	/**
	 * Checks if is info enabled.
	 *
	 * @return true, if is info enabled
	 */
	public boolean isInfoEnabled() {
		return isLevelEnabled(Level.INFO);
	}

	@Override
	public void debug(String formattedMessage, Object... args) {
		log(Level.DEBUG, formattedMessage, args);
	}

	@Override
	public void debug(String formattedMessage, Throwable throwable,	Object... args) {
		log(Level.DEBUG, formattedMessage, throwable, args);
	}

	@Override
	public void info(Object message) {
		log(Level.INFO, toNullSafeString(message));
	}

	@Override
	public void info(String formattedMessage, Object... args) {
		log(Level.INFO, formattedMessage, args);
	}

	@Override
	public void info(String formattedMessage, Throwable throwable, Object... args) {
		log(Level.INFO, formattedMessage, throwable, args);
	}

	@Override
	public void warn(Object message) {
		log(Level.WARN, toNullSafeString(message));
	}

	@Override
	public void warn(String formattedMessage, Object... args) {
		log(Level.WARN, formattedMessage, args);
	}

	@Override
	public void warn(String formattedMessage, Throwable throwable, Object... args) {
		log(Level.WARN, formattedMessage, throwable, args);
	}

	@Override
	public void error(Object message) {
		log(Level.ERROR, toNullSafeString(message));
	}

	@Override
	public void error(String formattedMessage, Object... args) {
		log(Level.ERROR, formattedMessage, args);
	}

	@Override
	public void error(String formattedMessage, Throwable throwable, Object... args) {
		log(Level.ERROR, formattedMessage, throwable, args);
	}

	@Override
	public void fatal(String formattedMessage, Object... args) {
		log(Level.FATAL, formattedMessage, args);
	}

	@Override
	public void fatal(String formattedMessage, Throwable throwable, Object... args) {
		log(Level.FATAL, formattedMessage, throwable, args);
	}

	protected void ensureInitialized() {
		if(!initialized) {
			synchronized (Logger.class) {
				if(!initialized) {
					try {
						if(IvyService.isDesigner()) {
							ivyLogger = Ivy.log();
							log4jLogger = null;
						}
						else {
							ivyLogger = null;
						}
					} catch (Exception e) {
						LOG.error("Could not determine, whether this Logger will be used in Designer or not, assuming it is not.");
					}
					finally {
						initialized = true;
					}
					LOG.info("Logging was initialized, using the " + (ivyLogger != null ? "Ivy" : "general") + " Logger.");
				}
			}
		}
	}

	protected boolean isLevelEnabled(Level level) {
		ensureInitialized();
		return ivyLogger != null || log4jLogger != null && level.isGreaterOrEqual(log4jLogger.getEffectiveLevel());
	}

	protected String toNullSafeString(Object o) {
		if(o == null) {
			return "null";
		} else {
			return o.toString();
		} 
	}
}
