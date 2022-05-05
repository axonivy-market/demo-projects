package ch.ivyteam.htmldialog.demo.component;

import java.util.Comparator;
import java.util.Map;

import org.primefaces.model.SortMeta;
import org.primefaces.model.SortOrder;

import ch.ivyteam.htmldialog.demo.Person;
import ch.ivyteam.ivy.jsf.primefaces.sort.SortMetaConverter;

public class PersonLazySorter implements Comparator<Person>
{
  private final String sortField;
  private final SortOrder sortOrder;

  public PersonLazySorter(Map<String, SortMeta> sortBy) {
    SortMetaConverter sort = new SortMetaConverter(sortBy);
    this.sortField = sort.toField();
    this.sortOrder = sort.toOrder();
  }

  @Override
  public int compare(Person person1, Person person2) {
    try {
      int value = 0;
      if ("id".equals(sortField))
      {
        int id1 = (int) person1.getId();
        int id2 = (int) person2.getId();

        value = id1 - id2;
      }
      else if ("name".equals(sortField))
      {
        String name1 = person1.getName();
        String name2 = person2.getName();

        value = name1.compareTo(name2);
      }
      else if ("firstname".equals(sortField))
      {
        String firstname1 = person1.getFirstname();
        String firstname2 = person2.getFirstname();

        value = firstname1.compareTo(firstname2);
      }
      else if ("birthYear".equals(sortField))
      {
        int year1 = (int) person1.getBirthYear();
        int year2 = (int) person2.getBirthYear();

        value = year1 - year2;
      }
      return SortOrder.ASCENDING.equals(sortOrder) ? value : -1 * value;
    }
    catch (Exception e)  {
      throw new RuntimeException(e);
    }
  }

}
