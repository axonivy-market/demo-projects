<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><%@ page import="java.util.List"%>
<%@ page import="ch.ivyteam.ivy.workflow.IWorkflowSession"%>
<%@ page import="ch.ivyteam.ivy.security.*"%>
<%@ page import="ch.ivyteam.ivy.workflow.ITask"%>
<%@ page import="ch.ivyteam.ivy.scripting.objects.Recordset"%>
<%@ page import="ch.ivyteam.ivy.scripting.objects.Record"%>

<div id="ContentArea">
<br />
<%
  		IWorkflowSession ivySession = (IWorkflowSession)ivy.html.getObject("in.wfSession");		
		ISecurityContext securityContext = ivySession.getSecurityContext();
		List<IRole> roleListe = securityContext.getRoles();
		List<IUser> userListe = securityContext.getUsers();
		ITask task = (ITask) ivy.html.getObject("in.tmpTask");
		boolean taskActivatorIsUser = task.getActivator() != null && task.getActivator().isUser();
		Recordset userRs = new ch.ivyteam.ivy.scripting.objects.Recordset();
		ch.ivyteam.ivy.scripting.objects.List<String> keys = ch.ivyteam.ivy.scripting.objects.List.create(String.class);
		keys.add("name");
		for(IUser user : userListe) 
		{
			Record rec = new Record(keys, keys);
			rec.putField("name", user.getName());
			 userRs.add(rec);
		}
		userRs.sort("name");
		
		Recordset roleRs = new ch.ivyteam.ivy.scripting.objects.Recordset();
		for(IRole role : roleListe) 
		{
			Record rec = new Record(keys, keys);
			rec.putField("name", role.getName());
			roleRs.add(rec);
		}
		roleRs.sort("name");

%>
<form action="<%=ivy.html.ref("LinkA.ivp")%>" method="POST">
	<table>
		<tr>
			<td class="labelTd" ROWSPAN="2"><%=ivy.cms.co("/labels/taskResponsible")%></td>
			<td>
				<%
					if(taskActivatorIsUser){
						out.write("<input type='radio' style='border:0;' CHECKED name='delegateType' value='user' />");
					}else{
						out.write("<input type='radio' style='border:0;' name='delegateType' value='user' />");
					}
				%>
			</td>
			<td><%=ivy.cms.co("/images/user")%></td>
			<td style="width: 300px;">
				<select name="delegateUser" style="width:100%;">
					<%
						for(int u=0; u<userRs.size(); u++) 
						{
							String userN = userRs.getField(u, "name").toString();
							if(taskActivatorIsUser && userN.equals(task.getActivatorName()))
							{
								out.write("<option SELECTED>" + userN + "</option>");
							}
							else
							{
								out.write("<option>" + userN + "</option>");
							}
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<%
					if(!taskActivatorIsUser){
						out.write("<input type='radio' style='border:0;' CHECKED name='delegateType' value='role' />");
					}else{
						out.write("<input type='radio' style='border:0;' name='delegateType' value='role' />");
					}
				%>
			</td>
			<td><%=ivy.cms.co("/images/role")%></td>
			<td style="width: 300px;">
				<select name="delegateRole" style="width:100%;">
					<%
						for(int r=0; r<roleRs.size(); r++) 
						{
							String roleN = roleRs.getField(r, "name").toString();
							if(!taskActivatorIsUser && roleN.equals(task.getActivatorName()))
							{
								out.write("<option SELECTED>" + roleN + "</option>");
							}
							else
							{
								out.write("<option>" + roleN + "</option>");
							}
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td COLSPAN ="3">
				<input type="submit" name="submit" value="<%=ivy.cms.co("/labels/taskDelegate")%>">
			</td>
	</table>
</form>
</div><!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/LinkB")%>