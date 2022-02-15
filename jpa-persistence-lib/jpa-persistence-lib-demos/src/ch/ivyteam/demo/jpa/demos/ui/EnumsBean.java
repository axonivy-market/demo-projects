package ch.ivyteam.demo.jpa.demos.ui;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.demo.jpa.demos.enums.MaritalStatus;

@ManagedBean(name = "enums")
@ApplicationScoped
public class EnumsBean {

	public MaritalStatus[] getMaritalStatus() {
		return MaritalStatus.values();
	}
}
