<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><%=ivy.cms.co("Panel1/Text1")%><br>
<%=ivy.html.get("in.note")%><br>
<%=ivy.cms.co("Panel1/LinkA")%>