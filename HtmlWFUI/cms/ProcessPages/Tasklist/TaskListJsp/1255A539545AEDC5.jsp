<% response.setHeader("Expires", "0");%>
<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="request"/>
<%ivy.setRequest(request);%>
<%@ page import="java.util.EnumSet"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Taskliste 4.0</title>
	<link rel="stylesheet" type="text/css" href="<%=ivy.cms.cr("/Parts/wfstyle")%>" />
</head>
<body>

<div id="Header"> 
	<div id="TopLogo">
		<a href="http://www.ivyteam.com"><img src="<%=ivy.cms.cr("/images/logo")%>"></a>
	</div>
	<div id="NavigationBar">
		<ul class="TopNavigation">
			<li><a style="text-decoration:underline;" href="/ivy/pro/<%=ivy.html.getObject("in.appname")%>/HtmlWFUI/125016DE17A534EB/start2.ivp" target="_top">Prozesse</a></li>
		</ul>
	</div>
</div>

<div id="Caption">
			<h2>Pers&ouml;nliche Aufgabenliste</h2>
</div>

<div id="ContentArea">
	<div id="LeftNavigation">
		<ul class="LeftNavigationNodes">
			<li><a href="#">Eigene Aufgaben</a></li>
			<li><a href="#">Gruppen Aufgaben</a></li>
		</ul>	
	</div>

	<div id="Panel">
	<div id="Content">
<%	
	java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 

	  List<ITask> tasks =(List<ITask>) ivy.html.getObject("in.tasks");
	  int i = 0;
	  
	  if (tasks == null || tasks.size() == 0)
	  {
			out.write("<p>Keine anstehenden Aufgaben </p>");	    
	  }
	  else
	  {
%>
	<table class="resultTable" width="100%">
	<tr>
		<th class="iconCell">&nbsp;</th>
		<th class="iconCell">&nbsp;</th>
		<th class="iconCell">&nbsp;</th>
		<th class="iconCell">&nbsp;</th>
		<th width="50%">Name</th>
		<th width="15%">Activator</th>
		<th width="15%">Startdatum</th>
		<th width="15%">Auslaufdatum</th>								
	</tr>	    
<%
 	for (int t=0; t<tasks.size(); t++)
		  {
			ITask task = tasks.get(t);
			 int taskId = task.getIdentifier();
		    String taskStateName = task.getState().toString();
		    int taskStateId = task.getState().intValue();
		    String taskPriorityName = task.getPriority().toString();
		    int taskPriorityId = task.getPriority().intValue();
		    String taskName = task.getName();
		    String taskDescription = task.getDescription() != null ? task.getDescription() : "";
				ISecurityMember taskActivator = task.getActivator();
		    String taskActivatorName = ISecurityConstants.TOP_LEVEL_ROLE_NAME;
		    if (taskActivator != null)
		    {
		    	if (taskActivator.isUser())
		    	{
		    		taskActivatorName = ((IUser)taskActivator).getName();
		    	}
		    	else
		    	{
		    		taskActivatorName = ((IRole)taskActivator).getName();
		    	}
		    } 
		    boolean taskActivatorIsUser = task.getActivator() != null && task.getActivator().isUser();
		    String taskStartDate = task.getStartTimestamp() != null ? formatter.format(task.getStartTimestamp()) : "";
		    String taskExpiryDate = task.getExpiryTimestamp() != null ? formatter.format(task.getExpiryTimestamp()) : "";
		    String taskStartUri = task.getFullRequestPath();
%>
	<tr class="<%=i%2 == 0 ? "oddRow" : "evenRow"%>">
		<td class="iconCell">
		<a href="<%=ivy.html.ref("LinkB.ivp")%>&tmpTaskId=<%=taskId%>"><%=ivy.cms.co("/images/task")%></a>
		</td>
		<td class="iconCell">
		<a href="/ivy/pro/<%=taskStartUri%>?taskId=<%=taskId%>"><%=ivy.cms.co("/images/start")%></a>
		</td>					
		<td class="iconCell"><%=ivy.cms.co("/images/state/" + taskStateId)%></td>
		<td class="iconCell"><%=ivy.cms.co("/images/state/" + taskPriorityId)%></td>
		<td><%=taskName%></td>
		<td><%=taskActivatorIsUser ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%></td>
		<td><%=taskStartDate%></td>
		<td><%=taskExpiryDate%></td>		
	</tr>	        
	        
<%
			i++;
	  }
	out.write("</table>");
  }
%>
	</div>
</div>

<div id="Footer">
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.DateFormat"%>
	<%@ page import="java.util.Locale"%>
	<%@ page import="ch.ivyteam.ivy.Advisor"%>
<%
	DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.SHORT, Locale.GERMAN);
	Date date = new Date();
	String dateTime = dateFormat.format(date);
%>
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	  <tr> 
	    <td class="footer" valign="top" align="left">Powered by 
	        <%=ch.ivyteam.ivy.Advisor.getAdvisor().getApplicationName()%> <%=ch.ivyteam.ivy.Advisor.getAdvisor().getVersion()%> Copyright &copy; 2001 - <%=date.getYear() + 1900%> <a href="http://www.ivyteam.com">Soreco AG - ivyTeam</a>
	    </td>
	    <td class="footer" valign="top" align="right"><%=dateTime%></td>
	  </tr>
	</table>
</div>

</body>
</html>