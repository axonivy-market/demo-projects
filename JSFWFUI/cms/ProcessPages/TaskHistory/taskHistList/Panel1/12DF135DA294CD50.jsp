<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table >
<tr ></tr>
<tr >
<td ><!--ivyjsp --><h3><%=ivy.cms.co("/labels/tasks")%></h3>
<hr><!--/ivyjsp --></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/SmartTable")%></td></tr>
</table>