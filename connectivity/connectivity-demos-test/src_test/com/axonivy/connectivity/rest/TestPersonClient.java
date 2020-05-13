package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import javax.ws.rs.core.Response;

import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.Person;
import com.axonivy.connectivity.rest.client.PersonClient;

import ch.ivyteam.ivy.environment.IvyTest;

@IvyTest
public class TestPersonClient
{

  @Test
  void personAdd()
  {
    int personSize = PersonClient.getPersons().size();
    Response response = PersonClient.add("James", "Bond");
    assertThat(response.getStatus()).isEqualTo(201);
    assertThat(PersonClient.getPersons()).hasSize(personSize + 1);
  }
  
  @Test
  void personDelete()
  {
    int personSize = PersonClient.getPersons().size();
    Response response = PersonClient.delete(PersonClient.getPersons().get(0).getId());
    assertThat(response.getStatus()).isEqualTo(200);
    assertThat(PersonClient.getPersons()).hasSize(personSize - 1);
  }
  
  @Test
  void personUpdate()
  {
    int personSize = PersonClient.getPersons().size();
    Person person = PersonClient.getPersons().get(0);
    person.setFirstname("Obi-Wan");
    person.setLastname("Kenobi");
    Response response = PersonClient.update(person);
    assertThat(response.getStatus()).isEqualTo(200);
    assertThat(PersonClient.getPersons()).hasSize(personSize);
    Person resultPerson = PersonClient.getPersons().get(0);
    assertThat(resultPerson.getFirstname()).isEqualTo("Obi-Wan");
    assertThat(resultPerson.getLastname()).isEqualTo("Kenobi");
  }
}
