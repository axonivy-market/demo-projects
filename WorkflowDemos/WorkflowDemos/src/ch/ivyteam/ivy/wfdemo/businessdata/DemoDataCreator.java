package ch.ivyteam.ivy.wfdemo.businessdata;

import java.util.List;

import workflow.business.data.Address;
import workflow.business.data.Dossier;
import workflow.business.data.Person;
import ch.ivyteam.ivy.business.data.store.BusinessData;
import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;

public class DemoDataCreator {
	
	public static void createDemoDataIfNotExist() {
		BusinessDataRepository repo = BusinessDataRepository.get();
		List<BusinessData<Dossier>> all = repo.findAll(Dossier.class);
		
		if (all.isEmpty()) {
			createDemoDossier("HEISENBERG", "Werner", "Heisenberg", "97070", "Würzburg", "Germany");
			createDemoDossier("PAULI", "Wolfgang", "Pauli", "1010", "Wien", "Austria");
			createDemoDossier("NOETHER", "Emmy", "Noether", "91052", "Erlangen", "Germany");
			createDemoDossier("TURING", "Alan", "Turing", "10000", "London", "England");
			createDemoDossier("RAMANUJAN", "Srinivasa", "Ramanujan", "30000", "Erode", "India");
			createDemoDossier("LOVELACE", "Ada", "Lovelace", "20000", "London", "England");
			createDemoDossier("POINCARE", "Henri", "Poincaré", "54000", "Nancy", "France");
			createDemoDossier("EULER", "Leonhard", "Euler", "4000", "Basel", "Switzerland");
			createDemoDossier("VOLTA", "Alessandro", "Volta", "22100", "Como", "Italy");
			createDemoDossier("NEUMANN", "John", "von Neumann", "1011", "Budapest", "Hungary");
		}
	}
	
	private static void createDemoDossier(String dossierName, String firstName, String lastName, String zip, String city, String country) {
		Dossier dossier = new Dossier();
		dossier.setName(dossierName);
		
		Person person = new Person();
		person.setFirstName(firstName);
		person.setLastName(lastName);
		
		Address address = new Address();
		address.setZip(zip);
		address.setCity(city);
		address.setCountry(country);
		
		person.setAddress(address);
		dossier.setPerson(person);
		
		BusinessDataRepository repo = BusinessDataRepository.get();
		repo.create(dossier).save();
	}
}
