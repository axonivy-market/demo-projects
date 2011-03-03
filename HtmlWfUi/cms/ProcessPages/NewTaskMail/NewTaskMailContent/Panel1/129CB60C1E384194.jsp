<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table CELLPADDING="1">
<tr >
<td HEIGHT="30" COLSPAN="2"><%=ivy.cms.co("Panel1/greeting")%></td></tr>
<tr >
<td HEIGHT="30" COLSPAN="2"><%=ivy.cms.co("Panel1/intro")%></td></tr>
<tr >
<td WIDTH="100"><%=ivy.cms.co("Panel1/subject")%></td>
<td STYLE="font-weight:bold;"><%=ivy.html.get("in.task.name")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/description")%></td>
<td ><%=ivy.html.get("in.task.description")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/responsible")%></td>
<td ><%=ivy.cms.co("Panel1/responsibleValue")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/created")%></td>
<td ><%=ivy.cms.co("Panel1/createdValue")%></td></tr>
<tr >
<td ><%=(ivy.evaluateCondition("in.task.#expiryTimestamp is initialized") ? ivy.cms.co("Panel1/expiry") : "")%></td>
<td ><%=(ivy.evaluateCondition("in.task.#expiryTimestamp is initialized") ? ivy.html.get("in.task.expiryTimestamp") : "")%></td></tr>
<tr >
<td HEIGHT="60" COLSPAN="2"><%=ivy.cms.co("Panel1/start")%></td></tr>
</table>