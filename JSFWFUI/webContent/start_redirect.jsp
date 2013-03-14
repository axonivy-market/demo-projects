<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/> 
<%
	String startUrl=java.net.URLDecoder.decode(ivy.html.get("in.temp.url"), "UTF-8");
	String taskListUrl=ivy.html.ref("LinkA.ivp");
%>
<html>
<head>
	<title>Xpert.ivy Workflow</title>
</head>
<body style="background-color: #F9F9F9;font-size: 9pt; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;  margin-top: 0px;margin-bottom: 0px;margin-left: 5px;margin-right: 1px;height:99%; ">
	
<div style="background-color:#F9F9F9; height: 65px;text-align:left; margin-top:9px; margin-right:1px; margin-bottom: -2px; margin-left: 2px;">		
	<img src='<%=ivy.cms.cr("/images/logo")%>'>
</div>

<div style="background-image: url(images/border.png); height: 20px;width: 99%;padding-top: 4px;padding-bottom: 4px;margin-top: 0px;margin-bottom: 0px;padding-left: 4px;padding-right: 4px;">
</div>

<div style="background-color: #F9F9F9; position: absolute; height: 416px; width: 99%; margin-top: 0px;margin-bottom: 0px;margin-left: 0px;padding-top: 4px;padding-bottom: 4px;padding-left: 2px;padding-right: 2px;">
<br>
<%
	if(startUrl.length()==0)
    {	
		out.write("Nothing to start!");
    }
    else
    {		
	%>			
		<h1 style="font-size:14pt;font-weight:lighter;"><%=ivy.cms.co("/htmlabels/taskResumed")%></h1>	
		<p id="loading_msg"><%=ivy.cms.co("/htmlabels/loadingPopup")%></p>
		<SCRIPT LANGUAGE="JavaScript">
			setTimeout("window.location.replace(\"<%=startUrl%>\")",0);
		</SCRIPT>
		<span id="back_links" style="display:none">	
		<br>		
		<p><%=ivy.cms.co("/htmlabels/backTo")%> <a style="font-size: 8pt;color: #333333;text-decoration: none;border: 0px;font-weight: bold;" href='javascript:location.replace("<%=taskListUrl%>")'>&raquo; <%=ivy.cms.co("/navLabels/taskList")%></a>
		</span>
		<SCRIPT LANGUAGE="JavaScript">
			function toggleDisplayMsgs()
			{
				document.getElementById("loading_msg").style.display="none";
				document.getElementById("back_links").style.display="";
			}
			// delayed for 4 secs
			setTimeout("toggleDisplayMsgs()",4000);
		</SCRIPT>
	<%
    }
    %>
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
	<div style="float:right;">
		<%=dateTime%>
	</div>
	Powered by <%=ch.ivyteam.ivy.Advisor.getAdvisor().getApplicationName()%>
	<%=ch.ivyteam.ivy.Advisor.getAdvisor().getVersion()%> 
	Copyright &copy; 2001 - <%=date.getYear() + 1900%> ivyTeam
	</div>

</body>
</html>
