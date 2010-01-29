<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<% ivy.setRequest(request); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Taskliste 4.0</title>
	<link rel="stylesheet" type="text/css" href="<%=ivy.cms.cr("/ProcessPages/Tasklist/Layout/wfstyle")%>" />
</head>
<body>

<%
String[] languages = {"de", "en", "fr"};
%>

<div id="TopLogo">
	<a href="http://www.ivyteam.com"><img src="<%=ivy.cms.cr("/images/logo")%>" height="95" width="450" border="0"></a>
</div>

<div id="NavigationBar">
	<ul class="TopNavigation LanguageSelection">
  	<%
  	for ( int i = 0; i < languages.length; i++)
  	{
  	%>
    <li><a href="<%="index.jsp?lang="+languages[i]%>" ><%=languages[i]%></a></li>
  	<%
  	}
  	%>
	</ul>
	<ul class="TopNavigation">
		<li><a href="../info/index.jsp" target="_top">Server</a></li>
		<li><a style="text-decoration:underline;" href="index.jsp" target="_top">Workflow</a></li>
	</ul>
</div>

<div id="ContentArea">
	<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>
</div>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.util.Locale"%>
<%@ page import="ch.ivyteam.ivy.Advisor"%>
<%
DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.SHORT, Locale.GERMAN);
Date date = new Date();
String dateTime = dateFormat.format(date);
%>
<div style="float:right;">
	<%=dateTime%>
</div>
Powered by <%=ch.ivyteam.ivy.Advisor.getAdvisor().getApplicationName()%>
<%=ch.ivyteam.ivy.Advisor.getAdvisor().getVersion()%> 
Copyright &copy; 2001 - <%=date.getYear() + 1900%> <a href="http://www.ivyteam.com">ivyTeam</a>