<% response.setHeader("Expires", "0");%>
<%@ page import="java.util.EnumSet"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="ch.ivyteam.text.html.HtmlSnippets"%>
<%@ page import="ch.ivyteam.ivy.application.IProcessModelVersion"%>
<%@ page import="ch.ivyteam.ivy.application.IApplicationConfigurationManager"%>
<%@ page import="ch.ivyteam.ivy.persistence.IQueryResult"%>
<%@ page import="ch.ivyteam.ivy.persistence.PersistencyException"%>
<%@ page import="ch.ivyteam.ivy.process.engine.IProcessEngine"%>
<%@ page import="ch.ivyteam.ivy.process.engine.PetriNetEngineState"%>
<%@ page import="ch.ivyteam.ivy.project.IIvyProject"%>
<%@ page import="ch.ivyteam.ivy.request.RequestUriFactory"%>
<%@ page import="ch.ivyteam.ivy.security.*"%>
<%@ page import="ch.ivyteam.ivy.webserver.IServerLimited"%>
<%@ page import="ch.ivyteam.ivy.workflow.IIntermediateEventElement"%>
<%@ page import="ch.ivyteam.ivy.workflow.IIntermediateEvent"%>
<%@ page import="ch.ivyteam.ivy.workflow.ITask"%>
<%@ page import="ch.ivyteam.ivy.workflow.IWorkflowSession"%>
<%@ page import="ch.ivyteam.ivy.workflow.IWorkflowProcessModelVersion"%>
<%@ page import="ch.ivyteam.ivy.workflow.IntermediateEventProperty"%>
<%@ page import="ch.ivyteam.ivy.workflow.IntermediateEventState"%>
<%@ page import="ch.ivyteam.ivy.workflow.IPropertyFilter"%>
<%@ page import="ch.ivyteam.ivy.workflow.PropertyOrder"%>
<%@ page import="ch.ivyteam.ivy.workflow.TaskState"%>
<%@ page import="ch.ivyteam.ivy.workflow.TaskProperty"%>
<%@ page import="ch.ivyteam.ivy.workflow.WorkflowNavigationUtil"%>
<%@ page import="ch.ivyteam.logicalexpression.RelationalOperator"%>
<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<%@ page import="ch.ivyteam.log.Logger"%>
<%@ page import="ch.ivyteam.ivy.request.IProcessModelVersionRequest"%>
<%@ page import="ch.ivyteam.ivy.workflow.INote"%>

<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="request"/>
<%ivy.setRequest(request);%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Taskdetails 4.0</title>
	<link rel="stylesheet" type="text/css" href="<%=ivy.cms.cr("/ProcessPages/Tasklist/Layout/wfstyle")%>" />
</head>
<body>

<div id="TopLogo">
	<a href="http://www.ivyteam.com"><img src="<%=ivy.cms.cr("/images/logo")%>"></a>
</div>

<div id="NavigationBar">
	<ul class="TopNavigation">
		<li><a style="text-decoration:underline;" href="/ivy/pro/designer/HtmlWFUI/125016DE17A534EB/start1.ivp" target="_top">Aufgabenliste</a></li>
	</ul>
</div>

<div id="Caption">
	<h2>Taskdetails</h2>
</div>
<div id="ContentArea">

