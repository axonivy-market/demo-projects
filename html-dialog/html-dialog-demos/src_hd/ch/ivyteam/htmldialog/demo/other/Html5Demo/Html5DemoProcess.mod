[Ivy]
144BBF8074075C50 9.4.8 #module
>Proto >Proto Collection #zClass
Hs0 Html5DemoProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .colors .colors #zField
Hs0 @TextInP color color #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @MessageFlowInP-0n messageIn messageIn #zField
Hs0 @MessageFlowOutP-0n messageOut messageOut #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @UdInit f0 '' #zField
Hs0 @UdProcessEnd f1 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @UdEvent f3 '' #zField
Hs0 @UdExitEnd f4 '' #zField
Hs0 @PushWFArc f5 '' #zField
Hs0 @UdEvent f9 '' #zField
Hs0 @UdProcessEnd f10 '' #zField
Hs0 @GridStep f6 '' #zField
Hs0 @PushWFArc f7 '' #zField
Hs0 @PushWFArc f8 '' #zField
>Proto Hs0 Hs0 Html5DemoProcess #zField
Hs0 f0 guid 144BBF809571B810 #txt
Hs0 f0 method start() #txt
Hs0 f0 inParameterDecl '<> param;' #txt
Hs0 f0 outParameterDecl '<> result;' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 51 51 26 26 -16 13 #rect
Hs0 f0 -1|-1|-9671572 #nodeStyle
Hs0 f1 179 51 26 26 0 13 #rect
Hs0 f1 -1|-1|-9671572 #nodeStyle
Hs0 f2 expr out #txt
Hs0 f2 77 64 179 64 #arcP
Hs0 f3 guid 144BBF80969EAD68 #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Hs0 f3 51 147 26 26 -15 13 #rect
Hs0 f3 -1|-1|-9671572 #nodeStyle
Hs0 f4 179 147 26 26 0 13 #rect
Hs0 f4 -1|-1|-9671572 #nodeStyle
Hs0 f5 expr out #txt
Hs0 f5 77 160 179 160 #arcP
Hs0 f9 guid 144BF9173F448022 #txt
Hs0 f9 actionTable 'out=in;
' #txt
Hs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>growlName</name>
    </language>
</elementInfo>
' #txt
Hs0 f9 51 243 26 26 -32 13 #rect
Hs0 f9 -1|-1|-9671572 #nodeStyle
Hs0 f10 339 243 26 26 0 13 #rect
Hs0 f10 -1|-1|-9671572 #nodeStyle
Hs0 f6 actionTable 'out=in;
' #txt
Hs0 f6 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

FacesContext context = FacesContext.getCurrentInstance();  
context.addMessage(null, new FacesMessage("Hello " + in.userName, "Greetings from the server"));  ' #txt
Hs0 f6 152 234 112 44 58 -2 #rect
Hs0 f6 -1|-1|-9671572 #nodeStyle
Hs0 f7 expr out #txt
Hs0 f7 77 256 152 256 #arcP
Hs0 f8 expr out #txt
Hs0 f8 264 256 339 256 #arcP
>Proto Hs0 .type ch.ivyteam.htmldialog.demo.other.Html5Demo.Html5DemoData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
Hs0 f0 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f9 mainOut f7 tail #connect
Hs0 f7 head f6 mainIn #connect
Hs0 f6 mainOut f8 tail #connect
Hs0 f8 head f10 mainIn #connect
