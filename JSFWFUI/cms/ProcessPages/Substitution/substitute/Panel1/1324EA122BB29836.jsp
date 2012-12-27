<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivyjsp --><table class=detailTable >
	<tr style="height:25px" >
		<%
		     boolean canEditSubstitutes = true;
			if(canEditSubstitutes)
			{
				out.write("<td class='labelTd'><a href=" + ivy.html.ref("LinkA.ivp") + "  title='"+ivy.cms.co("/tooltips/addSubstitute")+"'>" + ivy.cms.co("/images/add") +  ivy.cms.co("/labels/addSubstitute")+"</a></td>");
			}	
		%>
	</tr>
</table>
<!--/ivyjsp --><br>
<%=ivy.cms.co("Panel1/Source1")%><br>
<%=ivy.cms.co("Panel1/SmartTable1")%>