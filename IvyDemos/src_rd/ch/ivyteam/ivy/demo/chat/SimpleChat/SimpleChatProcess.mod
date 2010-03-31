[Ivy]
[>Created: Wed Mar 31 12:43:01 CEST 2010]
11CF5FAA2C12CD59 3.14 #module
>Proto >Proto Collection #zClass
Ss0 SimpleChatProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogInitStart f3 '' #zField
Ss0 @RichDialogBroadcastStart f5 '' #zField
Ss0 @RichDialogBroadcastStart f6 '' #zField
Ss0 @RichDialogBroadcastStart f7 '' #zField
Ss0 @RichDialogProcessEnd f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogProcessStart f12 '' #zField
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 @RichDialogProcessStep f14 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessEnd f18 '' #zField
Ss0 @RichDialogProcessStart f20 '' #zField
Ss0 @RichDialogProcessStep f21 '' #zField
Ss0 @RichDialogProcessEnd f23 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @Alternative f2 '' #zField
Ss0 @PushWFArc f25 '' #zField
Ss0 @RichDialogProcessStep f27 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @RichDialogFireEvent f29 '' #zField
Ss0 @PushWFArc f30 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @RichDialogProcessEnd f31 '' #zField
Ss0 @RichDialogProcessStep f32 '' #zField
Ss0 @Alternative f33 '' #zField
Ss0 @RichDialogProcessStep f34 '' #zField
Ss0 @PushWFArc f35 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @PushWFArc f37 '' #zField
Ss0 @RichDialogFireEvent f17 '' #zField
Ss0 @PushWFArc f39 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @PushWFArc f40 '' #zField
Ss0 @RichDialogFireEvent f1 '' #zField
Ss0 @PushWFArc f41 '' #zField
Ss0 @PushWFArc f36 '' #zField
Ss0 @PushWFArc f42 '' #zField
>Proto Ss0 Ss0 SimpleChatProcess #zField
Ss0 f0 guid 11CF5FAA35D6FCB2 #txt
Ss0 f0 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.userName=ivy.session.getSessionUserName();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/le_chat\";\nparam.title=\"Le Chat\";\nparam.subtitle=\"A simple chat application\";\n"/initScript "\""}}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 38 30 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f3 guid 11CF6012AF837E31 #txt
Ss0 f3 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f3 method startWithName(String) #txt
Ss0 f3 disableUIEvents false #txt
Ss0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name> param = methodEvent.getInputArguments();
' #txt
Ss0 f3 inParameterMapAction 'out.userName=param.name;
' #txt
Ss0 f3 outParameterDecl '<> result;
' #txt
Ss0 f3 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/le_chat\";\nparam.title=\"Le Chat\";\nparam.subtitle=\"Chat with other users, your name is: \"+callParam.name;\n"/initScript ""}}' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithName(String)</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 70 70 20 20 13 0 #rect
Ss0 f3 @|RichDialogInitStartIcon #fIcon
Ss0 f5 guid 11CF60EB4BFE76F0 #txt
Ss0 f5 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f5 broadcast thirdparty_ivychat_logoff #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'String msg = "User ''"+param.data.user+"'' has logged off.";
panel.chatTextArea.appendLine(msg);' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>thirdparty_ivychat_logoff</name>
        <nameStyle>25,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 86 254 20 20 13 0 #rect
Ss0 f5 @|RichDialogBroadcastStartIcon #fIcon
Ss0 f6 guid 11CF60EBE25D9FF8 #txt
Ss0 f6 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f6 broadcast thirdparty_ivychat_logon #txt
Ss0 f6 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'String msg = "User ''"+param.data.user+"'' has joined.";
panel.chatTextArea.appendLine(msg);' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>thirdparty_ivychat_logon</name>
        <nameStyle>24,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 86 302 20 20 13 0 #rect
Ss0 f6 @|RichDialogBroadcastStartIcon #fIcon
Ss0 f7 guid 11CF60ECA4B68F0A #txt
Ss0 f7 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f7 broadcast thirdparty_ivychat_message #txt
Ss0 f7 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f7 actionTable 'out=in;
' #txt
Ss0 f7 actionCode 'String msg = "["+param.data.user+"]: "+param.data.msg;
panel.chatTextArea.appendLine(msg);' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>thirdparty_ivychat_message</name>
        <nameStyle>26,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 86 350 20 20 13 0 #rect
