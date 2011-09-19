[Ivy]
[>Created: Mon Sep 19 10:47:14 CEST 2011]
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
Ws0 @InfoButton f11 '' #zField
Ws0 @AnnotationArc f12 '' #zField
Ws0 @StartSub f14 '' #zField
Ws0 @EndSub f15 '' #zField
Ws0 @RichDialog f17 '' #zField
Ws0 @Alternative f19 '' #zField
Ws0 @PushWFArc f22 '' #zField
Ws0 @PushWFArc f24 '' #zField
Ws0 @PushWFArc f25 '' #zField
Ws0 @PushWFArc f30 '' #zField
Ws0 @InfoButton f13 '' #zField
Ws0 @AnnotationArc f18 '' #zField
>Proto Ws0 Ws0 WorkflowUIStartServices #zField
Ws0 f0 outParamDecl '<java.lang.Boolean authentificationSuccessful> result;
' #txt
Ws0 f0 outParamTable 'result.authentificationSuccessful=in.authentificationSuccessful;
' #txt
Ws0 f0 actionDecl 'workflowui.Data out;
' #txt
Ws0 f0 callSignature startInStandaloneMode() #txt
Ws0 f0 type workflowui.Data #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startInStandaloneMode()</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 99 123 26 26 14 0 #rect
Ws0 f0 @|StartSubIcon #fIcon
Ws0 f1 type workflowui.Data #txt
Ws0 f1 99 427 26 26 14 0 #rect
Ws0 f1 @|EndSubIcon #fIcon
Ws0 f26 targetWindow NEW:standaloneWorkflowUIWindow: #txt
Ws0 f26 targetDisplay TOP #txt
Ws0 f26 richDialogId ch.ivyteam.ivy.workflow.ui.Application #txt
Ws0 f26 startMethod start(Boolean) #txt
Ws0 f26 type workflowui.Data #txt
Ws0 f26 panelName <%=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/flow")%> #txt
Ws0 f26 requestActionDecl '<Boolean standAloneMode> param;' #txt
Ws0 f26 requestActionCode 'param.standAloneMode = true;

// prepare the window title
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
Ws0 f26 94 372 36 24 19 -2 #rect
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
Ws0 f7 98 298 28 28 14 0 #rect
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
Ws0 f5 94 244 36 24 20 -2 #rect
Ws0 f5 @|RichDialogIcon #fIcon
Ws0 f16 type workflowui.Data #txt
Ws0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user is already logged in?</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f16 98 178 28 28 14 0 #rect
Ws0 f16 @|AlternativeIcon #fIcon
Ws0 f8 expr out #txt
Ws0 f8 112 268 112 298 #arcP
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
Ws0 f6 112 206 112 244 #arcP
Ws0 f4 expr in #txt
Ws0 f4 outCond !ivy.session.isSessionUserUnknown() #txt
Ws0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f4 98 192 94 382 #arcP
Ws0 f4 1 40 192 #addKink
Ws0 f4 2 40 376 #addKink
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
Ws0 f3 112 326 112 372 #arcP
Ws0 f2 expr out #txt
Ws0 f2 112 149 112 178 #arcP
Ws0 f9 expr out #txt
Ws0 f9 112 396 112 427 #arcP
Ws0 f10 expr in #txt
Ws0 f10 126 312 124 439 #arcP
Ws0 f10 1 232 312 #addKink
Ws0 f10 2 232 432 #addKink
Ws0 f10 1 0.2694364631001321 0 0 #arcLabel
Ws0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This is a standalone mode that:
- ensure that the user is logged in
- load the &quot;Application&quot; Rich Dialog on new WorkflowUIWindow

The WorkflowUIWindow will then:
- load custom tabs on center display
- load banner (default of the customized) on north display</name>
        <nameStyle>9,7
