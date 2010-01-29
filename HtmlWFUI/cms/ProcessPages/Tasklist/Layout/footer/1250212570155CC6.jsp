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