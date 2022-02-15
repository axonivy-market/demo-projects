package ch.ivyteam.demo.jpa.demos.test.mock;

public class Mocked {
	public static SimplePersistenceContext persistenceContext;
	public static SimpleSecurityContext securityContext;
	public static SimpleWorkflowSession workflowSession;
	public static SimpleGlobalVariableContext globalVariableContext;
	public static SimpleContentManagementSystem contentManagementSystem;
	public static SimpleFacesContext facesContext;

	public static void initialize() {
		persistenceContext = new SimplePersistenceContext();
		securityContext = new SimpleSecurityContext();
		workflowSession = new SimpleWorkflowSession();
		globalVariableContext = new SimpleGlobalVariableContext();
		contentManagementSystem = new SimpleContentManagementSystem();
		facesContext = new SimpleFacesContext();
	}
}
