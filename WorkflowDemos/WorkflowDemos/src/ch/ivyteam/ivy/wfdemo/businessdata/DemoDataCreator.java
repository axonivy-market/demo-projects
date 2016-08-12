package ch.ivyteam.ivy.wfdemo.businessdata;

import java.util.List;

import workflow.businessdata.Address;
import workflow.businessdata.Dossier;
import workflow.businessdata.Person;
import ch.ivyteam.ivy.business.data.store.BusinessData;
import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;
import ch.ivyteam.ivy.scripting.objects.Date;

public class DemoDataCreator {
	
	public static void createDemoDataIfNotExist() {
		BusinessDataRepository repo = BusinessDataRepository.get();
		List<BusinessData<Dossier>> all = repo.findAll(Dossier.class);
		
		if (all.isEmpty()) {
			createDemoDossier("HEISENBERG", "Werner", "Heisenberg", new Date(1901, 12, 5), "97070", "Würzburg", "Germany");
			createDemoDossier("PAULI", "Wolfgang", "Pauli", new Date(1900, 04, 25), "1010", "Wien", "Austria");
			createDemoDossier("NOETHER", "Emmy", "Noether", new Date(1882, 03, 23), "91052", "Erlangen", "Germany");
			createDemoDossier("TURING", "Alan", "Turing", new Date(1912, 06, 23), "10000", "London", "England");
			createDemoDossier("RAMANUJAN", "Srinivasa", "Ramanujan", new Date(1887, 12, 22), "30000", "Erode", "India");
			createDemoDossier("LOVELACE", "Ada", "Lovelace", new Date(1815, 12, 10), "20000", "London", "England");
			createDemoDossier("POINCARE", "Henri", "Poincaré", new Date(1854, 04, 29), "54000", "Nancy", "France");
			createDemoDossier("EULER", "Leonhard", "Euler", new Date(1707, 04, 15), "4000", "Basel", "Switzerland");
			createDemoDossier("VOLTA", "Alessandro", "Volta", new Date(1745, 02, 18), "22100", "Como", "Italy");
			createDemoDossier("NEUMANN", "John", "von Neumann", new Date(1903, 12, 28), "1011", "Budapest", "Hungary");
		}
	}
	
	private static void createDemoDossier(String dossierName, String firstName, String lastName, Date birthdate, String zip, String city, String country) {
		Dossier dossier = new Dossier();
		dossier.setName(dossierName);
		
		Person person = new Person();
		person.setFirstName(firstName);
		person.setLastName(lastName);
		person.setBirthDate(birthdate);
		
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
