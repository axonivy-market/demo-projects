<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><%
	String startUrl = (String) request.getParameter("startUrl");
	if (startUrl == null)
	{
		startUrl = "";
	}
%>

		<SCRIPT LANGUAGE="JavaScript">
			setTimeout("document.location.href='<%=startUrl%>'",0);
		</SCRIPT>
		<P>aufgenommen<%=startUrl%></P>			
		<a href="/ivy/pro/<%=ivy.html.get("in.appname")%>/HtmlWFUI/125016DE17A534EB/start1.ivp" target="_top">Aufgabenliste</a><!--/ivyjsp -->