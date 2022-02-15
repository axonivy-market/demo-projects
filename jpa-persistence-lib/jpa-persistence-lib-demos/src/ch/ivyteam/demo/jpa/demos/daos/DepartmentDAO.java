package ch.ivyteam.demo.jpa.demos.daos;

import javax.persistence.criteria.Expression;

import com.axonivy.persistence.dao.AuditableDAO;
import com.axonivy.persistence.dao.CriteriaQueryContext;
import com.axonivy.persistence.dao.QuerySettings;

import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.entities.Department_;

public class DepartmentDAO extends AuditableDAO<Department_, Department> implements BaseDAO {
	private static final DepartmentDAO instance = new DepartmentDAO(); 

	private DepartmentDAO() {
	}

	public static DepartmentDAO getInstance() {
		return instance;
	}

	@Override
	protected Class<Department> getType() {
		return Department.class;
	}

	public QuerySettings<Department> querySettings() {
		return new QuerySettings<>();
	}

	/**
	 * Find a department by it's name.
	 * 
	 * @param name
	 * @param settings
	 * @return
	 */
	public Department findByName(String name, QuerySettings<Department> settings) {
		Department result = null;
		try (CriteriaQueryContext<Department> ctx = initializeQuery()) {
			Expression<String> nameExpr = getExpression(null, ctx.r, Department_.name);
			ctx.whereEq(nameExpr, name);
			if(settings != null) {
				ctx.setQuerySettings(settings);
			}
			result = forceSingleResult(findByCriteria(ctx));
		}
		return result;
	}

	public Department findByName(String name) {
		return findByName(name, null);
	}
}
