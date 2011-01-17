[Ivy]
[>Created: Thu Feb 28 16:08:27 CET 2008]
116CE8453A588CA4 3.10 #module
>Proto >Proto Collection #zClass
Rs0 RoleSelectProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 guid 116CE857DEACD750 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
Rs0 f0 method start() #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 86 110 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 f1 type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
Rs0 f1 83 275 26 26 14 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 @RichDialogProcessStep f3 '' #zField
Rs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 actionCode 'java.util.List rolesListTmp = ivy.wf.getSecurityContext().getRoles();
out.rolesList.clear();
out.rolesList.addAll(rolesListTmp);' #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Rs0 f3 78 172 36 24 20 -2 #rect
Rs0 f3 @|RichDialogProcessStepIcon #fIcon
Rs0 @PushWFArc f4 '' #zField
Rs0 f4 expr out #txt
Rs0 f4 96 130 96 172 #arcP
Rs0 @PushWFArc f2 '' #zField
Rs0 f2 expr out #txt
Rs0 f2 96 196 96 275 #arcP
Rs0 @RichDialogMethodStart f5 '' #zField
Rs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelected()</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f5 guid 116CEF65286DD8FE #txt
Rs0 f5 type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
Rs0 f5 method getSelected() #txt
Rs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f5 outParameterDecl '<ch.ivyteam.ivy.security.IRole aRole> result;
' #txt
Rs0 f5 outParameterMapAction 'result.aRole=panel.rolesComboBox.getSelectedListEntry() as ch.ivyteam.ivy.security.IRole;
' #txt
Rs0 f5 190 110 20 20 13 0 #rect
Rs0 f5 @|RichDialogMethodStartIcon #fIcon
Rs0 @RichDialogProcessEnd f6 '' #zField
Rs0 f6 type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
Rs0 f6 187 275 26 26 14 0 #rect
Rs0 f6 @|RichDialogProcessEndIcon #fIcon
Rs0 @PushWFArc f7 '' #zField
Rs0 f7 expr out #txt
Rs0 f7 200 130 200 275 #arcP
Rs0 f0 mainOut f4 tail #connect
Rs0 f4 head f3 mainIn #connect
Rs0 f3 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f5 mainOut f7 tail #connect
Rs0 f7 head f6 mainIn #connect
>Proto Rs0 Rs0 RoleSelectProcess #zField
>Proto Rs0 .rdData2UIAction 'panel.rolesComboBox.listData=in.rolesList;
' #txt
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.common.RoleSelect.RoleSelectData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
