<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>
<% ivy.setRequest(request); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
       "http://www.w3.org/TR/html4/loose.dtd">
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

<div style="background-color: #000000; width: 100%;padding-top: 4px;padding-bottom: 4px;margin-top: 0px;margin-bottom: 0px;padding-left: 4px;padding-right: 4px;">
	&nbsp;
</div>
		
<div id="CaseHeader">
			<h1><%=ivy.evaluate("ivy.case.getName()")%></h1>
		</div>
		
		<div id="TaskHeader">
			<div id="TaskInfo">
			
			<table border="0">
			<tr></td>
			</table>
			</div>

			<h2><%=ivy.evaluate("ivy.task.getName()")%></h2>
			<div><%=ivy.evaluate("ivy.task.getDescription()")%></diV>
		</div>



		<div id="PageText">
			<%=ivy.content("ExplainText","Text")%>
		</div>

		<div id="PageContent">
			<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>

		</div>

		<div id="WFButtons">
			<table>
			<tr><td >
			<INPUT  TYPE="BUTTON" class="button" NAME="Submit" VALUE="<%=ivy.cms.co("/htmlabels/taskOk")%>" onclick="document.formLinkA.submit()"></td>
			<td ><INPUT TYPE="BUTTON" class="button" NAME="reset" VALUE="<%=ivy.cms.co("/htmlabels/formReset")%>" onclick="document.formLinkA.reset()"></td>
			<td ><INPUT TYPE="BUTTON" class="button" NAME="abort" VALUE="<%=ivy.cms.co("/htmlabels/wfAbort")%>"onclick="document.formLinkB.submit()"></td>
			</tr>
			</TABLE>
		</div>
		
	</div>
	<div id="PageFooter">
			<%=ivy.cms.co("/Project/FooterText")%>
	</div>
</body>
</html>