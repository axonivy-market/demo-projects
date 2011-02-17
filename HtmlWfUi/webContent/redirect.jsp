<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<%
String urlToStart=ivy.html.get("in.temp.url");
%>
<html>
<head> 
<title>Workflow redirect</title> 
<META  http-equiv="refresh" content="0; URL=<%=urlToStart%>">
</head> 
<body>
<a href="<%=urlToStart%>">click here</a>
</body>
</html>