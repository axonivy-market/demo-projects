<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><div id="ContentArea">
<%
%>
<form action="<%=ivy.html.ref("LinkA.ivp")%>" method="post">
	<table>
		<tr>
			<td class="labelTd" WIDTH="80%"><%=ivy.cms.co("/labels/addNote")%></td>
			<% if(ivy.html.get("in.noteFor").equals("task")) {%>
				<td><input type="radio" checked='true'  style="border:0;" name="noteFor" value="task"><%=ivy.cms.co("/labels/task")%></input></td>
				<td><input type="radio"  style="border:0;" name="noteFor" value="case"><%=ivy.cms.co("/labels/case")%></input></td>
			<% } else {%>
				<td><input type="radio" checked='true' style="border:0;" name="noteFor" value="case"><%=ivy.cms.co("/labels/case")%></input></td>
				<td><input type="radio" class='disabled' disabled='disabled'  style="border:0;" name="noteFor" value="task"><%=ivy.cms.co("/labels/task")%></input></td>
			<% } %>
			<tr>
		</tr>
		<tr>
			<td class="labelTd"><%=ivy.cms.co("/labels/text")%></td>
			<td COLSPAN="3"><textarea rows="10" cols="50" name="note"></textarea></input></td>
		</tr>
		<tr>
			<td>
			<td COLSPAN="2"><input type="submit" class="button" value="<%=ivy.cms.co("/labels/saveButton")%>"></td>
		</tr>
	</table>
</form>
</div>
<br><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkB")%>