Ss0 f7 @|RichDialogBroadcastStartIcon #fIcon
Ss0 f8 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f8 35 387 26 26 14 0 #rect
Ss0 f8 @|RichDialogProcessEndIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 86 264 48 387 #arcP
Ss0 f9 1 48 264 #addKink
Ss0 f9 1 0.40011069413766054 0 0 #arcLabel
Ss0 f10 expr out #txt
Ss0 f10 86 312 48 387 #arcP
Ss0 f10 1 48 312 #addKink
Ss0 f10 1 0.2200315143785349 0 0 #arcLabel
Ss0 f11 expr out #txt
Ss0 f11 86 360 48 387 #arcP
Ss0 f11 1 48 360 #addKink
Ss0 f11 0 0.8546594821152431 0 0 #arcLabel
Ss0 f12 guid 11CF6157220E6E64 #txt
Ss0 f12 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f12 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send_msg</name>
        <nameStyle>8,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 758 30 20 20 13 0 #rect
Ss0 f12 @|RichDialogProcessStartIcon #fIcon
Ss0 f13 guid 11CF6157BD433D8B #txt
Ss0 f13 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f13 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f13 actionTable 'out=in;
out.loggedIn=false;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log_off</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 582 30 20 20 13 0 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'import ch.ivyteam.ivy.demo.chat.ChatMessage;
import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.event.SystemEvent;

