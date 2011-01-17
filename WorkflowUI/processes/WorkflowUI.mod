[Ivy]
[>Created: Mon Jan 17 13:30:20 CET 2011]
128BA95BFF41EBC6 3.15 #module
>Proto >Proto Collection #zClass
WI0 WorkflowUI Big #zClass
WI0 B #cInfo
WI0 #process
WI0 @MessageFlowInP-0n messageIn messageIn #zField
WI0 @MessageFlowOutP-0n messageOut messageOut #zField
WI0 @TextInP .resExport .resExport #zField
WI0 @TextInP .type .type #zField
WI0 @TextInP .processKind .processKind #zField
WI0 @AnnotationInP-0n ai ai #zField
WI0 @TextInP .xml .xml #zField
WI0 @TextInP .responsibility .responsibility #zField
WI0 @Alternative f7 '' #zField
WI0 @EndTask f1 '' #zField
WI0 @RichDialog f26 '' #zField
WI0 @StartRequest f0 '' #zField
WI0 @RichDialog f5 '' #zField
WI0 @Alternative f16 '' #zField
WI0 @PushWFArc f8 '' #zField
WI0 @PushWFArc f10 '' #zField
WI0 @PushWFArc f9 '' #zField
WI0 @PushWFArc f6 '' #zField
WI0 @PushWFArc f33 '' #zField
WI0 @PushWFArc f4 '' #zField
WI0 @PushWFArc f3 '' #zField
>Proto WI0 WI0 WorkflowUI #zField
WI0 f7 type workflowui.Data #txt
WI0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authetification
successful?</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f7 178 274 28 28 14 0 #rect
WI0 f7 @|AlternativeIcon #fIcon
WI0 f1 type workflowui.Data #txt
WI0 f1 179 419 26 26 14 0 #rect
WI0 f1 @|EndIcon #fIcon
WI0 f26 targetWindow NEW:workflowUIWindow: #txt
WI0 f26 targetDisplay TOP #txt
WI0 f26 richDialogId ch.ivyteam.ivy.workflow.ui.Application #txt
WI0 f26 startMethod start() #txt
WI0 f26 type workflowui.Data #txt
WI0 f26 panelName <%=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/flow")%> #txt
WI0 f26 requestActionDecl '<> param;' #txt
WI0 f26 requestActionCode '// prepare the window title
in.windowTitle = "Xpert.Ivy WorkflowUI " + " - " + 
									ivy.request.getApplication().getName() + (ivy.session.getActiveEnvironment() is initialized? " - " + ivy.session.getActiveEnvironment(): " - Default") + " - " + 
									ivy.session.getSessionUserName();' #txt
WI0 f26 responseActionDecl 'workflowui.Data out;
' #txt
WI0 f26 responseMappingAction 'out=in;
' #txt
WI0 f26 windowConfiguration '{/title "<%=in.windowTitle%>"/width 1280 /height 1024 /centered true /resizable true /maximized true /close_after_last_rd true }' #txt
WI0 f26 isAsynch false #txt
WI0 f26 isInnerRd false #txt
WI0 f26 isDialog false #txt
WI0 f26 userContext '* ' #txt
WI0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Workflow UI
as Workflow tab</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f26 174 348 36 24 19 -2 #rect
WI0 f26 @|RichDialogIcon #fIcon
WI0 f0 outLink start.ivp #txt
WI0 f0 type workflowui.Data #txt
WI0 f0 actionDecl 'workflowui.Data out;' #txt
WI0 f0 requestEnabled true #txt
WI0 f0 triggerEnabled false #txt
WI0 f0 callSignature start() #txt
WI0 f0 startDescription 'It loads WorkflowUI application and then gives you a possibility to start a processes, 
create cases and work on the tasks' #txt
WI0 f0 taskData '#
#Mon Jan 17 10:06:42 CET 2011
.DESC=It loads WorkflowUI application and then gives you a possibility to start a processes, \ncreate cases and work on the tasks
.NAM=
' #txt
WI0 f0 caseData '#
#Fri May 21 13:18:58 CEST 2010
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
businessObject.name=
type.code=
businessObject.code=
correspondent.id=
case.name=
mainContact.folder.id=
subType.name=
case.description=
' #txt
WI0 f0 showInStartList 1 #txt
WI0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f0 @C|.responsibility Everybody #txt
WI0 f0 179 83 26 26 14 0 #rect
WI0 f0 @|StartRequestIcon #fIcon
WI0 f5 targetWindow NEW:card: #txt
WI0 f5 targetDisplay TOP #txt
WI0 f5 richDialogId ch.ivyteam.ivy.addons.commondialogs.LoginDialog #txt
WI0 f5 startMethod loginAndSelectSessionLanguageAndEnvironment() #txt
WI0 f5 type workflowui.Data #txt
WI0 f5 panelName 'Xpert.Ivy Workflow UI' #txt
WI0 f5 requestActionDecl '<> param;' #txt
WI0 f5 responseActionDecl 'workflowui.Data out;
' #txt
WI0 f5 responseMappingAction 'out=in;
out.authentificationSuccessful=result.successful;
' #txt
WI0 f5 windowConfiguration '{/title "Xpert.Ivy Workflow UI"/width 400 /height 230 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
WI0 f5 isAsynch false #txt
WI0 f5 isInnerRd false #txt
WI0 f5 isDialog false #txt
WI0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load login dialog with
languages and environments</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f5 174 212 36 24 20 -2 #rect
WI0 f5 @|RichDialogIcon #fIcon
WI0 f16 type workflowui.Data #txt
WI0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>session already exists?</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f16 178 146 28 28 14 0 #rect
WI0 f16 @|AlternativeIcon #fIcon
WI0 f8 expr out #txt
WI0 f8 192 236 192 274 #arcP
WI0 f10 expr out #txt
WI0 f10 192 109 192 146 #arcP
WI0 f9 expr in #txt
WI0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f9 206 288 204 431 #arcP
WI0 f9 1 320 288 #addKink
WI0 f9 2 320 424 #addKink
WI0 f9 1 0.37766740611561894 0 0 #arcLabel
WI0 f6 expr in #txt
WI0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f6 192 174 192 212 #arcP
WI0 f33 expr out #txt
WI0 f33 192 372 192 419 #arcP
WI0 f4 expr in #txt
WI0 f4 outCond 'ivy.session.getSessionUser() is initialized' #txt
WI0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f4 178 160 174 355 #arcP
WI0 f4 1 104 160 #addKink
WI0 f4 2 104 336 #addKink
WI0 f4 1 0.4132900674778645 0 0 #arcLabel
WI0 f3 expr in #txt
WI0 f3 outCond in.authentificationSuccessful #txt
WI0 f3 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f3 192 302 192 348 #arcP
>Proto WI0 .type workflowui.Data #txt
>Proto WI0 .processKind NORMAL #txt
>Proto WI0 0 0 32 24 18 0 #rect
>Proto WI0 @|BIcon #fIcon
WI0 f5 mainOut f8 tail #connect
WI0 f8 head f7 in #connect
WI0 f0 mainOut f10 tail #connect
WI0 f10 head f16 in #connect
WI0 f9 head f1 mainIn #connect
WI0 f6 head f5 mainIn #connect
WI0 f26 mainOut f33 tail #connect
WI0 f33 head f1 mainIn #connect
WI0 f16 out f4 tail #connect
WI0 f4 head f26 mainIn #connect
WI0 f16 out f6 tail #connect
WI0 f7 out f3 tail #connect
WI0 f3 head f26 mainIn #connect
WI0 f7 out f9 tail #connect
