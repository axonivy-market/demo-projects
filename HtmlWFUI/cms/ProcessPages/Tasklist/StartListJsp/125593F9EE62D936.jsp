<% response.setHeader("Expires", "0");%>
<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="request"/>
<%ivy.setRequest(request);%>
<%@ page import="java.util.List"%>
<%@ page import="ch.ivyteam.ivy.workflow.IProcessStart"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Taskliste 4.0</title>
	<link rel="stylesheet" type="text/css" href="<%=ivy.cms.cr("/Parts/wfstyle")%>" />
</head>
<body>


<div id="Header"> 
	<div id="TopLogo">
		<a href="http://www.ivyteam.com"><img src="<%=ivy.cms.cr("/images/logo")%>"></a>
	</div>
	<div id="NavigationBar">
		<ul class="TopNavigation">
			<li><a style="text-decoration:underline;" href="/ivy/pro/<%=ivy.html.getObject("in.appname")%>/HtmlWFUI/125016DE17A534EB/start1.ivp" target="_top">Aufgaben</a></li>
		</ul>
	</div>
</div>

<div id="Caption">
			<h2>Pers&ouml;nliche Prozessliste</h2>
</div>

<div id="ContentArea">
	<div id="LeftNavigation">
		<ul class="LeftNavigationNodes">
			<li><a href="#">Alle Prozesse</a></li>
		</ul>	
	</div>

	<div id="Panel">
	<div id="Content">
	<%	
		java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	
		List<IProcessStart> starts =(List<IProcessStart>) ivy.html.getObject("in.starts");
	 
	  if (starts == null || starts.size() == 0)
	  {
			out.write("<p>Keine Prozesse gefunden</p>");	    
	  }
	  else
	  {
			int i =0;
	%>
		<table class="resultTable" width="100%">
		<tr>
			<th colspan="2">Prozess</th>					
		</tr>	    
	<%
		for (IProcessStart start : starts)
		{
				String startName = (start.getName() == null || start.getName().length()==0) ? start.getUserFriendlyRequestPath() : start.getName() ;
	%>		
			<tr class="<%=i%2 == 0 ? "oddRow" : "evenRow"%>">	
			<td><a href="/ivy/pro/<%=ivy.html.getObject("in.appname")%>/<%=start.getFullRequestPath()%>"><%=ivy.cms.co("/images/start")%></a></td><td><%=startName%><br><small><%=start.getDescription() %></small></td>
			</tr>       
	<%		
			i++;
		  }
	  }
	%>
		</table>
	</div>
</div>

<div id="Footer">
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.DateFormat"%>
	<%@ page import="java.util.Locale"%>
	<%@ page import="ch.ivyteam.ivy.Advisor"%>
	<%
	DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.SHORT, Locale.GERMAN);
	Date date = new Date();
	String dateTime = dateFormat.format(date);
	%>
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	  <tr> 
	    <td class="footer" valign="top" align="left">Powered by 
	        <%=ch.ivyteam.ivy.Advisor.getAdvisor().getApplicationName()%> <%=ch.ivyteam.ivy.Advisor.getAdvisor().getVersion()%> Copyright &copy; 2001 - <%=date.getYear() + 1900%> <a href="http://www.ivyteam.com">Soreco AG - ivyTeam</a>
	    </td>
	    <td class="footer" valign="top" align="right"><%=dateTime%></td>
	  </tr>
	</table>
</div>

</body>
</html>