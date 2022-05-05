package ch.ivyteam.htmldialog.demo.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.primefaces.model.FilterMeta;
import org.primefaces.model.SortMeta;

import ch.ivyteam.htmldialog.demo.Person;
import ch.ivyteam.htmldialog.demo.component.PersonLazySorter;

public class DataSource
{
  private List<Person> allPersons;

  public DataSource(int sourceSize)
  {
    allPersons = DataGenerator.generatePersons(sourceSize);
  }

  private List<Person> paginate(int first, int pageSize, List<Person> filteredPersons)
  {
    if (filteredPersons.size() > pageSize)
    {
      if (first + pageSize > filteredPersons.size())
      {
        return filteredPersons.subList(first, first + (filteredPersons.size() % pageSize));
      }
      else
      {
        return filteredPersons.subList(first, first + pageSize);
      }
    }
    else
    {
      return filteredPersons;
    }
  }

  private List<Person> sort(Map<String, SortMeta> sortBy, List<Person> filteredPersons) {
    if (sortBy != null) {
      Collections.sort(filteredPersons, new PersonLazySorter(sortBy));
    }
    return filteredPersons;
  }

  private List<Person> filter(Map<String, FilterMeta> filters) {
    if (filters == null) {
      return allPersons;
    }
    List<Person> filteredPersons = new ArrayList<Person>();
    for (Person person : allPersons) {
      if (filter(filters, person)) {
        filteredPersons.add(person);
      }
    }
    return filteredPersons;
  }

  private static boolean filter(Map<String, FilterMeta> filters, Person person) {
    if (filters.isEmpty()) {
      return true;
    }
    for (Iterator<String> it = filters.keySet().iterator(); it.hasNext();) {
      String filterProperty = it.next();
      if (matches(filters, person, filterProperty)) {
        return true;
      }
    }
    return false;
  }

  private static boolean matches(Map<String, FilterMeta> filters, Person person, String filterProperty) {
    String filterValue = filters.get(filterProperty).toString();
    if (filterProperty.equals("globalFilter")) {
      if (StringUtils.containsIgnoreCase(person.getName(), filterValue)
              || StringUtils.containsIgnoreCase(person.getFirstname(), filterValue)
              || person.getBirthYear().toString().contains(filterValue)) {
        return true;
      }
      return false;
    }

    String fieldValue = getValue(person, filterProperty);
    return filterValue == null || StringUtils.containsIgnoreCase(fieldValue, filterValue);
  }

  private static String getValue(Person person, String filterProperty) {
    if (filterProperty.equals("name")) {
      return person.getName();
    } else if (filterProperty.equals("firstname")) {
      return person.getFirstname();
    } else if (filterProperty.equals("birthYear")) {
      return person.getBirthYear().toString();
    }
    return null;
  }

  public Person getPerson(String rowKey) {
    for (Person person : allPersons)  {
      if (person.getId().equals(Double.valueOf(rowKey))) {
        return person;
      }
    }
    return null;
  }

  public List<Person> query(Map<String, FilterMeta> filters, Map<String, SortMeta> sortBy, int pageSize, int first) {
    List<Person> persons = filter(filters);
    persons = sort(sortBy, persons);
    persons = paginate(first, pageSize, persons);
    return persons;
  }

  public int count(Map<String, FilterMeta> filters)
  {
    return filter(filters).size();
  }
}
