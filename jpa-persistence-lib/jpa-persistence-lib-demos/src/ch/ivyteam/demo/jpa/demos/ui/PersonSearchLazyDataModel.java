package ch.ivyteam.demo.jpa.demos.ui;

import java.util.List;
import java.util.Map;

import javax.persistence.Tuple;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortMeta;
import org.primefaces.model.SortOrder;

import com.axonivy.persistence.dao.QuerySettings;
import com.axonivy.persistence.search.SearchFilter;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.daos.PersonDAO;
import ch.ivyteam.demo.jpa.demos.entities.Person;
import ch.ivyteam.demo.jpa.demos.enums.PersonSearchField;

public class PersonSearchLazyDataModel extends LazyDataModel<Tuple> {
	private static Logger LOG = Logger.getLogger(PersonSearchLazyDataModel.class);
	private static final long serialVersionUID = 1L;
	private List<Tuple> personTuples;

	public PersonSearchLazyDataModel() {
		super();
	}

	@Override
	public Tuple getRowData(String rowKey) {
		for (Tuple tuple : personTuples) {
			// Field 0 contains the ID.
			if (tuple.get(0).equals(rowKey)) {
				return tuple;
			}
		}

		return null;
	}

	@Override
	public Object getRowKey(Tuple tuple) {
		// Field 0 contains the ID.
		return tuple.get(0);
	}


	@Override
	public List<Tuple> load(int first, int pageSize, List<SortMeta> multiSortMeta, Map<String, Object> filters) {
		PersonDAO dao = PersonDAO.getInstance();

		SearchFilter filter = new SearchFilter();

		// First field is used as row key and must be the ID (not displayed, therefore not searchable).

		filter
		.add(PersonSearchField.ID)
		.add(PersonSearchField.IVY_USER_NAME, filters.get(PersonSearchField.IVY_USER_NAME.name()))
		.add(PersonSearchField.FIRST_NAME, filters.get(PersonSearchField.FIRST_NAME.name()))
		.add(PersonSearchField.LAST_NAME, filters.get(PersonSearchField.LAST_NAME.name()))
		.add(PersonSearchField.BIRTHDATE, filters.get(PersonSearchField.BIRTHDATE.name()))
		.add(PersonSearchField.MARITAL_STATUS, filters.get(PersonSearchField.MARITAL_STATUS.name()))
		.add(PersonSearchField.MARITAL_STATUS_LIKE, filters.get(PersonSearchField.MARITAL_STATUS_LIKE.name()))
		.add(PersonSearchField.SALARY, filters.get(PersonSearchField.SALARY.name()))
		.add(PersonSearchField.DEPARTMENT_NAME, filters.get(PersonSearchField.DEPARTMENT_NAME.name()))
		.add(PersonSearchField.SYNC_TO_IVY, filters.get(PersonSearchField.SYNC_TO_IVY.name()));

		if(multiSortMeta != null) {
			for(SortMeta sortMeta : multiSortMeta) {
				filter.addSort(PersonSearchField.valueOf(sortMeta.getSortField()), sortMeta.getSortOrder() == SortOrder.ASCENDING ? true : false);
			}
		}

		// Handle paging.
		QuerySettings<Person> querySettings =
				new QuerySettings<Person>().withFirstResult(first).withMaxResults(pageSize);

		// Do the search.
		personTuples = dao.findBySearchFilter(filter, querySettings);

		// Do the counting with the same filter.
		long dataSize = dao.countBySearchFilter(filter);
		this.setRowCount((int) dataSize);

		return personTuples;
	}
}
