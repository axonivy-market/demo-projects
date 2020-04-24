package ch.ivyteam.htmldialog.demo.component;

import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.htmldialog.demo.Person;
import ch.ivyteam.htmldialog.demo.data.DataSource;

@SuppressWarnings("serial")
public class PersonLazyDataModel extends LazyDataModel<Person>
{

  private DataSource source;

  public PersonLazyDataModel(DataSource source)
  {
    this.source = source;
  }

  @Override
  public Person getRowData(String rowKey)
  {
    return source.getPerson(rowKey);
  }

  @Override
  public Object getRowKey(Person person)
  {
    return person.getId();
  }

  @Override
  public List<Person> load(int first, int pageSize, String sortField,
          SortOrder sortOrder, Map<String, Object> filters)
  {

    this.setRowCount(source.count(filters));
    List<Person> persons = source.query(filters, sortOrder, sortField, pageSize, first);
    return persons;
  }
}
