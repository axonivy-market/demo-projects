[Ivy]
[>Created: Thu Jun 12 10:32:48 CEST 2014]
1468B144151F2C82 3.17 #module
>Proto >Proto Collection #zClass
As0 AutoCompleteDemoProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogMethodStart f3 '' #zField
As0 @RichDialogProcessEnd f4 '' #zField
As0 @GridStep f6 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogMethodStart f8 '' #zField
As0 @RichDialogProcessEnd f9 '' #zField
As0 @GridStep f11 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @RichDialogProcessEnd f18 '' #zField
As0 @RichDialogProcessStart f19 '' #zField
As0 @GridStep f13 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @PushWFArc f15 '' #zField
>Proto As0 As0 AutoCompleteDemoProcess #zField
As0 f0 guid 1468B144171FC46C #txt
As0 f0 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f0 -1|-1|-9671572 #nodeStyle
As0 f1 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f1 -1|-1|-9671572 #nodeStyle
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 1468B160A3ACA5D0 #txt
As0 f3 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f3 method userSelected(org.primefaces.event.SelectEvent) #txt
As0 f3 disableUIEvents false #txt
As0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<org.primefaces.event.SelectEvent event> param = methodEvent.getInputArguments();
' #txt
As0 f3 inParameterMapAction 'out.selectedUserId=param.event.getObject().toNumber();
' #txt
As0 f3 outParameterDecl '<> result;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>userSelected(SelectEvent)</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 243 26 26 -72 15 #rect
As0 f3 @|RichDialogMethodStartIcon #fIcon
As0 f3 -1|-1|-9671572 #nodeStyle
As0 f4 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f4 339 243 26 26 0 12 #rect
As0 f4 @|RichDialogProcessEndIcon #fIcon
As0 f4 -1|-1|-9671572 #nodeStyle
As0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

// get the user with the selected user id
in.userViaAjax = ivy.wf.getSecurityContext().findUser(in.selectedUserId);
' #txt
As0 f6 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get and set 
selected user</name>
        <nameStyle>26,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 168 234 112 44 -37 -16 #rect
As0 f6 @|StepIcon #fIcon
As0 f6 -1|-1|-9671572 #nodeStyle
As0 f7 expr out #txt
As0 f7 109 256 168 256 #arcP
As0 f5 expr out #txt
As0 f5 280 256 339 256 #arcP
As0 f8 guid 1468B1E4E5D48D18 #txt
As0 f8 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f8 method searchUsers(String) #txt
As0 f8 disableUIEvents false #txt
As0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String searchText> param = methodEvent.getInputArguments();
' #txt
As0 f8 inParameterMapAction 'out.searchText=param.searchText;
' #txt
As0 f8 outParameterDecl '<List<ch.ivyteam.ivy.security.IUser> foundUsers> result;
' #txt
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
As0 f8 @|RichDialogMethodStartIcon #fIcon
As0 f8 -1|-1|-9671572 #nodeStyle
As0 f9 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f9 339 147 26 26 0 12 #rect
As0 f9 @|RichDialogProcessEndIcon #fIcon
As0 f9 -1|-1|-9671572 #nodeStyle
As0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData out;
' #txt
As0 f11 actionTable 'out=in;
' #txt
As0 f11 actionCode 'import ch.ivyteam.ivy.security.IUser;

List<IUser> result;
List<IUser> allUsers = ivy.wf.getSecurityContext().getUsers();
        
for(IUser user : allUsers) {
  if(user.getName().toUpperCase().contains(in.searchText.toUpperCase()))
  {
    result.add(user);
  }
}

in.searchResult = result;' #txt
As0 f11 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find users</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f11 168 138 112 44 -27 -8 #rect
As0 f11 @|StepIcon #fIcon
As0 f11 -1|-1|-9671572 #nodeStyle
As0 f12 expr out #txt
As0 f12 109 160 168 160 #arcP
As0 f10 expr out #txt
As0 f10 280 160 339 160 #arcP
As0 f18 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f18 339 339 26 26 0 12 #rect
As0 f18 @|RichDialogProcessEndIcon #fIcon
As0 f18 -1|-1|-9671572 #nodeStyle
As0 f19 guid 1468B41F73969E32 #txt
As0 f19 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f19 actionDecl 'ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData out;
' #txt
As0 f19 actionTable 'out=in;
' #txt
As0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f19 83 339 26 26 -14 12 #rect
As0 f19 @|RichDialogProcessStartIcon #fIcon
As0 f19 -1|-1|-9671572 #nodeStyle
As0 f13 actionDecl 'ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData out;
' #txt
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
As0 f13 type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show message of
selected users</name>
        <nameStyle>30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f13 160 330 128 44 -44 -16 #rect
As0 f13 @|StepIcon #fIcon
As0 f13 -1|-1|-9671572 #nodeStyle
As0 f14 expr out #txt
As0 f14 109 352 160 352 #arcP
As0 f15 expr out #txt
As0 f15 288 352 339 352 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo.AutoCompleteDemoData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f7 tail #connect
As0 f7 head f6 mainIn #connect
As0 f6 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f8 mainOut f12 tail #connect
As0 f12 head f11 mainIn #connect
As0 f11 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
As0 f19 mainOut f14 tail #connect
As0 f14 head f13 mainIn #connect
As0 f13 mainOut f15 tail #connect
As0 f15 head f18 mainIn #connect
