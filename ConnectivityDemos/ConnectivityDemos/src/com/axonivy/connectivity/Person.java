package com.axonivy.connectivity;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name = "person")
public class Person
{
  private transient java.lang.Integer id;
  private transient java.lang.String firstname;
  private transient java.lang.String lastname;

  @XmlElement
  public java.lang.Integer getId()
  {
    return id;
  }

  public void setId(java.lang.Integer _id)
  {
    id = _id;
  }
  
  @XmlElement
  public java.lang.String getFirstname()
  {
    return firstname;
  }
  public void setFirstname(java.lang.String _firstname)
  {
    firstname = _firstname;
  }

  @XmlElement
  public java.lang.String getLastname()
  {
    return lastname;
  }

  public void setLastname(java.lang.String _lastname)
  {
    lastname = _lastname;
  }

}
