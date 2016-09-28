package ch.ivyteam.ivy.wfdemo.businessdata;

import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import workflow.businessdata.Dossier;
import ch.ivyteam.ivy.business.data.store.search.OrderByOperation.Direction;
import ch.ivyteam.ivy.business.data.store.search.Result;
import ch.ivyteam.ivy.environment.Ivy;

public class DossierLazyDataModel extends LazyDataModel<Dossier> {

	private static final long serialVersionUID = -501730717404259085L;
	private final Ivy ivy = Ivy.getInstance();

	private String wordsFilter = "";

	@Override
	public Dossier getRowData(String rowKey) {
		return ivy.repo.find(rowKey, Dossier.class);
	}

	@Override
	public Object getRowKey(Dossier dossier) {
		return ivy.repo.getId(dossier);
	}

	@Override
	public List<Dossier> load(int first, int pageSize, String sortField,
			SortOrder sortOrder, Map<String, Object> filters) {
		Result<Dossier> result = ivy.repo.search(Dossier.class)
				.allFields().containsAllWordPatterns(wordsFilter)
				.orderBy().field(sortField)
				.direction(toDirection(sortOrder)).limit(first, pageSize)
				.execute();
		setRowCount((int) result.totalCount());
		return result.getAll();
	}

	private static Direction toDirection(SortOrder sortOrder) {
		if (sortOrder == SortOrder.DESCENDING) {
			return Direction.DESCENDING;
		}
		return Direction.ASCENDING;
	}

	public String getWordsFilter() {
		return wordsFilter;
	}

	public void setWordsFilter(String wordsFilter) {
		this.wordsFilter = wordsFilter;
	}

}
