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
	<title><%=ivy.content("Caption","String")%></title>
</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	
	<tr bgcolor="#000032">
		<!-- Logo -->
		<td height="75">
			<table cellspacing="0" cellpadding="5">
				<tr>
					<td width="150"><%=ivy.cms.co("/Project/BannerBlue")%></td>
					<td class="HeaderText">Xpert.ivy</td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr bgcolor="#6B6B6B">
		<!-- Title bar-->
		<td>
			<table cellspacing="0" cellpadding="5">
				<tr>
					<td class="TitleBar"><%=ivy.content("Caption","String")%></td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr>
		<!-- Content -->
		<td>
			<table cellspacing="0" cellpadding="4" width="100%">
				<tr>
					<td>
						<jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>							
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<!-- Footer-->
		<td>
			<table cellspacing="0" cellpadding="5">
				<tr>
					<td class="Footer"><%=ivy.cms.co("/Project/FooterText")%></td>
				</tr>
			</table>		
		</td>
	</tr>
</table>
</body>
</html>