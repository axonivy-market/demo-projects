package ch.ivyteam.demo.jpa.demos.daos;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.persistence.criteria.CriteriaBuilder.Case;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Subquery;

import com.axonivy.persistence.dao.AuditableDAO;
import com.axonivy.persistence.dao.CriteriaQueryContext;
import com.axonivy.persistence.dao.CriteriaQueryGenericContext;
import com.axonivy.persistence.dao.ExpressionMap;
import com.axonivy.persistence.dao.QuerySettings;
import com.axonivy.persistence.search.AttributePredicates;
import com.axonivy.persistence.search.FilterPredicate;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.daos.markers.AccessMarker;
import ch.ivyteam.demo.jpa.demos.entities.Department_;
import ch.ivyteam.demo.jpa.demos.entities.Person;
import ch.ivyteam.demo.jpa.demos.entities.Person_;
import ch.ivyteam.demo.jpa.demos.enums.AccessRestriction;
import ch.ivyteam.demo.jpa.demos.enums.MaritalStatus;
import ch.ivyteam.demo.jpa.demos.enums.PersonSearchField;
import ch.ivyteam.demo.jpa.demos.ivy.HasCmsName;
import ch.ivyteam.demo.jpa.demos.service.EnumService;
import ch.ivyteam.demo.jpa.demos.service.IvyService;


public class PersonDAO extends AuditableDAO<Person_, Person> implements BaseDAO {
	private static final Logger LOG = Logger.getLogger(PersonDAO.class);
	private static final PersonDAO instance = new PersonDAO();

	private PersonDAO() {
	}

	public static PersonDAO getInstance() {
		return instance;
	}

	@Override
	protected Class<Person> getType() {
		return Person.class;
	}

	/**
	 * Find a user by it's Ivy user name.
	 *
	 * @param ivyUserName
	 * @param settings
	 * @return
	 */
	public Person findByIvyUserName(String ivyUserName, QuerySettings<Person> settings) {
		Person result = null;
		try (CriteriaQueryContext<Person> ctx = initializeQuery()) {
			Expression<String> nameExpr = getExpression(null, ctx.r, Person_.ivyUserName);
			ctx.whereEq(nameExpr, ivyUserName);
			if(settings != null) {
				ctx.setQuerySettings(settings);
			}
			result = forceSingleResult(findByCriteria(ctx));
		}
		return result;
	}

	@Override
	protected <U> void manipulateCriteriaFactory(CriteriaQueryGenericContext<Person, U> ctx) {
		super.manipulateCriteriaFactory(ctx);

		AccessMarker accessMarker = ctx.getQuerySettings().getMarker(AccessMarker.class);

		if(accessMarker == null) {
			accessMarker = AccessMarker.AUTHORIZED;
		}

		if(accessMarker.getAccessRestriction() == AccessRestriction.ALL || IvyService.hasGlobalAccess()) {
			// unrestricted
		}
		else {
			ctx.where(getPersonRestrictionPredicate(ctx));
		}
	}

	@SuppressWarnings("unchecked")
	public static Predicate getPersonRestrictionPredicate(CriteriaQueryGenericContext<?, ?> ctx) {
		Root<?> root = ctx.getCurrentRoot();

		String userName = IvyService.getSessionUserName();

		ExpressionMap exmap = ctx.getCurrentExpressionMap();

		Expression<String> dpmntIdExpression = (Expression<String>) getExpressionGeneral(exmap, root, Person_.department, Department_.id);


		Subquery<String> dpmntQuery = ctx.q.subquery(String.class);
		Root<Person> root2 = dpmntQuery.from(Person.class);
		ctx.setTemporaryRoot(root2);
		ctx.setTemporaryExpressionMap(ExpressionMap.createNewExpressionMap());
		Expression<String> ivyUserNameExpression = getExpression(ctx.getCurrentExpressionMap(), root2, Person_.ivyUserName);
		dpmntQuery.where(ctx.c.equal(ivyUserNameExpression, userName));
		Expression<String> dpmntId = getExpression(ctx.getCurrentExpressionMap(), root2, Person_.department, Department_.id);
		dpmntQuery.select(dpmntId);

		ctx.resetTemporaryExpressionMap();
		ctx.resetTemporaryRoot();

		Predicate personPred = ctx.c.equal(dpmntIdExpression, dpmntQuery);
		return personPred;
	}

