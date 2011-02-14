<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><%@ page import="java.util.EnumSet"%>
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
<%@ page import="htmlwfui.TaskDetail"%>

<h3>Aufgaben</h3>
<hr>	

<%
  java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 

  List<ITask> tasks =(List<ITask>) ivy.html.getObject("in.tasks");
  int i = 0;
  List<TaskDetail> tasks3 =(List<TaskDetail>) ivy.html.getObject("in.ivy3Tasks");
  
  if ((tasks == null || tasks.size() == 0) && (tasks3 == null || tasks3.size() == 0))
  {
		out.write("<p>Keine Aufgaben gefunden</p>");	    
  }
  else
  {
%>

<table class="resultTable" width="900" frame="below" rules="rows">
	<tr>
		<th class="data">&nbsp;#&nbsp;</th>
		<th class="data" align="left">Prio</th>
		<th class="data" align="left">Stat</th>
		<th  class="data" align="left">Aufgabe</th>
		<th  class="data" align="left">Verantwortlich</th>
		<th  class="data" align="left">Erstellt am:</th>
		<th  class="data" align="left">Bearbeiten bis:</th>	
		<th  class="data" align="center">Aufnehmen</th>				
		<th  class="data" align="center">&nbsp;</th>								
	</tr>	    
<%

 for (int t=0; t<tasks.size(); t++)
{
		// ivy4 tasks
			ITask task = tasks.get(t);
			 int taskId = task.getIdentifier();
			String prefixRIARedirect = ("RIA".equals(task.getCustomVarCharField1())||"RIA".equals(task.getCase().getCustomVarCharField1())) ? "/ivy/wf/start_redirect.jsp?startUrl=" : "" ;
		    String taskStateName = task.getState().toString();
		    int taskStateId = task.getState().intValue();
		    String taskPriorityName = task.getPriority().toString();
		    int taskPriorityId = task.getPriority().intValue();
		    String taskName = task.getName();
		    String taskDescription = task.getDescription() != null ? task.getDescription() : "";
		    ISecurityMember taskActivator = task.getActivator();
		    String taskActivatorName = taskActivator.getMemberName() ;
		    boolean taskActivatorIsUser = task.getActivator() != null && task.getActivator().isUser();
		    String taskStartDate = task.getStartTimestamp() != null ? formatter.format(task.getStartTimestamp()) : "";
		    String taskExpiryDate = task.getExpiryTimestamp() != null ? formatter.format(task.getExpiryTimestamp()) : "";
		    String taskStartUri = task.getFullRequestPath();
%>
	<tr class="<%=i%2 == 0 ? "evenRow" : "oddRow"%>">
		<td class="iconCell">
			<form name="formLinkB" method="POST" style="margin-top: 0px; margin-bottom: 0px; padding-top: 0px;  padding-bottom: 0px;" action="<%=ivy.html.ref("LinkB.ivp")%>">
				<input type="image" STYLE="border: 0;" name="submit" src='<%=ivy.cms.cr("/images/task")%>' title="Details Task[<%=taskId%>]"> 
				<input type="hidden" name="tmpTaskId" value="<%=taskId%>">
				<input type="hidden" name="tmpTask3Id" value="">
			</form>
		</td>
		<td class="iconCell"><img src='<%=ivy.cms.cr("/images/priority/" + taskPriorityId)%>' title='Prio <%=taskPriorityName%>'></td>
		<td class="iconCell"><img src='<%=ivy.cms.cr("/images/state/" + taskStateId)%>' title='Status <%=taskStateName%>'></td>
		<td><a href="<%=prefixRIARedirect%>/ivy/pro/<%=taskStartUri%>?taskId=<%=taskId%>" title="Aufnehmen Task[<%=taskId%>]"><%=taskName%></a></td>
		<td><%=taskActivatorIsUser ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%><%=taskActivatorName%></td>
		<td><%=taskStartDate%></td>
		<td><%=taskExpiryDate%></td>						
		<td align="center">
			<a href="<%=prefixRIARedirect%>/ivy/pro/<%=taskStartUri%>?taskId=<%=taskId%>">
				<img src='<%=ivy.cms.cr("/images/start")%>' title="Aufnehmen Task[<%=taskId%>]"</img></a>
		</td>
		<td width="10%">&nbsp;</td>
	</tr>	        
	        
<%
	i++;
}
%>
<%
	 for (int t3=0; t3<tasks3.size(); t3++)
{	// ivy3 tasks
			TaskDetail task = tasks3.get(t3);
			 String taskId = task.getId();
		    String taskStateId = task.getState();
		    String taskPriorityId = task.getPrio();
		    String taskStateName = ivy.cms.co("/wflabels/state/" + taskStateId);
		    String taskPriorityName = ivy.cms.co("/wflabels/prio/" + taskPriorityId);		
		    String taskName = task.getName();
		    String taskDescription = task.getDesc();
		    String taskActivatorName = task.getActivator();
		    boolean taskActivatorIsUser = "1".equals(task.getActivatorIsUser());
		    String taskStartDate = task.getStart();
		    String taskExpiryDate = task.getExpStr();
		    String taskStartUri = task.getUrl()+"&historyParam=tasklist";
%>
	<tr class="<%=i%2 == 0 ? "evenRow" : "oddRow"%>">
		<td class="iconCell">
			<form name="formLinkB" method="POST" style="margin-top: 0px; margin-bottom: 0px; padding-top: 0px;  padding-bottom: 0px;" action="<%=ivy.html.ref("LinkB.ivp")%>">
				<input type="image" STYLE="border: 0;" name="submit" src='<%=ivy.cms.cr("/images/task")%>' title="Details Task[<%=taskId%>]"> 
				<input type="hidden" name="tmpTaskId" value="">
				<input type="hidden" name="tmpTask3Id" value="<%=taskId%>">
			</form>
		</td>
		<td class="iconCell"><img src='<%=ivy.cms.cr("/images/priority/" + taskPriorityId)%>' title='Prio <%=taskPriorityName%>'></td>
		<td class="iconCell"><img src='<%=ivy.cms.cr("/images/state/" + taskStateId)%>' title='Status <%=taskStateName%>'></td>
		<td><a href="<%=taskStartUri%>" title="Aufnehmen Task[<%=taskId%>]"><%=taskName%></a></td>
		<td><%=taskActivatorIsUser ? ivy.cms.co("/images/user") : ivy.cms.co("/images/role")%><%=taskActivatorName%></td>
		<td><%=taskStartDate%></td>
		<td><%=taskExpiryDate%></td>		
		<td class="iconCell">
			<a href="<%=taskStartUri%>"><img src='<%=ivy.cms.cr("/images/start")%>' title="Aufnehmen Task[<%=taskId%>]"</img></a>
		</td>
	</tr>	        
	        
<%
	i++;
}	out.write("</table>");
  }
%>
</div>
<!--/ivyjsp -->