[Ivy]
1468B144151F2C82 9.4.6 #module
>Proto >Proto Collection #zClass
As0 AutoCompleteDemoProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .colors .colors #zField
As0 @TextInP color color #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdMethod f8 '' #zField
As0 @UdProcessEnd f9 '' #zField
As0 @GridStep f11 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @UdProcessEnd f18 '' #zField
As0 @UdEvent f19 '' #zField
As0 @GridStep f13 '' #zField
As0 @PushWFArc f15 '' #zField
As0 @GridStep f16 '' #zField
As0 @PushWFArc f20 '' #zField
As0 @PushWFArc f14 '' #zField
>Proto As0 As0 AutoCompleteDemoProcess #zField
As0 f0 guid 1468B144171FC46C #txt
As0 f0 method start() #txt
As0 f0 inParameterDecl '<> param;' #txt
As0 f0 outParameterDecl '<> result;' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 -1|-1|-9671572 #nodeStyle
As0 f1 211 51 26 26 0 12 #rect
As0 f1 -1|-1|-9671572 #nodeStyle
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f8 guid 1468B1E4E5D48D18 #txt
As0 f8 method searchUsers(String) #txt
As0 f8 inParameterDecl '<String searchText> param;' #txt
As0 f8 inParameterMapAction 'out.searchText=param.searchText;
' #txt
As0 f8 outParameterDecl '<List<ch.ivyteam.ivy.security.IUser> foundUsers> result;' #txt
As0 f8 outParameterMapAction 'result.foundUsers=in.searchResult;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>searchUsers(String)</name>
    </language>
</elementInfo>
' #txt
As0 f8 83 147 26 26 -56 15 #rect
As0 f8 -1|-1|-9671572 #nodeStyle
As0 f9 339 147 26 26 0 12 #rect
As0 f9 -1|-1|-9671572 #nodeStyle
As0 f11 actionTable 'out=in;
' #txt
As0 f11 actionCode 'import ch.ivyteam.ivy.security.IUser;

List<IUser> result;
        
for(IUser user : ivy.security.users().paged()) {
  if(user.getName().toUpperCase().contains(in.searchText.toUpperCase()))
  {
    result.add(user);
  }
}

in.searchResult = result;' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find users</name>
    </language>
</elementInfo>
' #txt
As0 f11 168 138 112 44 -27 -8 #rect
As0 f11 -1|-1|-9671572 #nodeStyle
As0 f12 expr out #txt
As0 f12 109 160 168 160 #arcP
As0 f10 expr out #txt
As0 f10 280 160 339 160 #arcP
As0 f18 515 243 26 26 0 12 #rect
As0 f18 -1|-1|-9671572 #nodeStyle
As0 f19 guid 1468B41F73969E32 #txt
As0 f19 actionTable 'out=in;
' #txt
As0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
As0 f19 83 243 26 26 -14 12 #rect
As0 f19 -1|-1|-9671572 #nodeStyle
As0 f13 actionTable 'out=in;
' #txt
As0 f13 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

String userViaAjax = "<not selected>";
String userViaFacesConverter = "<not selected>";

// get the user with the selected user id
if(in.userViaAjax != null)
{
	userViaAjax = "User Name: " + in.userViaAjax.getName();
}
if(in.selectedUserViaFacesConverter != null)
{
	userViaFacesConverter = "User Name: " + in.selectedUserViaFacesConverter.getName();
}

// show message
FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("User Selected via AJAX event", userViaAjax));
FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("User Selected via FacesConverter", userViaFacesConverter));
' #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show message of
selected users</name>
    </language>
</elementInfo>
' #txt
As0 f13 336 234 128 44 -44 -16 #rect
As0 f13 -1|-1|-9671572 #nodeStyle
As0 f15 expr out #txt
As0 f15 464 256 515 256 #arcP
As0 f16 actionTable 'out=in;
' #txt
As0 f16 actionCode 'in.userViaAjax = null;
if(in.searchText != 0)
{
	in.userViaAjax = ivy.security.users().findById(in.selectedUserId);
}' #txt
As0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get and set 
selected user</name>
    </language>
</elementInfo>
' #txt
As0 f16 168 234 112 44 -37 -16 #rect
As0 f16 -1|-1|-9671572 #nodeStyle
As0 f20 expr out #txt
As0 f20 109 256 168 256 #arcP
As0 f14 expr out #txt
As0 f14 280 256 336 256 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f8 mainOut f12 tail #connect
As0 f12 head f11 mainIn #connect
As0 f11 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
As0 f13 mainOut f15 tail #connect
As0 f15 head f18 mainIn #connect
As0 f19 mainOut f20 tail #connect
As0 f20 head f16 mainIn #connect
As0 f16 mainOut f14 tail #connect
As0 f14 head f13 mainIn #connect