	@Override
	protected AttributePredicates getAttributePredicate(CriteriaQueryGenericContext<Person, ?> query, FilterPredicate filterPredicate, ExpressionMap expressionMap) {
		AttributePredicates attributePredicate = new AttributePredicates();

		Enum<?> searchFilter = filterPredicate.getSearchFilter();

		if(searchFilter instanceof PersonSearchField) {
			switch((PersonSearchField)searchFilter) {
			case BIRTHDATE:
				Expression<Date> birthdateExpresssion = getExpression(expressionMap, query.r, Person_.birthdate);
				attributePredicate.addSelection(birthdateExpresssion);
				attributePredicate.addOrder(query.c.asc(birthdateExpresssion));
				String searchDateString = filterPredicate.getValue();
				if (searchDateString != null) {
					Date searchDate = new Date(Long.parseLong(searchDateString));
					attributePredicate.addPredicate(query.c.equal(birthdateExpresssion, searchDate));
				}
				break;
			case DEPARTMENT_NAME:
				addSelectionOrderAndLike(query,
						filterPredicate,
						attributePredicate,
						getExpression(expressionMap, query.r, Person_.department, Department_.name));
				break;
			case FIRST_NAME:
				addSelectionOrderAndLike(query,
						filterPredicate,
						attributePredicate,
						getExpression(expressionMap, query.r, Person_.firstName));
				break;
			case ID:
				addSelectionOrderAndLike(query,
						filterPredicate,
						attributePredicate,
						getExpression(expressionMap, query.r, Person_.id));
				break;
			case IVY_USER_NAME:
				addSelectionOrderAndLike(query,
						filterPredicate,
						attributePredicate,
						getExpression(expressionMap, query.r, Person_.ivyUserName));
				break;
			case LAST_NAME:
				addSelectionOrderAndLike(query,
						filterPredicate,
						attributePredicate,
						getExpression(expressionMap, query.r, Person_.lastName));
				break;
			case MARITAL_STATUS:
			{
				Expression<MaritalStatus> msExpression = getExpression(expressionMap, query.r, Person_.maritalStatus);

				attributePredicate.addSelection(msExpression);

				// get enum entries sorted by CMS name
				List<Entry<HasCmsName, String>> entries = EnumService.getSortedByCmsName(MaritalStatus.values());

				// filter the enum values where cms name contains search text
				if(filterPredicate.hasValue()) {
					MaritalStatus value = MaritalStatus.valueOf(filterPredicate.getValue());
					attributePredicate.addPredicate(msExpression.in(value));
				}

				// create an ascending integer for every entry to use for sorting
				Case<Integer> msCaseExpression = query.c.selectCase();

				int i = 0;
				for (Entry<HasCmsName, String> entry : entries) {
					msCaseExpression = msCaseExpression.when(query.c.equal(msExpression, entry.getKey()), i);
					i++;
				}
				msCaseExpression.otherwise(i);

				attributePredicate.addOrder(query.c.asc(msCaseExpression));

				break;
			}
			case MARITAL_STATUS_LIKE:
			{
				Expression<MaritalStatus> msExpression = getExpression(expressionMap, query.r, Person_.maritalStatus);

				attributePredicate.addSelection(msExpression);

				// get enum entries sorted by CMS name
				List<Entry<HasCmsName, String>> entries = EnumService.getSortedByCmsName(MaritalStatus.values());

				// filter the enum values where cms name contains search text
				if(filterPredicate.hasValue()) {
					// search text
					String value = filterPredicate.getValue();
					List<HasCmsName> filtered =
							entries.stream()
							.filter(e -> e.getValue().contains(value))
							.map(e -> e.getKey())
							.collect(Collectors.toList());

					if(filtered.size() > 0) {
						attributePredicate.addPredicate(msExpression.in(filtered));
					}
					else {
						attributePredicate.addPredicate(query.alwaysFalse());
					}
				}

				// create an ascending integer for every entry to use for sorting
				Case<Integer> msCaseExpression = query.c.selectCase();

				int i = 0;
				for (Entry<HasCmsName, String> entry : entries) {
					msCaseExpression = msCaseExpression.when(query.c.equal(msExpression, entry.getKey()), i);
					i++;
				}
				msCaseExpression.otherwise(i);

				attributePredicate.addOrder(query.c.asc(msCaseExpression));

				break;
			}
			case SALARY:
				Expression<BigDecimal> salaryExpresssion = getExpression(expressionMap, query.r, Person_.salary);
				attributePredicate.addSelection(salaryExpresssion);
				attributePredicate.addOrder(query.c.asc(salaryExpresssion));
				String minSalaryString = filterPredicate.getValue();
				if (minSalaryString != null) {
					try {
						BigDecimal minSalary = new BigDecimal(minSalaryString);
						attributePredicate.addPredicate(query.c.ge(salaryExpresssion, minSalary));
					} catch (NumberFormatException e) {
						LOG.error("Could not convert value ''{0}'' to a number to search for minimal salary.", minSalaryString);
					}
				}
				break;
			case SYNC_TO_IVY:
				Expression<Boolean> syncToIvyExpresssion = getExpression(expressionMap, query.r, Person_.syncToIvy);
				attributePredicate.addSelection(syncToIvyExpresssion);
				attributePredicate.addOrder(query.c.asc(syncToIvyExpresssion));
				String syncToIvyString = filterPredicate.getValue();
				if (syncToIvyString != null) {
					if(Boolean.valueOf(syncToIvyString)) {
						attributePredicate.addPredicate(query.c.isTrue(syncToIvyExpresssion));
					} else {
						attributePredicate.addPredicate(query.c.isFalse(syncToIvyExpresssion));
					}
				}
				break;
			default:
				throw new IllegalArgumentException("Person search does not support search filter '" +  searchFilter + "'");
			}
		}
		return attributePredicate;
	}
}
