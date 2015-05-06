[Ivy]
[>Created: Wed May 06 15:56:49 CEST 2015]
11EB0BDD6A32E57F 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ContactProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialog f3 '' #zField
Cs0 @RichDialog f5 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @InfoButton f11 '' #zField
Cs0 @AnnotationArc f6 '' #zField
Cs0 @InfoButton f13 '' #zField
Cs0 @AnnotationArc f7 '' #zField
Cs0 @RichDialogProcessStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @RichDialogProcessStart f10 '' #zField
Cs0 @RichDialogProcessEnd f12 '' #zField
Cs0 @RichDialog f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f17 '' #zField
>Proto Cs0 Cs0 ContactProcess #zField
Cs0 f0 guid 11EB0BDD6C22272E #txt
Cs0 f0 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.myDisplayId="contactDemo_display";
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/window_star\";\nparam.title=\"Dynamic Dialog Demo\";\nparam.subtitle=\"Dynamically creates a configurable edit mask for business objects.\";\n"/initScript ""}}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f1 83 267 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 targetWindow THIS #txt
Cs0 f3 targetDisplay EXISTING:<%=in.myDisplayId%> #txt
Cs0 f3 richDialogId ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper #txt
Cs0 f3 startMethod start(ch.ivyteam.ivy.scripting.objects.CompositeObject,List<String>) #txt
Cs0 f3 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f3 panelName 'I am configured with "SimpleContact"' #txt
Cs0 f3 requestActionDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject object, List<String> cmsContext> param;' #txt
Cs0 f3 requestMappingAction 'param.object=in.contact1;
param.cmsContext=["/dynamicDialog/configurations/SimpleContact"];
' #txt
Cs0 f3 responseActionDecl 'ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData out;
' #txt
Cs0 f3 responseMappingAction 'out=in;
' #txt
Cs0 f3 windowConfiguration '* ' #txt
Cs0 f3 isAsynch true #txt
Cs0 f3 isInnerRd true #txt
Cs0 f3 isDialog false #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open contact1 
with &quot;/SimpleContact&quot; CmsContext</name>
        <nameStyle>47,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 78 156 36 24 23 -14 #rect
Cs0 f3 @|RichDialogIcon #fIcon
Cs0 f5 targetWindow THIS #txt
Cs0 f5 targetDisplay EXISTING:<%=in.myDisplayId%> #txt
Cs0 f5 richDialogId ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper #txt
Cs0 f5 startMethod start(ch.ivyteam.ivy.scripting.objects.CompositeObject,List<String>) #txt
Cs0 f5 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f5 panelName 'I am configured with "SimpleContact2"' #txt
Cs0 f5 requestActionDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject object, List<String> cmsContext> param;' #txt
Cs0 f5 requestMappingAction 'param.object=in.contact2;
param.cmsContext=["/dynamicDialog/configurations/SimpleContact2"];
' #txt
Cs0 f5 responseActionDecl 'ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData out;
' #txt
Cs0 f5 responseMappingAction 'out=in;
' #txt
Cs0 f5 windowConfiguration '* ' #txt
Cs0 f5 isAsynch true #txt
Cs0 f5 isInnerRd true #txt
Cs0 f5 isDialog false #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open contact2
with &quot;SimpleContact2&quot; CmsContext</name>
        <nameStyle>46,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 78 212 36 24 29 -15 #rect
Cs0 f5 @|RichDialogIcon #fIcon
Cs0 f16 expr out #txt
Cs0 f16 96 180 96 212 #arcP
Cs0 f2 expr out #txt
Cs0 f2 96 236 96 267 #arcP
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Use /SimpleContact for CMS context</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 177 43 207 26 -98 -8 #rect
Cs0 f11 @|IBIcon #fIcon
Cs0 f11 -657956|-1|-16777216 #nodeStyle
Cs0 f6 176 56 105 156 #arcP
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Use /SimpleContact2 for CMS context
Inherit from /SimpleContact but override title widget type.</name>
        <nameStyle>95,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 43 323 315 42 -152 -16 #rect
Cs0 f13 @|IBIcon #fIcon
Cs0 f13 -657956|-1|-16777216 #nodeStyle
Cs0 f7 199 323 91 236 #arcP
Cs0 f8 actionDecl 'ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData out;
' #txt
Cs0 f8 actionTable 'out=in;
out.contact1.address.country="Switzerland";
out.contact2.firstName="John";
out.contact2.lastName="Doe";
' #txt
Cs0 f8 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>configure (partial) business data</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 78 100 36 24 24 -5 #rect
Cs0 f8 @|RichDialogProcessStepIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 96 58 96 100 #arcP
Cs0 f4 expr out #txt
Cs0 f4 96 124 96 156 #arcP
Cs0 f10 guid 12B7C46588B1F6EF #txt
Cs0 f10 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f10 actionDecl 'ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>launchManager</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 462 70 20 20 13 0 #rect
Cs0 f10 @|RichDialogProcessStartIcon #fIcon
Cs0 f12 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f12 462 238 20 20 13 0 #rect
Cs0 f12 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 targetWindow NEW:card: #txt
Cs0 f14 targetDisplay TOP #txt
Cs0 f14 richDialogId ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager #txt
Cs0 f14 startMethod start() #txt
Cs0 f14 type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
Cs0 f14 requestActionDecl '<> param;' #txt
Cs0 f14 responseActionDecl 'ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData out;
' #txt
Cs0 f14 responseMappingAction 'out=in;
' #txt
Cs0 f14 windowConfiguration '* ' #txt
Cs0 f14 isAsynch true #txt
Cs0 f14 isInnerRd true #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start DynamicDialogManager</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 454 132 36 24 20 -2 #rect
Cs0 f14 @|RichDialogIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 472 90 472 132 #arcP
Cs0 f17 expr out #txt
Cs0 f17 472 156 472 238 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.demo.dynamicrd.ContactDemo.ContactDemoData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f16 tail #connect
Cs0 f16 head f5 mainIn #connect
Cs0 f5 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f11 ao f6 tail #connect
Cs0 f6 head f3 @CG|ai #connect
Cs0 f13 ao f7 tail #connect
Cs0 f7 head f5 @CG|ai #connect
Cs0 f0 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f4 tail #connect
Cs0 f4 head f3 mainIn #connect
Cs0 f10 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f14 mainOut f17 tail #connect
Cs0 f17 head f12 mainIn #connect
