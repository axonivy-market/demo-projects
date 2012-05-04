<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table >
<tr >
<td ><!--ivyjsp --><b><%=ivy.html.get("in.temp.mode")%></b>
<br>
<br>
<h3>Workflows</h3><!--/ivyjsp --></td>
<td ALIGN="RIGHT"><%=ivy.cms.co("Panel1/LinkA")%></td></tr>
<tr >
<td COLSPAN="2"><!--ivyjsp --><hr><!--/ivyjsp --></td></tr>
<tr >
<td COLSPAN="2"><%=ivy.cms.co("Panel1/SmartTable")%></td></tr>
<tr >
<td ><%=ivy.cms.co("Panel1/LinkC")%></td>
<td ><!--ivyjsp --><script language="javascript">
function submitformLinkC()
{
	document.formLinkC.temp$catFilter.value=document.formLinkA.temp$catFilter.value;
	document.formLinkC.submit();
}
</script><!--/ivyjsp --></td></tr>
</table>