[Ivy]
[>Created: Wed Aug 03 14:54:11 CEST 2011]
12D9821DFCC25F93 3.17 #module
>Proto >Proto Collection #zClass
Ws0 WorkflowUIStartServices Big #zClass
Ws0 B #cInfo
Ws0 #process
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @StartSub f0 '' #zField
Ws0 @EndSub f1 '' #zField
Ws0 @RichDialog f26 '' #zField
Ws0 @Alternative f7 '' #zField
Ws0 @RichDialog f5 '' #zField
Ws0 @Alternative f16 '' #zField
Ws0 @PushWFArc f8 '' #zField
Ws0 @PushWFArc f6 '' #zField
Ws0 @PushWFArc f4 '' #zField
Ws0 @PushWFArc f3 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @PushWFArc f9 '' #zField
Ws0 @PushWFArc f10 '' #zField
>Proto Ws0 Ws0 WorkflowUIStartServices #zField
Ws0 f0 outParamDecl '<java.lang.Boolean authentificationSuccessful> result;
' #txt
Ws0 f0 outParamTable 'result.authentificationSuccessful=in.authentificationSuccessful;
' #txt
Ws0 f0 actionDecl 'workflowui.Data out;
' #txt
Ws0 f0 callSignature call() #txt
Ws0 f0 type workflowui.Data #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 195 27 26 26 14 0 #rect
Ws0 f0 @|StartSubIcon #fIcon
Ws0 f1 type workflowui.Data #txt
Ws0 f1 195 331 26 26 14 0 #rect
Ws0 f1 @|EndSubIcon #fIcon
Ws0 f26 targetWindow NEW:workflowUIWindow: #txt
Ws0 f26 targetDisplay TOP #txt
Ws0 f26 richDialogId ch.ivyteam.ivy.workflow.ui.Application #txt
Ws0 f26 startMethod start() #txt
Ws0 f26 type workflowui.Data #txt
Ws0 f26 panelName <%=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/flow")%> #txt
Ws0 f26 requestActionDecl '<> param;' #txt
Ws0 f26 requestActionCode '// prepare the window title
in.windowTitle = "Xpert.Ivy WorkflowUI " + " - " + 
									ivy.request.getApplication().getName() + (ivy.session.getActiveEnvironment() is initialized? " - " + ivy.session.getActiveEnvironment(): " - Default") + " - " + 
									ivy.session.getSessionUserName();' #txt
Ws0 f26 responseActionDecl 'workflowui.Data out;
' #txt
Ws0 f26 responseMappingAction 'out=in;
' #txt
Ws0 f26 windowConfiguration '{/title "<%=in.windowTitle%>"/width 1280 /height 975 /centered true /resizable true /maximized true /close_after_last_rd true }' #txt
Ws0 f26 isAsynch false #txt
Ws0 f26 isInnerRd false #txt
Ws0 f26 isDialog false #txt
Ws0 f26 userContext '* ' #txt
Ws0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Workflow UI
as Workflow tab</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f26 190 276 36 24 19 -2 #rect
Ws0 f26 @|RichDialogIcon #fIcon
Ws0 f7 type workflowui.Data #txt
Ws0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authetification
successful?</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f7 194 202 28 28 14 0 #rect
Ws0 f7 @|AlternativeIcon #fIcon
Ws0 f5 targetWindow NEW:card: #txt
Ws0 f5 targetDisplay TOP #txt
Ws0 f5 richDialogId ch.ivyteam.ivy.addons.commondialogs.LoginDialog #txt
Ws0 f5 startMethod loginAndSelectSessionLanguageAndEnvironment() #txt
Ws0 f5 type workflowui.Data #txt
Ws0 f5 requestActionDecl '<> param;' #txt
Ws0 f5 responseActionDecl 'workflowui.Data out;
' #txt
Ws0 f5 responseMappingAction 'out=in;
out.authentificationSuccessful=result.successful;
' #txt
Ws0 f5 windowConfiguration '{/title "Xpert.Ivy Workflow UI"/width 400 /height 230 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
Ws0 f5 isAsynch false #txt
Ws0 f5 isInnerRd false #txt
Ws0 f5 isDialog false #txt
Ws0 f5 userContext '* ' #txt
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load login dialog with
languages and environments</name>
        <nameStyle>49,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f5 190 148 36 24 20 -2 #rect
Ws0 f5 @|RichDialogIcon #fIcon
Ws0 f16 type workflowui.Data #txt
Ws0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>session already exists?</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f16 194 82 28 28 14 0 #rect
Ws0 f16 @|AlternativeIcon #fIcon
Ws0 f8 expr out #txt
Ws0 f8 208 172 208 202 #arcP
Ws0 f6 expr in #txt
Ws0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f6 208 110 208 148 #arcP
Ws0 f4 expr in #txt
Ws0 f4 outCond 'ivy.session.getSessionUser() is initialized' #txt
Ws0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f4 194 96 190 286 #arcP
Ws0 f4 1 136 96 #addKink
Ws0 f4 2 136 280 #addKink
Ws0 f4 1 0.2896296974715964 0 0 #arcLabel
Ws0 f3 expr in #txt
Ws0 f3 outCond in.authentificationSuccessful #txt
Ws0 f3 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f3 208 230 208 276 #arcP
Ws0 f2 expr out #txt
Ws0 f2 208 53 208 82 #arcP
Ws0 f9 expr out #txt
Ws0 f9 208 300 208 331 #arcP
Ws0 f10 expr in #txt
Ws0 f10 222 216 220 343 #arcP
Ws0 f10 1 328 216 #addKink
Ws0 f10 2 328 336 #addKink
Ws0 f10 1 0.2694364631001321 0 0 #arcLabel
>Proto Ws0 .type workflowui.Data #txt
>Proto Ws0 .processKind CALLABLE_SUB #txt
>Proto Ws0 0 0 32 24 18 0 #rect
>Proto Ws0 @|BIcon #fIcon
Ws0 f5 mainOut f8 tail #connect
Ws0 f8 head f7 in #connect
Ws0 f6 head f5 mainIn #connect
Ws0 f16 out f4 tail #connect
Ws0 f4 head f26 mainIn #connect
Ws0 f16 out f6 tail #connect
Ws0 f7 out f3 tail #connect
Ws0 f3 head f26 mainIn #connect
Ws0 f0 mainOut f2 tail #connect
Ws0 f2 head f16 in #connect
Ws0 f26 mainOut f9 tail #connect
Ws0 f9 head f1 mainIn #connect
Ws0 f7 out f10 tail #connect
Ws0 f10 head f1 mainIn #connect
