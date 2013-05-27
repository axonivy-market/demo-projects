<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table >
<tr >
<td ><!--ivyjsp --><%@ page import="java.util.List"%>
<%@ page import="ch.ivyteam.ivy.workflow.IProcessStart"%>
	<div>
		<h3><%=ivy.cms.co("/labels/processes")%></h3>
		<hr>	

	<%	
		java.text.DateFormat formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.SHORT, java.text.DateFormat.SHORT, java.util.Locale.GERMANY); 
	
		List<IProcessStart> starts =(List<IProcessStart>) ivy.html.getObject("in.starts");
	 
	  if (starts == null || starts.size() == 0)
	  {
			out.write("<p>"+ivy.cms.co("/labels/noItemsFound")+"</p>");	    
	  }
	  else
	  {
			int i =0;
	%>

		<table class="resultTable" width="100%">
		<tr><th  class="data"</th>				</tr>	
	<%
		for (IProcessStart start : starts)
		{
				String startName = (start.getName() == null || start.getName().length()==0) ? start.getUserFriendlyRequestPath() : start.getName() ;
	%>		
			<tr class="<%=i%2 == 0 ? "oddRow" : "evenRow"%>">	
			<td width="20" valign="middle"><a href="<%=request.getContextPath()%>/pro/<%=start.getFullRequestPath()%>"><img src='<%=ivy.cms.cr("/images/start")%>' title='<%=ivy.cms.co("/labels/startProcess")%>'></a></td>
			<td width="920">
				<table><tr><td><a href="<%=request.getContextPath()%>/pro/<%=start.getFullRequestPath()%>" title='<%=ivy.cms.co("/labels/startProcess")%>'><b><%=startName%></b></a></td>
					</td></tr><tr><td><small><%=start.getDescription() %></small>
				</td></tr></table>
			</td>
			</tr>       
	<%		
			i++;
		  }
	  }
	%>
		</table>
	</div>
<!--/ivyjsp --></td></tr>
</table>