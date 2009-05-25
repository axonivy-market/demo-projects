[Ivy]
[>Created: Tue Jul 22 13:10:42 CEST 2008]
11B4A6EB9733FE7C 3.10 #module
>Proto >Proto Collection #zClass
Ps0 PermissionDeniedDisplayMessageProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 f0 guid 11B4A6EBA1F1A104 #txt
Ps0 f0 type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 90 40 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 f1 type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
Ps0 f1 83 283 26 26 14 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 @PushWFArc f2 '' #zField
Ps0 f2 expr out #txt
Ps0 f2 99 59 96 283 #arcP
Ps0 @RichDialogMethodStart f3 '' #zField
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayPermissionDeniedMessage(IPermission)</name>
        <nameStyle>43,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 guid 11B4A73E80C8B59C #txt
Ps0 f3 type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
Ps0 f3 method displayPermissionDeniedMessage(ch.ivyteam.ivy.security.IPermission) #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IPermission aPermission> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 inParameterMapAction 'out.permissionDeniedDisplayMessage.permission=param.aPermission;
' #txt
Ps0 f3 outParameterDecl '<> result;
' #txt
Ps0 f3 262 46 20 20 13 0 #rect
Ps0 f3 @|RichDialogMethodStartIcon #fIcon
Ps0 @GridStep f5 '' #zField
Ps0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 actionCode 'out.permissionDeniedDisplayMessage.title = "''" + in.permissionDeniedDisplayMessage.permission.getName() + "'' " + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/permissionDeniedTitle");
out.permissionDeniedDisplayMessage.text = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/permissionDeniedText");' #txt
Ps0 f5 type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get the title
and text
from cms</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 254 116 36 24 20 -2 #rect
Ps0 f5 @|StepIcon #fIcon
Ps0 @PushWFArc f6 '' #zField
Ps0 f6 expr out #txt
Ps0 f6 272 66 272 116 #arcP
Ps0 @RichDialog f174 '' #zField
Ps0 f174 targetWindow NEW #txt
Ps0 f174 targetDisplay TOP #txt
Ps0 f174 richDialogId ch.ivyteam.ivy.richdialog.common.dialogs.MessageDialog #txt
Ps0 f174 startMethod showMessageWithTitle(String,String) #txt
Ps0 f174 type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
Ps0 f174 panelName <%=in.title%> #txt
Ps0 f174 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Ps0 f174 requestMappingAction 'param.aMessageTitle=in.permissionDeniedDisplayMessage.title;
param.aMessageText=in.permissionDeniedDisplayMessage.text;
' #txt
Ps0 f174 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData out;
' #txt
Ps0 f174 responseMappingAction 'out=in;
' #txt
Ps0 f174 windowConfiguration '#Tue Jul 22 13:10:40 CEST 2008
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=0
title=<%\\=in.title%>
' #txt
Ps0 f174 isAsynch false #txt
Ps0 f174 isInnerRd true #txt
Ps0 f174 isDialog true #txt
Ps0 f174 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>infom the user
permission denied</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f174 254 196 36 24 20 -2 #rect
Ps0 f174 @|RichDialogIcon #fIcon
Ps0 @PushWFArc f7 '' #zField
Ps0 f7 expr out #txt
Ps0 f7 272 140 272 196 #arcP
Ps0 @PushWFArc f4 '' #zField
Ps0 f4 expr out #txt
Ps0 f4 272 220 109 296 #arcP
Ps0 f4 1 272 296 #addKink
Ps0 f4 1 0.3380319463098626 0 0 #arcLabel
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f5 mainOut f7 tail #connect
Ps0 f7 head f174 mainIn #connect
Ps0 f174 mainOut f4 tail #connect
Ps0 f4 head f1 mainIn #connect
>Proto Ps0 Ps0 PermissionDeniedDisplayMessageProcess #zField
>Proto Ps0 .type ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage.PermissionDeniedDisplayMessageData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
