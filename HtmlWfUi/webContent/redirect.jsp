<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<%
String urlToStart=java.net.URLDecoder.decode(ivy.html.get("in.temp.url"), "UTF-8");
String tmpMsg=ivy.html.get("in.temp.msg");
%>
<html>
<head> 
<title>Xpert.ivy Workflow</title> 
<META  http-equiv="refresh" content="0; URL=<%=urlToStart%>">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="<%=ivy.cms.cr("/Styles/html_wf")%>"/>
<title>Xpert.ivy Workflow</title>
</head>

</head> 
<body> 
	<div id="CompletePage">
		<div id="PageHeaderLogo">
				<%=ivy.cms.co("/Project/Banner")%>
		</div>

		<div id="PageNavigation">
			&nbsp;&nbsp;
		</div>

		<div id="PageContent">
			<b><%=tmpMsg%></b><br><br>
			Click <a href="<%=urlToStart%>"> here </a>if workflow page is not loaded automatically.
			<br>
			<br>
			<br>
		</div>
	</div>	
</body>
</html>