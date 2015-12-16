[Ivy]
[>Created: Wed Dec 16 11:55:41 CET 2015]
1518C54D1ABA9862 3.18 #module
>Proto >Proto Collection #zClass
Ts0 TaskListAdminProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TaskListAdminProcess #zField
Ts0 f0 guid 13EE9A482C1E853B #txt
Ts0 f0 type ch.ivyteam.wf.admin.TaskListAdmin.TaskListAdminData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -16 12 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 type ch.ivyteam.wf.admin.TaskListAdmin.TaskListAdminData #txt
Ts0 f1 283 51 26 26 0 12 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f2 expr out #txt
Ts0 f2 109 64 283 64 #arcP
>Proto Ts0 .type ch.ivyteam.wf.admin.TaskListAdmin.TaskListAdminData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
