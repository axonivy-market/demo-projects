package ch.ivyteam.htmldialog.demo.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.primefaces.model.SortOrder;

import ch.ivyteam.htmldialog.demo.Person;
import ch.ivyteam.htmldialog.demo.component.PersonLazySorter;

public class DataSource {
	private List<Person> allPersons;
	
	public DataSource(int sourceSize){
		allPersons = DataGenerator.generatePersons(sourceSize);
	}
	
	private List<Person> paginate(int first, int pageSize, List<Person> filteredPersons) {
		if(filteredPersons.size() > pageSize){
			if(first + pageSize > filteredPersons.size()){
				return filteredPersons.subList(first, first + (filteredPersons.size() % pageSize));
			}
			else {
				return filteredPersons.subList(first, first + pageSize);
			}
		}
		else {
			return filteredPersons;
		}
	}

	private List<Person> sort(String sortField, SortOrder sortOrder, List<Person> filteredPersons) {
		if(sortField != null) {
			Collections.sort(filteredPersons, new PersonLazySorter(sortField, sortOrder));
		}
		return filteredPersons;
	}

	private List<Person> filter(Map<String, Object> filters) {
		List<Person>filteredPersons = new ArrayList<Person>();
		for(Person person : allPersons){
			boolean match = true;
			
			if(filters != null) {
				for(Iterator<String> it = filters.keySet().iterator(); it.hasNext();){
					try {
						String filterProperty = it.next();
						String filterValue = filters.get(filterProperty).toString();
						String fieldValue = "";
						
						if(filterProperty.equals("globalFilter")){
							if(StringUtils.containsIgnoreCase(person.getName(), filterValue)
									|| StringUtils.containsIgnoreCase(person.getFirstname(), filterValue)
									|| person.getBirthYear().toString().contains(filterValue))							{
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
							
							if(filterValue == null || StringUtils.containsIgnoreCase(fieldValue, filterValue)) {
								match = true;
							}
							else{
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

	public Person getPerson(String rowKey) {
		for(Person person : allPersons){
			if(person.getId().equals(rowKey))
				return person;
		}
		return null;
	}

	public List<Person> query(Map<String, Object> filters, SortOrder sortOrder,
		String sortField, int pageSize, int first) {
		List<Person> persons = filter(filters);
		persons = sort(sortField,sortOrder, persons);
		persons = paginate(first, pageSize, persons);
		return persons;
	}

	public int count(Map<String, Object> filters) {
		return filter(filters).size();
	}
}