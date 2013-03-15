<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table CELLPADDING="1" WIDTH="100%">
<tr >
<td ><%=ivy.cms.co("Panel1/greeting")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/intro")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/TaskList")%></td></tr>
</table>