// register (will unregister automatically when panel is unloaded)
ivy.rd.subscribeToSystemEvents(SystemEventCategory.THIRD_PARTY);
' #txt
Ss0 f14 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 30 116 36 24 25 -15 #rect
Ss0 f14 @|RichDialogProcessStepIcon #fIcon
Ss0 f15 expr out #txt
Ss0 f15 74 88 56 116 #arcP
Ss0 f4 expr out #txt
Ss0 f4 48 50 48 116 #arcP
Ss0 f18 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f18 579 275 26 26 14 0 #rect
Ss0 f18 @|RichDialogProcessEndIcon #fIcon
Ss0 f20 guid 1216551E2C2100C4 #txt
Ss0 f20 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f20 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f20 actionTable 'out=in;
' #txt
Ss0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log_in</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f20 422 30 20 20 13 0 #rect
Ss0 f20 @|RichDialogProcessStartIcon #fIcon
Ss0 f21 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f21 actionTable 'out=in;
out.loggedIn=true;
' #txt
Ss0 f21 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f21 414 236 36 24 28 -6 #rect
Ss0 f21 @|RichDialogProcessStepIcon #fIcon
Ss0 f23 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f23 419 275 26 26 14 0 #rect
Ss0 f23 @|RichDialogProcessEndIcon #fIcon
Ss0 f24 expr out #txt
Ss0 f24 432 260 432 275 #arcP
Ss0 f2 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in?</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 418 98 28 28 12 -24 #rect
Ss0 f2 @|AlternativeIcon #fIcon
Ss0 f25 expr out #txt
Ss0 f25 432 50 432 98 #arcP
Ss0 f27 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f27 actionTable 'out=in;
' #txt
Ss0 f27 actionCode 'panel.chatTextArea.appendLine("You''re already logged in!");' #txt
Ss0 f27 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform user</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f27 358 188 36 24 -88 -5 #rect
Ss0 f27 @|RichDialogProcessStepIcon #fIcon
Ss0 f28 expr in #txt
Ss0 f28 outCond in.loggedIn #txt
Ss0 f28 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f28 418 112 376 188 #arcP
Ss0 f28 1 376 112 #addKink
Ss0 f28 0 0.5238095238095238 0 -11 #arcLabel
Ss0 f26 expr out #txt
Ss0 f26 376 212 420 282 #arcP
Ss0 f26 1 376 264 #addKink
Ss0 f26 1 0.22883692772667988 0 0 #arcLabel
Ss0 f29 actionDecl 'ch.ivyteam.ivy.demo.chat.ChatMessage msg;
' #txt
Ss0 f29 actionTable 'msg.user=in.userName;
' #txt
Ss0 f29 actionCode panel.fireThirdparty_ivychat_logoff(msg); #txt
Ss0 f29 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f29 fireEvent thirdparty_ivychat_logoff(ch.ivyteam.ivy.demo.chat.ChatMessage) #txt
Ss0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send 
logoff 
msg</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f29 574 212 36 24 26 -20 #rect
Ss0 f29 @|RichDialogFireEventIcon #fIcon
Ss0 f30 expr out #txt
Ss0 f30 592 50 592 212 #arcP
Ss0 f19 expr out #txt
Ss0 f19 592 236 592 275 #arcP
Ss0 f31 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f31 755 275 26 26 14 0 #rect
Ss0 f31 @|RichDialogProcessEndIcon #fIcon
Ss0 f32 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f32 actionTable 'out=in;
' #txt
Ss0 f32 actionCode 'panel.messageTextField.text = "";
panel.messageTextField.requestFocusInWindow();' #txt
Ss0 f32 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear fields</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f32 750 236 36 24 26 -4 #rect
Ss0 f32 @|RichDialogProcessStepIcon #fIcon
Ss0 f33 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in?</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f33 754 98 28 28 12 -24 #rect
Ss0 f33 @|AlternativeIcon #fIcon
Ss0 f34 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f34 actionTable 'out=in;
' #txt
Ss0 f34 actionCode 'panel.chatTextArea.appendLine("You''re logged off! Log-in to send messages.");' #txt
Ss0 f34 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform user:
must login first</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f34 694 148 36 24 -89 -54 #rect
Ss0 f34 @|RichDialogProcessStepIcon #fIcon
Ss0 f35 expr out #txt
Ss0 f35 768 260 768 275 #arcP
Ss0 f16 expr out #txt
Ss0 f16 768 50 768 98 #arcP
Ss0 f37 expr in #txt
Ss0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f37 754 112 712 148 #arcP
Ss0 f37 1 712 112 #addKink
Ss0 f37 0 0.35714285714285715 0 -10 #arcLabel
Ss0 f17 actionDecl 'ch.ivyteam.ivy.demo.chat.ChatMessage msg;
' #txt
Ss0 f17 actionTable 'msg.user=in.userName;
' #txt
Ss0 f17 actionCode panel.fireThirdparty_ivychat_logon(msg); #txt
Ss0 f17 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f17 fireEvent thirdparty_ivychat_logon(ch.ivyteam.ivy.demo.chat.ChatMessage) #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send
login
event</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 414 188 36 24 27 -19 #rect
Ss0 f17 @|RichDialogFireEventIcon #fIcon
Ss0 f39 expr in #txt
Ss0 f39 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f39 432 126 432 188 #arcP
Ss0 f39 0 0.21052631578947367 14 0 #arcLabel
Ss0 f22 expr out #txt
Ss0 f22 432 212 432 236 #arcP
Ss0 f40 expr out #txt
Ss0 f40 48 140 425 188 #arcP
Ss0 f40 1 48 160 #addKink
Ss0 f40 2 408 160 #addKink
Ss0 f40 1 0.4454120679311428 0 0 #arcLabel
Ss0 f1 actionDecl 'ch.ivyteam.ivy.demo.chat.ChatMessage msg;
' #txt
Ss0 f1 actionTable 'msg.msg=panel.messageTextField.text.trim();
msg.user=in.userName;
' #txt
Ss0 f1 actionCode panel.fireThirdparty_ivychat_message(msg); #txt
Ss0 f1 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f1 fireEvent thirdparty_ivychat_message(ch.ivyteam.ivy.demo.chat.ChatMessage) #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send 
chat
message</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 750 188 36 24 29 -22 #rect
Ss0 f1 @|RichDialogFireEventIcon #fIcon
Ss0 f41 expr in #txt
Ss0 f41 outCond in.loggedIn #txt
Ss0 f41 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f41 768 126 768 188 #arcP
Ss0 f41 0 0.07272727272727272 18 0 #arcLabel
Ss0 f36 expr out #txt
Ss0 f36 768 212 768 236 #arcP
Ss0 f42 expr out #txt
Ss0 f42 712 172 750 238 #arcP
Ss0 f42 1 712 216 #addKink
Ss0 f42 0 0.9681871712149023 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f5 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f6 mainOut f10 tail #connect
Ss0 f10 head f8 mainIn #connect
Ss0 f7 mainOut f11 tail #connect
Ss0 f11 head f8 mainIn #connect
Ss0 f3 mainOut f15 tail #connect
Ss0 f15 head f14 mainIn #connect
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f14 mainIn #connect
Ss0 f21 mainOut f24 tail #connect
Ss0 f24 head f23 mainIn #connect
Ss0 f20 mainOut f25 tail #connect
Ss0 f25 head f2 in #connect
Ss0 f2 out f28 tail #connect
Ss0 f28 head f27 mainIn #connect
Ss0 f27 mainOut f26 tail #connect
Ss0 f26 head f23 mainIn #connect
Ss0 f13 mainOut f30 tail #connect
Ss0 f30 head f29 mainIn #connect
Ss0 f29 mainOut f19 tail #connect
Ss0 f19 head f18 mainIn #connect
Ss0 f32 mainOut f35 tail #connect
Ss0 f35 head f31 mainIn #connect
Ss0 f12 mainOut f16 tail #connect
Ss0 f16 head f33 in #connect
Ss0 f37 head f34 mainIn #connect
Ss0 f2 out f39 tail #connect
Ss0 f39 head f17 mainIn #connect
Ss0 f17 mainOut f22 tail #connect
Ss0 f22 head f21 mainIn #connect
Ss0 f14 mainOut f40 tail #connect
Ss0 f40 head f17 mainIn #connect
Ss0 f33 out f41 tail #connect
Ss0 f41 head f1 mainIn #connect
Ss0 f33 out f37 tail #connect
Ss0 f1 mainOut f36 tail #connect
Ss0 f36 head f32 mainIn #connect
Ss0 f34 mainOut f42 tail #connect
Ss0 f42 head f32 mainIn #connect
