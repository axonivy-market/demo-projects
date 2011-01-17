[Ivy]
[>Created: Wed Jul 28 00:14:40 CEST 2010]
128B577C874984E4 3.12 #module
>Proto >Proto Collection #zClass
Us0 UserSessionHeaderProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @AnnotationInP-0n ai ai #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @RichDialogProcessStart f13 '' #zField
Us0 @RichDialogFireEvent f14 '' #zField
Us0 @PushWFArc f15 '' #zField
Us0 @RichDialogProcessEnd f16 '' #zField
Us0 @PushWFArc f17 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogProcessEnd f4 '' #zField
Us0 @RichDialogFireEvent f6 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @RichDialogProcessStart f8 '' #zField
Us0 @RichDialogFireEvent f9 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @RichDialogProcessEnd f11 '' #zField
Us0 @PushWFArc f12 '' #zField
>Proto Us0 Us0 UserSessionHeaderProcess #zField
Us0 f0 guid 128B577C893B428D #txt
Us0 f0 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f0 method start() #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Us0 f0 90 40 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f1 90 190 20 20 13 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f2 expr out #txt
Us0 f2 100 60 100 190 #arcP
Us0 f13 guid 128B57E185C709EF #txt
Us0 f13 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData out;
' #txt
Us0 f13 actionTable 'out=in;
' #txt
Us0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showWorkflowUIUserGuideRequested</name>
        <nameStyle>32,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f13 446 38 20 20 13 0 #rect
Us0 f13 @|RichDialogProcessStartIcon #fIcon
Us0 f14 actionCode panel.fireShowWorkflowUIUserGuideRequested(); #txt
Us0 f14 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f14 fireEvent showWorkflowUIUserGuideRequested() #txt
Us0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire
showWorkflowUIUserGuideRequested</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f14 438 116 36 24 20 -2 #rect
Us0 f14 @|RichDialogFireEventIcon #fIcon
Us0 f15 expr out #txt
Us0 f15 456 58 456 116 #arcP
Us0 f16 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f16 446 190 20 20 13 0 #rect
Us0 f16 @|RichDialogProcessEndIcon #fIcon
Us0 f17 expr out #txt
Us0 f17 456 140 456 190 #arcP
Us0 f3 guid 128DEABFB96DDB10 #txt
Us0 f3 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showAboutRequested</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 254 38 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f4 254 190 20 20 13 0 #rect
Us0 f4 @|RichDialogProcessEndIcon #fIcon
Us0 f6 actionCode panel.fireShowAboutRequested(); #txt
Us0 f6 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f6 fireEvent showAboutRequested() #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire
showAboutRequested</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 246 124 36 24 20 -2 #rect
Us0 f6 @|RichDialogFireEventIcon #fIcon
Us0 f7 expr out #txt
Us0 f7 264 58 264 124 #arcP
Us0 f5 expr out #txt
Us0 f5 264 148 264 190 #arcP
Us0 f8 guid 12A15F835E9601CE #txt
Us0 f8 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData out;
' #txt
Us0 f8 actionTable 'out=in;
' #txt
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showSettingsRequested</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 726 38 20 20 13 0 #rect
Us0 f8 @|RichDialogProcessStartIcon #fIcon
Us0 f9 actionCode panel.fireShowSettingsRequested(); #txt
Us0 f9 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f9 fireEvent showSettingsRequested() #txt
Us0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire
showSettingsRequested</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f9 718 132 36 24 20 -2 #rect
Us0 f9 @|RichDialogFireEventIcon #fIcon
Us0 f10 expr out #txt
Us0 f10 736 58 736 132 #arcP
Us0 f11 type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
Us0 f11 726 198 20 20 13 0 #rect
Us0 f11 @|RichDialogProcessEndIcon #fIcon
Us0 f12 expr out #txt
Us0 f12 736 156 736 198 #arcP
>Proto Us0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>200</swimlaneSize>
    <swimlaneSize>694</swimlaneSize>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-6684673</swimlaneColor>
</elementInfo>
' #txt
>Proto Us0 .type ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f0 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f13 mainOut f15 tail #connect
Us0 f15 head f14 mainIn #connect
Us0 f14 mainOut f17 tail #connect
Us0 f17 head f16 mainIn #connect
Us0 f3 mainOut f7 tail #connect
Us0 f7 head f6 mainIn #connect
Us0 f6 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f8 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f9 mainOut f12 tail #connect
Us0 f12 head f11 mainIn #connect
