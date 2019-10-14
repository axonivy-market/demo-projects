[Ivy]
15C7CA0FC7AF3A35 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LoginPageComponentProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @UdProcessEnd f6 '' #zField
Ls0 @GridStep f7 '' #zField
Ls0 @UdEvent f8 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @PushWFArc f10 '' #zField
>Proto Ls0 Ls0 LoginPageComponentProcess #zField
Ls0 f0 guid 15C7CA0FD01E4B8A #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f6 340 112 26 26 0 12 #rect
Ls0 f6 @|UdProcessEndIcon #fIcon
Ls0 f6 -1|-1|-9671572 #nodeStyle
Ls0 f7 actionTable 'out=in;
' #txt
Ls0 f7 actionCode 'import com.axon.ivy.engine.config.UiModder;

boolean loggedIn = ivy.session.loginSessionUser(in.username, in.password);
out.password = null;
if (!loggedIn) 
{
	UiModder.addErrorMessage("Login Failed", "");
}
' #txt
Ls0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f7 169 103 112 44 -13 -8 #rect
Ls0 f7 @|StepIcon #fIcon
Ls0 f7 -1|-1|-9671572 #nodeStyle
Ls0 f8 guid 15C7CA2BE24EAAA8 #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
    </language>
</elementInfo>
' #txt
Ls0 f8 84 112 26 26 -13 12 #rect
Ls0 f8 @|UdEventIcon #fIcon
Ls0 f8 -1|-1|-9671572 #nodeStyle
Ls0 f9 expr out #txt
Ls0 f9 110 125 169 125 #arcP
Ls0 f10 expr out #txt
Ls0 f10 281 125 340 125 #arcP
Ls0 f10 0 0.6633458009328568 0 0 #arcLabel
>Proto Ls0 .type com.axonivy.engine.config.ui.settings.component.LoginPageComponent.LoginPageComponentData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f8 mainOut f9 tail #connect
Ls0 f9 head f7 mainIn #connect
Ls0 f7 mainOut f10 tail #connect
Ls0 f10 head f6 mainIn #connect
