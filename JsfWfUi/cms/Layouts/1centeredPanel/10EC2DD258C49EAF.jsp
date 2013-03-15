<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<% ivy.setRequest(request); %>

<html>
<head>
<meta http-equiv="expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="<%=ivy.style()%>"/>
<title>Xpert.ivy</title>
</head>

<body>
<table width="100%" >
<tr>
<td align="right">
<%=ivy.cms.co("/Project/Banner")%>
</td>
</tr>
</table>
<table width="100%">
<tr>
<td>
<table width="100%">
<tr>
<td>
<h1>
<%=ivy.content("Caption","String")%>&nbsp;
</h1>
<HR size="2">
</td>
</tr>
</table>
<tr height="80%">
<td>
<table width="100%" height="100%">
<tr>
<td>
<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%">
<tr>
<td>
<%=ivy.cms.co("/Project/Footer")%>
</td>
</tr>
</table>
</body>
</html>