<%
	IProcessModelVersionRequest Ivyrequest = (IProcessModelVersionRequest) ivy.html.getObject("request");
	ISecurityDescriptor securityDescriptor = Ivyrequest.getApplication().getSecurityDescriptor();
	IWorkflowSession ivySession = (IWorkflowSession)ivy.html.getObject("in.wfSession");	
	ITask task = (ITask) ivy.html.getObject("in.tmpTask");
	int taskId = task.getIdentifier();
	String taskName = task.getName();
	String taskBeschreibung = task.getDescription();
	int taskStateId = task.getState().intValue();
	String taskStateDescription = task.getState().toString();
	String taskPriorityName = task.getPriority().toString();
	int taskPriorityId = task.getPriority().intValue();
	ISecurityMember taskActivator = task.getActivator();
	String taskActivatorName = taskActivator.getMemberName() ;
	boolean taskActivatorIsUser = task.getActivator() != null && task.getActivator().isUser();
	String taskCase = task.getCase().getName();
	Calendar taskStartDate = Calendar.getInstance();
	taskStartDate.setTime(task.getStartTimestamp());
	taskStartDate.set(Calendar.MONTH, taskStartDate.get(Calendar.MONTH) + 1); 
	String taskStart = taskStartDate.get(Calendar.DAY_OF_MONTH ) + "." + 
		taskStartDate.get(Calendar.MONTH) + "." + taskStartDate.get(Calendar.YEAR) +
			" " + taskStartDate.get(Calendar.HOUR_OF_DAY ) + ":" + taskStartDate.get(Calendar.MINUTE) +
				":" + taskStartDate.get(Calendar.SECOND);
	String taskStartUri = task.getFullRequestPath();
	boolean canDelegate = ivySession.hasPermission(securityDescriptor, IPermission.DELEGATE_TASKS);
	boolean canPark = ivySession.hasPermission(securityDescriptor, IPermission.PARK_TASKS);
%>

<br />
<table class=detailTable width="100%">
	<tr>
		<td class="labelTd"><a href="/ivy/pro/<%=taskStartUri%>?taskId=<%=taskId%>"><%=ivy.cms.co("/images/start")%> Aufnehmen</a></td>
		<%
			if(canPark)
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkB.ivp") + ">"+ivy.cms.co("/images/park")+"Parken</a></td>");
			}
		%>
		<%
			if(canDelegate)
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkB.ivp") + ">"+ivy.cms.co("/images/delegate")+"Delegieren</a></td>");
			}
		%>
		<td class="labelTd"><a href="<%=ivy.html.ref("LinkC.ivp")%>"><%=ivy.cms.co("/images/notes")%>Bemerkung&nbsp;einf&uuml;gen</a></td>
	</tr>
</table>

<table class="detailTable" width="100%">
	<tr>
		<td class="labelTd">Name</td>
		<td><%=taskName%></td>
	</tr>	
	<tr>
		<td class="labelTd">Beschreibung</td>
		<td><%=taskBeschreibung%></td>
	</tr>
	<tr>
		<td class="labelTd">Status</td>
		<td><%=ivy.cms.co("/images/state/" + taskStateId)%> <%=taskStateDescription%></td>
	</tr>	
	<tr>
		<td class="labelTd">Priorit&auml;t</td>
		<td><%=ivy.cms.co("/images/priority/" + taskPriorityId)%> <%=" " + taskPriorityName%></td>
	</tr>	
	<tr>
		<td class="labelTd">Verantwortlich</td>
		<td><%=taskActivatorIsUser ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%><%=taskActivatorName%></td>
	</tr>	
	<tr>
		<td class="labelTd">Fall</td>
		<td><%=taskCase%></td>
	</tr>	
	<tr>
		<td class="labelTd">Erstellt</td>
		<td><%=taskStart%></td>
	</tr>	
</table>
<br />
<%
	java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	if(task.getCase().hasNotes()){
		List <INote> notes = task.getCase().getNotes();	
		out.write("<h3>Fall Bemerkungen</h3>");
		for(INote note : notes) {
				out.write("<b>" + formatter.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(note.getMessage() + "<br />");
		}
		out.write("<br />");
	}
	if(task.hasNotes()){
		List<INote> notes = task.getNotes();
		out.write("<h3>Aufgaben Bemerkungen</h3>");
		for(INote note : notes) {
				out.write("<b>" + formatter.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(note.getMessage() + "<br />");
		}
	}
%>
<br />
<a href="<%=ivy.html.ref("LinkA.ivp")%>">Zur&uuml;ck zur Aufgabenliste</a>
</div>

</body>
</html>