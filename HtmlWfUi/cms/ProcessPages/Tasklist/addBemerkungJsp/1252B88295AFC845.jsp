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
	<img src="<%=ivy.cms.cr("/images/logo")%>">
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
<h2>Erstelle neue Bemerkung</h2>
<br />
<%
%>
<form action="<%=ivy.html.ref("LinkA.ivp")%>" method="post">
	<table>
		<tr>
			<td class="labelTd" WIDTH="80%">Erstelle Bemerkung f&uuml;r</td>
			<td><input type="radio" CHECKED style="border:0;" name="noteFor" value="task">Aufgabe</input></td>
			<td><input type="radio" style="border:0;" name="noteFor" value="case">Fall</input></td>
		</tr>
		<tr>
			<td class="labelTd">Bemerkung</td>
			<td COLSPAN="3"><textarea rows="10" cols="50" name="note"></textarea></input></td>
		</tr>
		<tr>
			<td>
			<td COLSPAN="2"><input type="submit" value="Neue Bemerkung"></td>
		</tr>
	</table>
</form>
<a href="<%=ivy.html.ref("LinkB.ivp")%>">Zur&uuml;ck zu den Taskdetails</a>
</div>

</body>
</html>