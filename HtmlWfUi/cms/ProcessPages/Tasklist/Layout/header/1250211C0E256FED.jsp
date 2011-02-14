<%
String[] languages = {"de", "en", "fr"};
%>
<a href="http://www.ivyteam.com"><img src="<%=ivy.cms.cr("/images/logo.jpg")%>" height="95" style="width:100%" border="0"></a>

<div id="NavigationBar">
	<ul class="TopNavigation LanguageSelection">
  	<%
  	for ( int i = 0; i < languages.length; i++)
  	{
  	%>
    <li><a href="<%="index.jsp?lang="+languages[i]%>" ><%=languages[i]%></a></li>
  	<%
  	}
  	%>
	</ul>
	<ul class="TopNavigation">
		<li><a href="../info/index.jsp" target="_top">Server</a></li>
		<li><a style="text-decoration:underline;" href="index.jsp" target="_top">Workflow</a></li>
	</ul>
</div>