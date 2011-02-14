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

<body>
	<div id="CompletePage">

		<div id="PageHeaderLogo">
				<%=ivy.cms.co("/Project/Banner")%>
		</div>

		<div id="PageNavigation">
			&nbsp;
		</div>
		<div id="LeftNavigation">

			<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/127AE76143E89C91/start1.ivp" target="_top">Home</a><br><br> 
			<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/1270ADF72FF4AFF3/start1.ivp" target="_top">Prozessliste</a> <br><br>
			<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/125016DE17A534EB/start1.ivp" target="_top">Aufgabenliste</a><br><br>
			<hr>
			<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/12C97DB1B1EA5971/start1.ivp" target="_top">Meine Workflows</a><br><br>
			<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/12C97DB1B1EA5971/start2.ivp" target="_top">Workflow Admin</a><br>

		</div>

		<div id="CenterPage">	
			<div id="CaseHeader">
				<h1><%=ivy.content("Caption","String")%></h1>
				<table><tr><td width="310"><%=ivy.content("Explain","Text")%></td>
				<td >Angemeldet&nbsp;als:&nbsp;<%=ivy.html.get("in.username")%>
				</tr></table>
				
			</div>

			<div id="PageContent">
				<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>
			</div>
		</div>

		<div id="FooterHome">
		
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
		Copyright &copy; 2001 - <%=date.getYear() + 1900%> ivyTeam &nbsp; <%=dateTime%>
		</div>
	</div>

</body>