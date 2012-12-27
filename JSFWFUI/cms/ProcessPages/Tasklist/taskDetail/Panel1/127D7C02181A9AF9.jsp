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

<div id="ContentArea">
<%
	java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	IProcessModelVersionRequest Ivyrequest = (IProcessModelVersionRequest) ivy.html.getObject("request");
	ISecurityDescriptor securityDescriptor = Ivyrequest.getApplication().getSecurityDescriptor();

	String taskId ="";
	//String prefixRIARedirect = "";
	String taskName="";
	String taskBeschreibung="";
	String taskStateId="";
	String taskStateDescription="";
	String taskPriorityName="";
	String taskPriorityId="";
	String taskActivatorName="";
	boolean taskActivatorIsUser=false;
	String taskCase="";
	String taskStartDate="";
	String taskStartUri="";
	String taskExpDate="";
	String taskDelayDate="";		
	boolean canDelegate=false;
	boolean canPark = false;
	ITask task=null; 

	if(ivy.html.getObject("in.tmpTask") !=null)
	{ 
		// selected xivy4 task
		task = (ITask) ivy.html.getObject("in.tmpTask");
		//prefixRIARedirect = ("RIA".equals(task.getCustomVarCharField1()) ||"RIA".equals(task.getCase().getCustomVarCharField1())) ? "/ivy/wf/start_redirect.jsp?startUrl=" : "" ;
		taskId = ""+task.getIdentifier();
		taskName = task.getName();
	 	taskBeschreibung = task.getDescription();
		taskStateId = ""+task.getState().intValue();
		taskStateDescription = task.getState().toString();
		taskPriorityName = task.getPriority().toString();
		taskPriorityId = ""+task.getPriority().intValue();
		ISecurityMember taskActivator = task.getActivator();
	 	taskActivatorName = taskActivator.getMemberName() ;
		taskActivatorIsUser = task.getActivator() != null && task.getActivator().isUser();
		taskCase = task.getCase().getName() +" - CaseId["+task.getCase().getIdentifier()+"]";
		taskStartDate = task.getStartTimestamp() != null ? formatter.format(task.getStartTimestamp()) : "";
		//taskStartUri = "/ivy/wf/start_redirect.jsp?startUrl=/ivy/pro/"+task.getFullRequestPath()+"?taskId="+taskId;
		taskStartUri = ivy.html.ref("LinkE.ivp")+"&temp$url=/ivy/pro/"+task.getFullRequestPath()+"?taskId="+taskId;
		taskExpDate = task.getExpiryTimestamp() != null ? formatter.format(task.getExpiryTimestamp()) : "";
		taskDelayDate = task.getDelayTimestamp() != null ? formatter.format(task.getDelayTimestamp()) : "";
		IWorkflowSession ivySession = (IWorkflowSession)ivy.html.getObject("in.wfSession");	
		canDelegate = ivySession.hasPermission(securityDescriptor, IPermission.DELEGATE_TASKS);
		if (task.getState().intValue()==5 && ivySession.hasPermission(securityDescriptor, IPermission.TASK_PARK_OWN_WORKING_TASK)) 
	     { canPark=true; }
		
	}
	else if(ivy.html.getObject("in.tmpTaskDetail") !=null)
	{
		// selected xivy3 task
		htmlwfui.TaskDetail task3 = (htmlwfui.TaskDetail)ivy.html.getObject("in.tmpTaskDetail");
		taskId =""+task3.getId();
		taskName = task3.getName();
	 	taskBeschreibung = task3.getDesc();
		taskStateId = ""+task3.getState();
		taskStateDescription =task3.getStateName();
		taskPriorityId = ""+task3.getPrio();
		taskPriorityName =  task3.getPrioName();
	 	taskActivatorName = task3.getActivator() ;
		taskActivatorIsUser =task3.getActivatorIsUser();
		//taskStartDate = task3.getStart() != null ? formatter.format(task3.getStart()) : "";
		taskStartDate = task3.getStart() != null ? ""+task3.getStart() :"";
		taskExpDate=task3.getExp()!=null ? ""+task3.getExp() :"";
		taskDelayDate=task3.getExp()!=null ?""+task3.getDelay() :"";		
		taskStartUri = task3.getUrl();
   		canDelegate = false;
           canPark = false;
	}	
	%>

