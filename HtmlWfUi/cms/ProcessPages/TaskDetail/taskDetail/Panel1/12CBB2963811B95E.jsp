<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><%@ page import="java.util.EnumSet"%>
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
<%@ page import="ch.ivyteam.ivy.security.ISecurityDescriptor"%>
<%@ page import="ch.ivyteam.ivy.security.ISecurityMember"%>
<%@ page import="ch.ivyteam.ivy.security.IPermission"%>
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

<div id="ContentArea">
<%
	java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	ITask task = (ITask) ivy.html.getObject("in.tmpTask");
	TaskState state =null; 

	IWorkflowSession ivySession = (IWorkflowSession)ivy.html.getObject("in.wfSession");	
	boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
	boolean hasResetPermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_RESET);
	boolean hasDelegatePermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.DELEGATE_TASKS);
	boolean hasTaskWriteExpiryPermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_EXPIRY_ACTIVATOR);

	if(task  !=null)
	{ 
		state = task.getState();
%>
	<br />
	<table class=detailTable width="900">
	<tr style="height:25px" >
		<% 
		if(state==TaskState.RESUMED && hasResetPermission) 
		{ %>
			<td class="labelTd"><a href="<%=ivy.html.ref("LinkE.ivp")%>"  title="<%=ivy.cms.co("/tooltips/resetTask")%>"><%=ivy.cms.co("/images/reset")%> <%=ivy.cms.co("/labels/taskReset")%></a></td>
		<% } else { %> 
				<td class="labelTd"><a DISABLED  href="#" title="<%=ivy.cms.co("/tooltips/resetTask")%>"><%=ivy.cms.co("/images/reset")%> <%=ivy.cms.co("/labels/taskReset")%></a></td>
		<% } 
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasDelegatePermission)	
		{ %>
				<td class="labelTd"><a  DISABLED href="#" title="<%=ivy.cms.co("/tooltips/delegateTask")%>"><%=ivy.cms.co("/images/delegate")%> <%=ivy.cms.co("/labels/taskDelegate")%></a></td>
		<% } else { %>
			 	<td class="labelTd"><a  href="<%=ivy.html.ref("LinkB.ivp")%>" title="<%=ivy.cms.co("/tooltips/delegateTask")%>"><%=ivy.cms.co("/images/delegate")%> <%=ivy.cms.co("/labels/taskDelegate")%></a></td>
		<% }
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasTaskWriteExpiryPermission) 		
		{ %>
				<td class="labelTd"><a  DISABLED href="#" title="<%=ivy.cms.co("/tooltips/changeExpiry")%>"><%=ivy.cms.co("/images/expiry")%> <%=ivy.cms.co("/labels/changeExpiry")%></a></td>
		<% } else { %>
				<td class="labelTd"><a  href="<%=ivy.html.ref("LinkD.ivp")%>" title="<%=ivy.cms.co("/tooltips/changeExpiry")%>"><%=ivy.cms.co("/images/expiry")%> <%=ivy.cms.co("/labels/changeExpiry")%></a></td>
		<% }
      	if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED) 		
		{ %>
				<td class="labelTd"><a  DISABLED  href="#" title="<%=ivy.cms.co("/tooltips/addNote")%>"><%=ivy.cms.co("/images/note")%> <%=ivy.cms.co("/labels/addNote")%></a></td>
		<% } else { %>
				<td class="labelTd"><a  href="<%=ivy.html.ref("LinkC.ivp")%>" title="<%=ivy.cms.co("/tooltips/addNote")%>"><%=ivy.cms.co("/images/note")%> <%=ivy.cms.co("/labels/addNote")%></a></td>
		<% }						
		if(hasPageArchivePermission)
		{ %>
			    <td class="labelTd"><a  href="<%=ivy.html.ref("LinkF.ivp")%>" title="<%=ivy.cms.co("/tooltips/showFormArchive")%>"><%=ivy.cms.co("/images/formHistory")%> <%=ivy.cms.co("/labels/formArchive")%></a></td>
		<% } else { %>
			    <td class="labelTd"><a DISABLED  href="" title="<%=ivy.cms.co("/tooltips/showFormArchive")%>"><%=ivy.cms.co("/images/formHistory")%> <%=ivy.cms.co("/labels/formArchive")%></a></td>
		<% } %>
	</tr>
	</table>

	<table class="detailTable" width="100%">
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/taskId")%></td>
		<td><%=task.getId()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/name")%></td>
		<td><%=task.getName()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/description")%></td>
		<td><%=task.getDescription()%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/state")%></td>
		<td><%=ivy.cms.co("/images/state/"+task.getState().intValue())%> <%=task.getState()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/priority")%></td>
		<td><%=ivy.cms.co("/images/priority/"+task.getPriority().intValue())%> <%=task.getPriority()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/user")%></td>
		<% if(task.getWorkerUser()!=null) {%>
		<td><%= ivy.cms.co("/images/user")%> <%=task.getWorkerUserName()%></td>
	     <%}%>
	</tr>		
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/responsible")%></td>
		<% if(task.getOriginalActivator()!=null) {%>
		<td><%=task.getOriginalActivator().isUser() ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%> <%=task.getOriginalActivatorName() %></td>
	     <%}%>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/responsibleEx")%></td>
		<% if(task.getExpiryActivator()!=null) {%>
		<td><%=task.getExpiryActivator().isUser() ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%> <%=task.getExpiryActivatorName()%></td>
	     <%}%>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/case")%></td>
		<td title="CaseId [<%=task.getCase().getId()%>]"><%=task.getCase().getName()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/created")%></td>
		<td><%= task.getStartTimestamp() != null ? formatter.format(task.getStartTimestamp()) : ""%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/expiry")%></td>
		<td><%= task.getExpiryTimestamp() != null ? formatter.format(task.getExpiryTimestamp()) : ""%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/delay")%></td>
		<td><%= task.getDelayTimestamp() != null ? formatter.format(task.getDelayTimestamp()) : ""%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/done")%></td>
		<td><%= task.getEndTimestamp() != null ? formatter.format(task.getEndTimestamp()) : ""%></td>
	</tr>				
	</table>
	<br />
	
<%
	}
	if(task!=null && task.hasNotes()){
		List<INote> notes = task.getNotes();
		out.write("<h3>"+ivy.cms.co("/labels/taskNotes")+"</h3>");
		for(INote note : notes) {
				out.write("<b>" + formatter.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(note.getMessage() + "<br />");
		}
	}
%>
<br />
</div><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkA")%>