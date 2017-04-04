package ch.ivyteam.htmldialog.demo.component;

import java.util.Comparator;

import org.primefaces.model.SortOrder;

import ch.ivyteam.htmldialog.demo.Person;

public class PersonLazySorter implements Comparator<Person> {

    private String sortField;
    
    private SortOrder sortOrder;
     
    public PersonLazySorter(String sortField, SortOrder sortOrder) {
        this.sortField = sortField;
        this.sortOrder = sortOrder;
    }
 
    public int compare(Person person1, Person person2) {
        try {
        	int value = 0;
        	if(sortField.equals("id"))
        	{
                int id1 = (int) person1.getId();
                int id2 = (int) person2.getId();
     
    			value = id1 - id2;
        	}
        	else if(sortField.equals("name"))
        	{
        		String name1 = person1.getName();
        		String name2 = person2.getName();
        		
        		value = name1.compareTo(name2);
        	}
        	else if(sortField.equals("firstname"))
        	{
        		String firstname1 = person1.getFirstname();
        		String firstname2 = person2.getFirstname();
        		
        		value = firstname1.compareTo(firstname2);
        	}
        	else if(sortField.equals("birthYear"))
        	{
                int year1 = (int) person1.getBirthYear();
                int year2 = (int) person2.getBirthYear();
     
    			value = year1 - year2;
        	}
            return SortOrder.ASCENDING.equals(sortOrder) ? value : -1 * value;
        }
        catch(Exception e) {
            throw new RuntimeException();
        }
    }

}