<br />
<table class=detailTable width="900">
	<tr style="height:25px" >
		<td class="labelTd"><a href="<%=taskStartUri%>" title="<%=ivy.cms.co("/tooltips/resumeTask")%>"><%=ivy.cms.co("/images/start")%> <%=ivy.cms.co("/labels/taskResume")%></a></td>
		<%
			if(task!=null)
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkC.ivp")+ " style='width:100%;' title='"+ivy.cms.co("/tooltips/addNote")+"'>" + ivy.cms.co("/images/note") + ivy.cms.co("/labels/addNote")+ "</a></td>");
			}
			else
			{
				out.write("<td class='labelTd'><a  DISABLED href='#'  title='"+ivy.cms.co("/tooltips/addNote")+"'>"+ivy.cms.co("/images/note") +  ivy.cms.co("/labels/addNote") +"</a></td>");	
			}				
			if(canDelegate)
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkB.ivp") + "  title='"+ivy.cms.co("/tooltips/delegateTask")+"'>" + ivy.cms.co("/images/delegate") +  ivy.cms.co("/labels/taskDelegate")+"</a></td>");
			}	
			else
			{
				out.write("<td class='labelTd'><a  DISABLED href='#'  title='"+ivy.cms.co("/tooltips/delegateTask")+"'>"+ivy.cms.co("/images/delegate")+ ivy.cms.co("/labels/taskDelegate")+"</a></td>");	
			}
			if(canPark) 
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkD.ivp") + " title='"+ivy.cms.co("/tooltips/parkTask")+"'>" + ivy.cms.co("/images/park") +  ivy.cms.co("/labels/taskPark")+"</a></td>");	
			}
			else
			{
				out.write("<td class='labelTd'><a  DISABLED href='#' title='"+ivy.cms.co("/tooltips/parkTask")+"'>"+ivy.cms.co("/images/park")+ ivy.cms.co("/labels/taskPark")+"</a></td>");	
			}			
		%>
		<td class="labelTd"></td>
		<td class="labelTd"></td>
	</tr>
</table>

<table class="detailTable" width="100%">
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/taskId")%></td>
		<td><%=taskId%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/name")%></td>
		<td><%=taskName%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/description")%></td>
		<td><%=taskBeschreibung%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/state")%></td>
		<td><%=ivy.cms.co("/images/state/" + taskStateId)%> <%=taskStateDescription%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/priority")%></td>
		<td><%=ivy.cms.co("/images/priority/" + taskPriorityId)%> <%=" " + taskPriorityName%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/responsible")%></td>
		<td><%=taskActivatorIsUser ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%> <%=taskActivatorName%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/case")%></td>
		<td><%=taskCase%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/created")%></td>
		<td><%=taskStartDate%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/expiry")%></td>
		<td><%=taskExpDate%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/delay")%></td>
		<td><%=taskDelayDate%></td>
	</tr>				
</table>
<br />
<%
	if(task!=null && task.getCase().hasNotes()){
		List <INote> notes = task.getCase().getNotes();	
		out.write("<h3>"+ivy.cms.co("/labels/caseNotes")+"</h3>");
		for(INote note : notes) {
				out.write("<b>" + formatter.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(ivy.html.escape(note.getMessage()) + "<br />");
		}
		out.write("<br />");
	}
	if(task!=null && task.hasNotes()){
		List<INote> notes = task.getNotes();
		out.write("<h3>"+ivy.cms.co("/labels/taskNotes")+"</h3>");
		for(INote note : notes) {
				out.write("<b>" + formatter.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(ivy.html.escape(note.getMessage()) + "<br />");
		}
	}
%>
<br />
</div><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkA")%>