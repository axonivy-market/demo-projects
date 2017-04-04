package ch.ivyteam.htmldialog.demo.component;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.htmldialog.demo.Person;

@SuppressWarnings("serial")
public class PersonLazyDataModel extends LazyDataModel<Person> {
	
	private List<Person> persons;
	
	public PersonLazyDataModel(List<Person> persons)
	{
		this.persons = persons;
	}
	
	@Override
	public Person getRowData(String rowKey) {
		for(Person person : persons){
			if(person.getId().equals(rowKey))
				return person;
		}
		return null;
	}
	
	@Override
	public Object getRowKey(Person person) {		
		return person.getId();
	}
	
	@Override
	public List<Person> load(int first, int pageSize, String sortField,
			SortOrder sortOrder, Map<String, Object> filters) {
		
		List<Person> filteredPersons = filterData(filters);
		sortData(sortField, sortOrder, filteredPersons);
		this.setRowCount(filteredPersons.size());
		return paginate(first, pageSize, filteredPersons, this.getRowCount());
	}

	private List<Person> paginate(int first, int pageSize,
			List<Person> filteredPersons, int dataSize) {
		if(dataSize > pageSize)
		{
			try{
				return filteredPersons.subList(first, first + pageSize);
			}
			catch (IndexOutOfBoundsException e){
				return filteredPersons.subList(first, first + (dataSize % pageSize));
			}
		}
		else {
			return filteredPersons;
		}
	}

	private void sortData(String sortField, SortOrder sortOrder,
			List<Person> filteredPersons) {
		if(sortField != null)
		{
			Collections.sort(filteredPersons, new PersonLazySorter(sortField, sortOrder));
		}
	}

	private List<Person> filterData(Map<String, Object> filters) {
		
		List<Person> filteredPersons = new ArrayList<Person>();
		for(Person person : persons)
		{
			boolean match = true;
			
			if(filters != null) {
				for(Iterator<String> it = filters.keySet().iterator(); it.hasNext();)
				{
					try {
						String filterProperty = it.next();
						Object filterValue = filters.get(filterProperty);
						String fieldValue = "";
						
						if(filterProperty.equals("globalFilter")){
							if(person.getName().toLowerCase().contains(filterValue.toString().toLowerCase())
									|| person.getFirstname().toLowerCase().contains(filterValue.toString().toLowerCase())
									|| person.getBirthYear().toString().contains(filterValue.toString()))
							{
								match = true;
								break;
							}
							match = false;
						}
						else{
							if (filterProperty.equals("name")) {
								fieldValue = person.getName();
							}
							else if(filterProperty.equals("firstname")) {
								fieldValue = person.getFirstname();
							}
							else if(filterProperty.equals("birthYear")){
								fieldValue = person.getBirthYear().toString();
							}
							
							if(filterValue == null || fieldValue.toLowerCase().contains(filterValue.toString().toLowerCase()))
							{
								match = true;
							}
							else
							{
								match = false;
								break;
							}
						}
						
					} catch (Exception ex) {
						match = false;
					}
				}
			}
			
			if(match) {
				filteredPersons.add(person);
			}
		}
		return filteredPersons;
	}
}
