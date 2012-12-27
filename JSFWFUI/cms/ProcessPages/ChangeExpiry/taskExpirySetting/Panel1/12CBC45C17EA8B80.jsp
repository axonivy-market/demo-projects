<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><%=ivy.cms.co("Panel1/LinkA")%><br>
<%=ivy.cms.co("Panel1/LinkB")%><br>
<!--ivyjsp --><%@ page import="ch.ivyteam.ivy.workflow.ITask"%>
<%@ page import="ch.ivyteam.ivy.workflow.TaskState"%>
<%
	ITask task = (ITask) ivy.html.getObject("in.tmpTask");
	TaskState state =null; 
	if(task  !=null && state==TaskState.DELAYED)
	{ 
%>
<SCRIPT language="Javascript">
	document.formLinkA.tmpTaskDetail$delay.disabled=false;	
</SCRIPT>
<% } %>
<!--/ivyjsp -->