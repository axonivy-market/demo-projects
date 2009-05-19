[Ivy]
[>Created: Mon Oct 13 14:32:25 CEST 2008]
11CF5FAA2C12CD59 3.10 #module
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
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 guid 11CF5FAA35D6FCB2 #txt
Ss0 f0 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.userName=ivy.session.getSessionUserName();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/Images/le_chat\";\nparam.title=\"Le Chat\";\nparam.subtitle=\"A simple chat application\";\n"/initScript "\""}}' #txt
Ss0 f0 94 30 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 f1 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f1 91 163 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 @RichDialogInitStart f3 '' #zField
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithName(String)</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 11CF6012AF837E31 #txt
Ss0 f3 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f3 method startWithName(String) #txt
Ss0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name> param = methodEvent.getInputArguments();
' #txt
Ss0 f3 inParameterMapAction 'out.userName=param.name;
' #txt
Ss0 f3 outParameterDecl '<> result;
' #txt
Ss0 f3 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/Images/le_chat\";\nparam.title=\"Le Chat\";\nparam.subtitle=\"Chat with other users, your name is: \"+callParam.name;\n"/initScript ""}}' #txt
Ss0 f3 126 70 20 20 13 0 #rect
Ss0 f3 @|RichDialogInitStartIcon #fIcon
Ss0 @RichDialogBroadcastStart f5 '' #zField
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
Ss0 f5 86 222 20 20 13 0 #rect
Ss0 f5 @|RichDialogBroadcastStartIcon #fIcon
Ss0 @RichDialogBroadcastStart f6 '' #zField
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
Ss0 f6 86 286 20 20 13 0 #rect
Ss0 f6 @|RichDialogBroadcastStartIcon #fIcon
Ss0 @RichDialogBroadcastStart f7 '' #zField
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
Ss0 @RichDialogProcessEnd f8 '' #zField
Ss0 f8 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f8 27 387 26 26 14 0 #rect
Ss0 f8 @|RichDialogProcessEndIcon #fIcon
Ss0 @PushWFArc f9 '' #zField
Ss0 f9 expr out #txt
Ss0 f9 86 232 40 387 #arcP
Ss0 f9 1 40 232 #addKink
Ss0 f9 1 0.40011069413766054 0 0 #arcLabel
Ss0 @PushWFArc f10 '' #zField
Ss0 f10 expr out #txt
Ss0 f10 86 296 40 387 #arcP
Ss0 f10 1 40 296 #addKink
Ss0 f10 1 0.2200315143785349 0 0 #arcLabel
Ss0 @PushWFArc f11 '' #zField
Ss0 f11 expr out #txt
Ss0 f11 86 360 40 387 #arcP
Ss0 f11 1 40 360 #addKink
Ss0 f11 0 0.8546594821152431 0 0 #arcLabel
Ss0 @RichDialogProcessStart f12 '' #zField
Ss0 f12 guid 11CF6157220E6E64 #txt
Ss0 f12 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f12 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 actionCode 'import ch.ivyteam.ivy.demo.chat.ChatMessage;
import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.event.SystemEvent;

// create message
ChatMessage msg;
msg.user = in.userName;
msg.msg = panel.messageTextField.text.trim();

// send event
SystemEvent event = new SystemEvent(SystemEventCategory.THIRD_PARTY, "thirdparty.ivychat.message", msg);
ivy.wf.getApplication().sendSystemEvent(event);

// clear msg text
panel.messageTextField.text = "";
panel.messageTextField.requestFocusInWindow();
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
Ss0 f12 310 30 20 20 13 0 #rect
Ss0 f12 @|RichDialogProcessStartIcon #fIcon
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 f13 guid 11CF6157BD433D8B #txt
Ss0 f13 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f13 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 actionCode 'import ch.ivyteam.ivy.demo.chat.ChatMessage;
import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.event.SystemEvent;

// create message
ChatMessage msg;
msg.user = in.userName;

// send event
SystemEvent event = new SystemEvent(SystemEventCategory.THIRD_PARTY, "thirdparty.ivychat.logoff", msg);
ivy.wf.getApplication().sendSystemEvent(event);' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log_off</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 422 30 20 20 13 0 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 @RichDialogProcessStep f14 '' #zField
Ss0 f14 actionDecl 'ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'import ch.ivyteam.ivy.demo.chat.ChatMessage;
import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.event.SystemEvent;

// register
ivy.rd.subscribeToSystemEvents(SystemEventCategory.THIRD_PARTY);

// create message
ChatMessage msg;
msg.user = in.userName;

// send event
SystemEvent event = new SystemEvent(SystemEventCategory.THIRD_PARTY, "thirdparty.ivychat.logon", msg);
ivy.wf.getApplication().sendSystemEvent(event);

' #txt
Ss0 f14 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send log_in message
register</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 86 116 36 24 25 -15 #rect
Ss0 f14 @|RichDialogProcessStepIcon #fIcon
Ss0 @PushWFArc f15 '' #zField
Ss0 f15 expr out #txt
Ss0 f15 130 88 112 116 #arcP
Ss0 @PushWFArc f4 '' #zField
Ss0 f4 expr out #txt
Ss0 f4 104 50 104 116 #arcP
Ss0 @PushWFArc f2 '' #zField
Ss0 f2 expr out #txt
Ss0 f2 104 140 104 163 #arcP
Ss0 @RichDialogProcessEnd f16 '' #zField
Ss0 f16 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f16 307 83 26 26 14 0 #rect
Ss0 f16 @|RichDialogProcessEndIcon #fIcon
Ss0 @PushWFArc f17 '' #zField
Ss0 f17 expr out #txt
Ss0 f17 320 50 320 83 #arcP
Ss0 @RichDialogEnd f20 '' #zField
Ss0 f20 type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
Ss0 f20 guid 11CF631263B57B57 #txt
Ss0 f20 419 83 26 26 14 0 #rect
Ss0 f20 @|RichDialogEndIcon #fIcon
Ss0 @PushWFArc f21 '' #zField
Ss0 f21 expr out #txt
Ss0 f21 432 50 432 83 #arcP
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
Ss0 f14 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f12 mainOut f17 tail #connect
Ss0 f17 head f16 mainIn #connect
Ss0 f13 mainOut f21 tail #connect
Ss0 f21 head f20 mainIn #connect
>Proto Ss0 Ss0 SimpleChatProcess #zField
>Proto Ss0 .type ch.ivyteam.ivy.demo.chat.SimpleChat.SimpleChatData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
