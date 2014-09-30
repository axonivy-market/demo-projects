<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<% ivy.setRequest(request); %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link rel="stylesheet" type="text/css" href="<%=ivy.style()%>"/>
	<title>Xpert.ivy Workflow</title>
</head>

<body style="background-color: #F9F9F9;font-size: 9pt; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;  margin-top: 0px;margin-bottom: 0px;margin-left: 5px;margin-right: 1px;height:99%; ">

	<div id="CompletePage">
		<div id="TopLogo" style="background-image:url(<%=ivy.cms.cr("/Project/XpertIvyHeaderBackground")%>); background-repeat:repeat-x;  height: 140px;text-align:left; margin-top:7px; margin-right:1px; margin-bottom: -2px; margin-left: -1px;">
			<img src='<%=ivy.cms.cr("/Project/XpertIvyHeader")%>'>
		</div>

		<div style="height: 24px;width: 99%;padding-top: 4px;padding-bottom: 4px;margin-top: 0px;margin-bottom: 0px;padding-left: 4px;padding-right: 4px;">
			<a href='<%=ivy.html.startref("127AE76143E89C91/DefaultApplicationHomePage.ivp")%>'><%=ivy.cms.co("/navLabels/home")%></a>
			<a href='<%=ivy.html.startref("1270ADF72FF4AFF3/DefaultProcessStartListPage.ivp")%>'><%=ivy.cms.co("/navLabels/processList")%></a> 
			<a href='<%=ivy.html.startref("125016DE17A534EB/DefaultTaskListPage.ivp")%>'><%=ivy.cms.co("/navLabels/taskList")%></a>
		</div>

		<div id="CaseHeader" style="background-color: #F9F9F9;">
			<h1><%=ivy.content("Caption","String")%></h1>
		</div>
		
		

		<div style="background-color: #F9F9F9; position: absolute; height: 416px; width: 99%; margin-top: 0px;margin-bottom: 0px;margin-left: 0px;padding-top: 4px;padding-bottom: 4px;padding-left: 2px;padding-right: 2px;">
			<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>

		</div>
		<div style="position: absolute; font-size:8pt;background-color:#F9F9F9;left: 0px; top: 97%; padding-top: 2px;padding-bottom: 1px;padding-left: 3px;padding-right: 3px;">	
		
		<%@ page import="java.util.Date"%>
		<%@ page import="java.text.DateFormat"%>
		<%@ page import="java.util.Locale"%>
		<%@ page import="ch.ivyteam.ivy.Advisor"%>
		<%
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, Locale.GERMAN);
			Date date = new Date();
			String dateTime = dateFormat.format(date);
		%>

		Powered by <%=ch.ivyteam.ivy.Advisor.getAdvisor().getApplicationName()%>
		<%=ch.ivyteam.ivy.Advisor.getAdvisor().getVersion()%> 
		Copyright &copy; 2001 - <%=date.getYear() + 1900%> ivyTeam 
		</div>
		<div style="position:absolute; right:0px; padding-right:10px; "> <%=dateTime%> </div>
	</div>

</body>