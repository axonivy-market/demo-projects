[Ivy]
[>Created: Wed Jul 08 17:37:37 CEST 2009]
117CB4CDADC9E332 3.12 #module
>Proto >Proto Collection #zClass
Ly0 LoadApplicationStaticWay Big #zClass
Ly0 B #cInfo
Ly0 #process
Ly0 @TextInP .resExport .resExport #zField
Ly0 @TextInP .type .type #zField
Ly0 @TextInP .processKind .processKind #zField
Ly0 @TextInP .xml .xml #zField
Ly0 @TextInP .responsibility .responsibility #zField
Ly0 @AnnotationInP-0n ai ai #zField
Ly0 @MessageFlowInP-0n messageIn messageIn #zField
Ly0 @MessageFlowOutP-0n messageOut messageOut #zField
Ly0 @StartRequest f0 '' #zField
Ly0 @EndTask f1 '' #zField
Ly0 @RichDialog f3 '' #zField
Ly0 @PushWFArc f2 '' #zField
Ly0 @RichDialog f5 '' #zField
Ly0 @Alternative f7 '' #zField
Ly0 @PushWFArc f8 '' #zField
Ly0 @PushWFArc f4 '' #zField
Ly0 @Alternative f16 '' #zField
Ly0 @PushWFArc f6 '' #zField
Ly0 @PushWFArc f11 '' #zField
Ly0 @PushWFArc f10 '' #zField
Ly0 @PushWFArc f9 '' #zField
>Proto Ly0 Ly0 LoadApplicationStaticWay #zField
Ly0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ly0 f0 @C|.responsibility Everybody #txt
Ly0 f0 outLink WorkflowUI.ivp #txt
Ly0 f0 type workflowui.Data #txt
Ly0 f0 template "" #txt
Ly0 f0 templateWizard '#
#Tue Aug 05 15:20:23 CEST 2008
' #txt
Ly0 f0 taskData '#
#Tue Aug 05 15:20:23 CEST 2008
.DESC=It loads WorkflowUI application and then gives you a possibility to start a processes, \ncreate cases and work on the tasks
.SHOW=1
.WFU=0
.NAM=Load WorkflowUI application
' #txt
Ly0 f0 caseData '#
#Tue Aug 05 15:20:23 CEST 2008
subType.code=
businessMilestone.timestamp=
mainContact.id=
mainContact.name=
processCategory.name=
processCategory.code=
businessPriority=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
type.code=
businessObject.name=
correspondent.id=
businessObject.code=
case.name=
mainContact.folder.id=
case.description=
subType.name=
' #txt
Ly0 f0 showInStartList 1 #txt
Ly0 f0 163 67 26 26 14 0 #rect
Ly0 f0 @|StartRequestIcon #fIcon
Ly0 f1 type workflowui.Data #txt
Ly0 f1 163 435 26 26 14 0 #rect
Ly0 f1 @|EndIcon #fIcon
Ly0 f3 targetWindow NEW:card: #txt
Ly0 f3 targetDisplay TOP #txt
Ly0 f3 richDialogId ch.ivyteam.ivy.workflow.ui.Application #txt
Ly0 f3 startMethod start() #txt
Ly0 f3 type workflowui.Data #txt
Ly0 f3 panelName 'Xpert.Ivy Workflow UI' #txt
Ly0 f3 requestActionDecl '<> param;' #txt
Ly0 f3 responseActionDecl 'workflowui.Data out;
' #txt
Ly0 f3 responseMappingAction 'out=in;
' #txt
Ly0 f3 windowConfiguration '{/title "Xpert.Ivy Workflow UI"/width 1200 /height 900 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ly0 f3 isAsynch false #txt
Ly0 f3 isInnerRd false #txt
Ly0 f3 isDialog false #txt
Ly0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Workflow UI</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ly0 f3 158 348 36 24 20 -2 #rect
Ly0 f3 @|RichDialogIcon #fIcon
Ly0 f2 expr out #txt
Ly0 f2 176 372 176 435 #arcP
Ly0 f5 targetWindow NEW #txt
Ly0 f5 targetDisplay TOP #txt
Ly0 f5 richDialogId ch.ivyteam.ivy.addons.commondialogs.LoginDialog #txt
Ly0 f5 startMethod loginAndSelectSessionLanguage() #txt
Ly0 f5 type workflowui.Data #txt
Ly0 f5 panelName 'Xpert.Ivy Workflow UI' #txt
Ly0 f5 requestActionDecl '<> param;' #txt
Ly0 f5 responseActionDecl 'workflowui.Data out;
' #txt
Ly0 f5 responseMappingAction 'out=in;
out.authentificationSuccessful=result.successful;
' #txt
Ly0 f5 windowConfiguration '#Thu May 28 16:16:06 CEST 2009
height=200
maximized=false
centered=true
close_after_last_rd=true
resizable=false
width=400
title=Xpert.Ivy Workflow UI
' #txt
Ly0 f5 isAsynch false #txt
Ly0 f5 isInnerRd false #txt
Ly0 f5 isDialog false #txt
Ly0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Workflow UI 
login dialog</name>
        <nameStyle>30,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ly0 f5 158 188 36 24 20 -2 #rect
Ly0 f5 @|RichDialogIcon #fIcon
Ly0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ly0 f7 type workflowui.Data #txt
Ly0 f7 162 258 28 28 14 0 #rect
Ly0 f7 @|AlternativeIcon #fIcon
Ly0 f8 expr out #txt
Ly0 f8 176 212 176 258 #arcP
Ly0 f4 expr in #txt
Ly0 f4 outCond in.authentificationSuccessful #txt
Ly0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authetification
successful</name>
        <nameStyle>26,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ly0 f4 176 286 176 348 #arcP
Ly0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ly0 f16 type workflowui.Data #txt
Ly0 f16 162 130 28 28 14 0 #rect
Ly0 f16 @|AlternativeIcon #fIcon
Ly0 f6 expr in #txt
Ly0 f6 outCond 'ivy.session.getSessionUser() == null' #txt
Ly0 f6 176 158 176 188 #arcP
Ly0 f11 expr in #txt
Ly0 f11 162 144 158 360 #arcP
Ly0 f11 1 96 144 #addKink
Ly0 f11 2 96 360 #addKink
Ly0 f11 1 0.5000021113616696 0 0 #arcLabel
Ly0 f10 expr out #txt
Ly0 f10 176 93 176 130 #arcP
Ly0 f9 expr in #txt
Ly0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authetification
failed</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ly0 f9 190 272 189 448 #arcP
Ly0 f9 1 296 272 #addKink
Ly0 f9 2 296 448 #addKink
Ly0 f9 1 0.2976842735771422 0 0 #arcLabel
>Proto Ly0 .processKind NORMAL #txt
>Proto Ly0 0 0 32 24 18 0 #rect
>Proto Ly0 @|BIcon #fIcon
Ly0 f3 mainOut f2 tail #connect
Ly0 f2 head f1 mainIn #connect
Ly0 f5 mainOut f8 tail #connect
Ly0 f8 head f7 in #connect
Ly0 f7 out f4 tail #connect
Ly0 f4 head f3 mainIn #connect
Ly0 f16 out f6 tail #connect
Ly0 f6 head f5 mainIn #connect
Ly0 f16 out f11 tail #connect
Ly0 f11 head f3 mainIn #connect
Ly0 f0 mainOut f10 tail #connect
Ly0 f10 head f16 in #connect
Ly0 f7 out f9 tail #connect
Ly0 f9 head f1 mainIn #connect
