<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table >
<tr >
<td ><!--ivyjsp --><%@ page import="java.util.EnumSet"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="ch.ivyteam.text.html.HtmlSnippets"%>
<%@ page import="ch.ivyteam.ivy.application.IProcessModelVersion"%>
<%@ page import="ch.ivyteam.ivy.application.IApplicationConfigurationManager"%>
<%@ page import="ch.ivyteam.ivy.persistence.IQueryResult"%>
<%@ page import="ch.ivyteam.ivy.persistence.PersistencyException"%>
<%@ page import="ch.ivyteam.ivy.process.engine.IProcessEngine"%>
<%@ page import="ch.ivyteam.ivy.process.engine.PetriNetEngineState"%>
<%@ page import="ch.ivyteam.ivy.project.IIvyProject"%>
<%@ page import="ch.ivyteam.ivy.request.RequestUriFactory"%>
<%@ page import="ch.ivyteam.ivy.security.*"%>
<%@ page import="ch.ivyteam.ivy.webserver.IServerLimited"%>
<%@ page import="ch.ivyteam.ivy.workflow.IIntermediateEventElement"%>
<%@ page import="ch.ivyteam.ivy.workflow.IIntermediateEvent"%>
<%@ page import="ch.ivyteam.ivy.workflow.ITask"%>
<%@ page import="ch.ivyteam.ivy.workflow.ICase"%>
<%@ page import="ch.ivyteam.ivy.workflow.IWorkflowSession"%>
<%@ page import="ch.ivyteam.ivy.workflow.IWorkflowProcessModelVersion"%>
<%@ page import="ch.ivyteam.ivy.workflow.IntermediateEventProperty"%>
<%@ page import="ch.ivyteam.ivy.workflow.IntermediateEventState"%>
<%@ page import="ch.ivyteam.ivy.workflow.IPropertyFilter"%>
<%@ page import="ch.ivyteam.ivy.workflow.PropertyOrder"%>
<%@ page import="ch.ivyteam.ivy.workflow.WorkflowNavigationUtil"%>
<%@ page import="ch.ivyteam.logicalexpression.RelationalOperator"%>
<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<%@ page import="ch.ivyteam.log.Logger"%>
<%@ page import="ch.ivyteam.ivy.request.IProcessModelVersionRequest"%>
<%@ page import="ch.ivyteam.ivy.workflow.INote"%>
<%@ page import="ch.ivyteam.ivy.workflow.CaseState"%>


<div id="ContentArea">
<%
	java.text.DateFormat formater = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	IProcessModelVersionRequest Ivyrequest = (IProcessModelVersionRequest) ivy.html.getObject("request");
	ISecurityDescriptor securityDescriptor = Ivyrequest.getApplication().getSecurityDescriptor();
	ICase icase = (ICase) ivy.html.getObject("in.tempCase");
%>

<br />
<table class=detailTable width="900">
	<tr style="height:25px" >
		<% if(icase.getState() != CaseState.RUNNING) { %>
			<td class="labelTd" ><a DISABLED  href="#" title="<%=ivy.cms.co("/tooltips/deleteCase")%>"><%=ivy.cms.co("/images/delete")%><%=ivy.cms.co("/labels/caseDelete")%></a></td>
			<td class='labelTd' ><a DISABLED href="#"  title="<%=ivy.cms.co("/tooltips/addNote")%>"><%=ivy.cms.co("/images/note")%><%=ivy.cms.co("/labels/addNote")%></a></td>
		<% } else { %>
			<td class="labelTd" ><a  href="<%=ivy.html.ref("LinkB.ivp")%>"  title="<%=ivy.cms.co("/tooltips/deleteCase")%>"><%=ivy.cms.co("/images/delete")%><%=ivy.cms.co("/labels/caseDelete")%></a></td>
			<td class='labelTd' ><a href="<%=ivy.html.ref("LinkD.ivp")%>"  title="<%=ivy.cms.co("/tooltips/addNote")%>"><%=ivy.cms.co("/images/note")%><%=ivy.cms.co("/labels/addNote")%></a></td>
		<% } %>
		<td class="labelTd" ><a href="<%=ivy.html.ref("LinkC.ivp")%>"  title="<%=ivy.cms.co("/tooltips/showFormArchive")%>"><%=ivy.cms.co("/images/formHistory")%><%=ivy.cms.co("/labels/formArchive")%></a></td>
		<td class="labelTd"></td>
		<td class="labelTd"></td>
	</tr>
</table>

<table class="detailTable" width="100%">
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/caseId")%></td>
		<td><%=icase.getIdentifier()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/name")%></td>
		<td><%=icase.getName()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/description")%></td>
		<td><%=icase.getDescription()%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/processmodel")%></td>
		<td><%=icase.getProcessModel().getName()%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/version")%></td>
		<td><%=icase.getProcessModelVersion().getVersionName()%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/state")%></td>
		<td><%=ivy.cms.co("/images/casestate/"+icase.getState().intValue())%> <%=icase.getState()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/creator")%></td>
		<td><%=ivy.cms.co("/images/user")%> <%=icase.getCreatorUserName()%></td>
	</tr>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/created")%></td>
		<td><%=formater.format(icase.getStartTimestamp())%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/category")%></td>
		<td><%=icase.getProcessCategoryCode()%></td>
	</tr>
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/process")%></td>
		<td><%=icase.getProcessName()%></td>
	</tr>
	<% if(icase.getTypeName()!=null && icase.getTypeName().length()>0) {%>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/processType")%></td>
		<td><%=icase.getTypeName() %> </td>
	</tr>
	<%}%>	
	<% if(icase.getSubTypeName()!=null && icase.getSubTypeName().length()>0) {%>	
	<tr>
		<td class="labelTd"><%=ivy.cms.co("/labels/processSubType")%></td>
		<td><%=icase.getSubTypeName() %> </td>
	</tr>
	<%}%>						
</table>
<br />
<%
		if(icase!=null && icase.hasNotes()) {
			List <INote> notes = icase.getNotes();	
			out.write("<h3>"+ivy.cms.co("/labels/caseNotes")+"</h3>");
			for(INote note : notes) {
				out.write("<b>" + formater.format(note.getCreationTimestamp()) + " ");
				out.write(note.getWritterName() + ":</b><br />");
				out.write(note.getMessage() + "<br />");
			}
			out.write("<br />");
		}
%>
<br />
</div><br>
<h3><%=ivy.cms.co("/labels/caseHistory")%></h3>
<hr><!--/ivyjsp --></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/SmartTable")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/LinkA")%></td></tr>
</table>