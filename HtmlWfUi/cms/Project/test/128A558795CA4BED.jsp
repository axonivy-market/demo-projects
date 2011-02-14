<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="ch.ivyteam.ivy.security.ISession"%>
<%@ page import="ch.ivyteam.text.html.HtmlSnippets"%>
<%	
	ISession ivySession = (ISession)request.getSession().getAttribute("ch.ivyteam.ivy.security.ISession");
	String userName = "";
	if (ivySession != null)
	{
	  userName = ivySession.getSessionUserName();
	}
	  
	String startUrl = (String) request.getParameter("startUrl");
	if (startUrl == null)
	{
		startUrl = "";
	}
	
	boolean hasIvySession = ivySession != null;

%>
<html>
<head>
	<title>Xpert.ivy Designer 4.1.2</title>
	<link rel="stylesheet" type="text/css" href="wfstyle.css" />
	<link rel="stylesheet" type="text/css" href="icons.css" />
	<link rel="shortcut icon" href="images/ivyteam.ico" />
</head>
<body>

<div>
  	<%
    if (!hasIvySession)
	{
			out.write("You don't have a session yet!");
	}
    else if (ivySession.isSessionUserUnknown())
    {
    		out.write(HtmlSnippets.createIconLabelTable("images/warning.gif", 
							        "Warning", 
							        "Unknown user! Please <a href=\"index.jsp?pageId=login\">login</a>", 
							        null));
	}
	else if(startUrl.length()==0)
	{
		{
			out.write("Nothing to start!");
		}
	}
	else
	{		
	%>			
			
		<SCRIPT LANGUAGE="JavaScript">
			setTimeout("document.location.href='<%=startUrl%>'",0);
		</SCRIPT>
		<P>Load <%=startUrl%></P>			
		<a href='/ivy/pro/designer/HtmlWFUI/125016DE17A534EB/start1.ivp'>&raquo;Zur Aufgabenliste</a>
	<%
	}
    %>
</div>
</body>
</html>