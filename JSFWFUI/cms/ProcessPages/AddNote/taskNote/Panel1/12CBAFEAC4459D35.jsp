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


<div id="ContentArea">
<%
%>
<form action="<%=ivy.html.ref("LinkA.ivp")%>" method="post">
	<table>
		<tr>
			<td class="labelTd" WIDTH="80%"><%=ivy.cms.co("/labels/addNote")%></td>
			<% if(ivy.html.get("in.noteFor").equals("task")) {%>
				<td><input type="radio" CHECKED style="border:0;" name="noteFor" value="task"><%=ivy.cms.co("/labels/task")%></input></td>
				<td><input type="radio"  style="border:0;" name="noteFor" value="case"><%=ivy.cms.co("/labels/case")%></input></td>
			<% } else {%>
				<td><input type="radio" CHECKED style="border:0;" name="noteFor" value="case"><%=ivy.cms.co("/labels/case")%></input></td>
				<td><input type="radio" DISABLED style="border:0;" name="noteFor" value="task"><%=ivy.cms.co("/labels/task")%></input></td>
			<% } %>
			<tr>
		</tr>
		<tr>
			<td class="labelTd"><%=ivy.cms.co("/labels/text")%></td>
			<td COLSPAN="3"><textarea rows="10" cols="50" name="note"></textarea></input></td>
		</tr>
		<tr>
			<td>
			<td COLSPAN="2"><input type="submit" class="button" value="<%=ivy.cms.co("/labels/saveButton")%>"></td>
		</tr>
	</table>
</form>
</div>
<br><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkB")%>