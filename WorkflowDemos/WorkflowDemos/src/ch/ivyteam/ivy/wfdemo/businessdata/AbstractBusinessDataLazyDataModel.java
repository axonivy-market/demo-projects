package ch.ivyteam.ivy.wfdemo.businessdata;

import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.business.data.store.search.Filter;
import ch.ivyteam.ivy.business.data.store.search.OrderByOperation.Direction;
import ch.ivyteam.ivy.business.data.store.search.Query;
import ch.ivyteam.ivy.business.data.store.search.Result;
import ch.ivyteam.ivy.environment.Ivy;

public abstract class AbstractBusinessDataLazyDataModel<T> extends LazyDataModel<T> {
	
	private static final long serialVersionUID = -4266652507970456174L;
	private final Class<T> businessDataType;
	private final Ivy ivy = Ivy.getInstance();

	public AbstractBusinessDataLazyDataModel(Class<T> businessDataType)
	{
		this.businessDataType = businessDataType;
	}

	@Override
	public final T getRowData(String rowKey) {
		return ivy.repo.find(rowKey, businessDataType);
	}

	@Override
	public final Object getRowKey(T data) {
		return ivy.repo.getId(data);
	}

	@Override
	public final List<T> load(int first, int pageSize, String sortField, SortOrder sortOrder,
			Map<String, Object> filters) {
		Ivy.log().info(sortField);
		Result<T> result = filter(ivy.repo.search(businessDataType)).orderBy().field(sortField)
				.direction(toDirection(sortOrder)).limit(first, pageSize).execute();
		setRowCount((int) result.totalCount());
		return result.getAll();
	}

	protected abstract Filter<T> filter(Query<T> query);

	private static Direction toDirection(SortOrder sortOrder) {
		if (sortOrder == SortOrder.DESCENDING) {
			return Direction.DESCENDING;
		}
		return Direction.ASCENDING;
	}
}
