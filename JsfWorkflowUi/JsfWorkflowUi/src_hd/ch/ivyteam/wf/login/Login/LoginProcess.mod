[Ivy]
13F6148AFE612F94 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @UdEvent f3 '' #zField
Ls0 @GridStep f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @UdProcessEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 13F6148B0061FE78 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 12 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f0 -1|-1|-9671572 #nodeStyle
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f1 -1|-1|-9671572 #nodeStyle
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 13F61CA0C651F57C #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -13 12 #rect
Ls0 f3 @|UdEventIcon #fIcon
Ls0 f3 -1|-1|-9671572 #nodeStyle
Ls0 f6 actionTable 'out=in;
' #txt
Ls0 f6 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

boolean loggedIn = ivy.session.loginSessionUser(in.username, in.password);
out.password = null;
if (!loggedIn) 
{
	FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Login failed", ""));
}
else
{
	FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, ivy.cms.co("/labels/workflow/home/welcome"), in.username));
	if(ivy.session.getSessionUser().isAbsent())
	{
		FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, ivy.cms.co("/labels/workflow/home/currentlyAbsent"), ivy.cms.co("/labels/workflow/home/activeSubstitutions")));
	}
}' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 168 138 112 44 -13 -8 #rect
Ls0 f6 @|StepIcon #fIcon
Ls0 f6 -1|-1|-9671572 #nodeStyle
Ls0 f7 expr out #txt
Ls0 f7 109 160 168 160 #arcP
Ls0 f4 339 147 26 26 0 12 #rect
Ls0 f4 @|UdProcessEndIcon #fIcon
Ls0 f4 -1|-1|-9671572 #nodeStyle
Ls0 f5 expr out #txt
Ls0 f5 280 160 339 160 #arcP
Ls0 f5 0 0.6633458009328568 0 0 #arcLabel
>Proto Ls0 .type ch.ivyteam.wf.login.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f7 tail #connect
Ls0 f7 head f6 mainIn #connect
Ls0 f6 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