16,0,7
104,7
32,7
96,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f11 272 75 320 122 -155 -56 #rect
Ws0 f11 @|IBIcon #fIcon
Ws0 f11 -1|-1|-16777216 #nodeStyle
Ws0 f12 272 136 125 136 #arcP
Ws0 f14 inParamTable 'out.authentificationSuccessful=!ivy.session.isSessionUserUnknown();
' #txt
Ws0 f14 outParamDecl '<java.lang.Boolean authentificationSuccessful> result;
' #txt
Ws0 f14 outParamTable 'result.authentificationSuccessful=in.authentificationSuccessful;
' #txt
Ws0 f14 actionDecl 'workflowui.Data out;
' #txt
Ws0 f14 callSignature startInEmbeddedMode() #txt
Ws0 f14 type workflowui.Data #txt
Ws0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startInEmbeddedMode()</name>
    </language>
</elementInfo>
' #txt
Ws0 f14 715 123 26 26 14 0 #rect
Ws0 f14 @|StartSubIcon #fIcon
Ws0 f15 type workflowui.Data #txt
Ws0 f15 715 427 26 26 14 0 #rect
Ws0 f15 @|EndSubIcon #fIcon
Ws0 f17 targetWindow NEW:tabbed: #txt
Ws0 f17 targetDisplay TOP #txt
Ws0 f17 richDialogId ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow #txt
Ws0 f17 startMethod start() #txt
Ws0 f17 type workflowui.Data #txt
Ws0 f17 panelName 'Temp tab' #txt
Ws0 f17 requestActionDecl '<> param;' #txt
Ws0 f17 requestActionCode '// prepare the window title
in.windowTitle = "Xpert.Ivy WorkflowUI " + " - " + 
									ivy.request.getApplication().getName() + (ivy.session.getActiveEnvironment() is initialized? " - " + ivy.session.getActiveEnvironment(): " - Default") + " - " + 
									ivy.session.getSessionUserName();' #txt
Ws0 f17 responseActionDecl 'workflowui.Data out;
' #txt
Ws0 f17 responseMappingAction 'out=in;
' #txt
Ws0 f17 windowConfiguration '* ' #txt
Ws0 f17 isAsynch false #txt
Ws0 f17 isInnerRd false #txt
Ws0 f17 isDialog false #txt
Ws0 f17 userContext '* ' #txt
Ws0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Workflow UI</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f17 710 372 36 24 19 -2 #rect
Ws0 f17 @|RichDialogIcon #fIcon
Ws0 f19 type workflowui.Data #txt
Ws0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user is already logged in?</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f19 714 178 28 28 14 0 #rect
Ws0 f19 @|AlternativeIcon #fIcon
Ws0 f22 expr in #txt
Ws0 f22 outCond !ivy.session.isSessionUserUnknown() #txt
Ws0 f22 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f22 728 206 728 372 #arcP
Ws0 f22 0 0.43844096528022913 0 0 #arcLabel
Ws0 f24 expr out #txt
Ws0 f24 728 149 728 178 #arcP
Ws0 f25 expr out #txt
Ws0 f25 728 396 728 427 #arcP
Ws0 f30 expr in #txt
Ws0 f30 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f30 742 192 740 436 #arcP
Ws0 f30 1 824 192 #addKink
Ws0 f30 2 824 416 #addKink
Ws0 f30 1 0.42292548290683946 0 0 #arcLabel
Ws0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This is embedded mode where:
- the caller must ensure that the user is logged in
- only the &quot;Application&quot; Rich Dialog is loaded in new card window

Since the WorkflowUIWindow is not loaded, the caller must find the way 
to provide to the end user the settings and user guide.</name>
        <nameStyle>8,7
13,0,7
254,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f13 880 83 401 106 -195 -48 #rect
Ws0 f13 @|IBIcon #fIcon
Ws0 f13 -1|-1|-16777216 #nodeStyle
Ws0 f18 879 136 741 136 #arcP
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
Ws0 f11 ao f12 tail #connect
Ws0 f12 head f0 @CG|ai #connect
Ws0 f19 out f22 tail #connect
Ws0 f22 head f17 mainIn #connect
Ws0 f14 mainOut f24 tail #connect
Ws0 f24 head f19 in #connect
Ws0 f17 mainOut f25 tail #connect
Ws0 f25 head f15 mainIn #connect
Ws0 f19 out f30 tail #connect
Ws0 f30 head f15 mainIn #connect
Ws0 f13 ao f18 tail #connect
Ws0 f18 head f14 @CG|ai #connect
