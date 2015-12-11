<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><div id="ContentArea">
<%
%>
<form action="<%=ivy.html.ref("LinkA.ivp")%>" method="post">
	<table>
		<tr>
			<td class="labelTd" WIDTH="80%">Erstelle Bemerkung f&uuml;r</td>
			<td><input type="radio" CHECKED style="border:0;" name="noteFor" value="task">Aufgabe</input></td>
			<td><input type="radio" style="border:0;" name="noteFor" value="case">Fall</input></td>
		</tr>
		<tr>
			<td class="labelTd">Bemerkung</td>
			<td COLSPAN="3"><textarea rows="10" cols="50" name="note"></textarea></input></td>
		</tr>
		<tr>
			<td>
			<td COLSPAN="2"><input type="submit" class="button" value="Speichern"></td>
		</tr>
	</table>
</form>
</div>
<br><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkB")%>