package com.axonivy.connectivity.soap.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/**
 * Helper class to simulate a storage for Web Service Process Process/soap/service/personService
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
			if (p.getName().equals(name)) {
				iterator.remove();
			}
		}
	}

	private Person createPerson(String name) {
		Person p = new Person();
		p.setId(createId());
		p.setName(name);
		return p;
	}
	
	private Long createId() {
		Long maxId = persons.stream()
				.map(p -> p.getId())
				.max(Comparator.naturalOrder())
				.orElse(0L);
		return maxId + 1;
	}
}