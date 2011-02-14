<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><h3>Archivierte Formulare</h3>
<hr><br>
<!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/SmartTable")%><br>
<%=ivy.cms.co("Panel1/LinkB")%>