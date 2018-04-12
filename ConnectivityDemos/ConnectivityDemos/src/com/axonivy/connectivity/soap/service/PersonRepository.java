package com.axonivy.connectivity.soap.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import com.axonivy.connectivity.Person;

/**
 * Helper class to simulate a storage for Web Service Process 
 * <code>Process/soap/service/personService</code>
 * 
 * @since 7.1
 */
public class PersonRepository {

	private static PersonRepository INSTANCE;

	public synchronized static PersonRepository getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new PersonRepository();
		}
		return INSTANCE;
	}

	private final List<Person> persons = new ArrayList<>();

	private PersonRepository() {
		addPerson("Athos");
		addPerson("Porthos");
		addPerson("Aramis");
	}

	public List<Person> findAll() {
		return new ArrayList<>(persons);
	}

	public void addPerson(String name) {
		persons.add(createPerson(name));
	}

	public void delete(String name) {
		Iterator<Person> iterator = persons.iterator();
		while (iterator.hasNext()) {
			Person p = iterator.next();
			if (p.getFirstname().equals(name)) {
				iterator.remove();
			}
		}
	}

	private Person createPerson(String name) {
		Person p = new Person();
		p.setId(UUID.randomUUID());
		p.setFirstname(name);
		return p;
	}
	
}
