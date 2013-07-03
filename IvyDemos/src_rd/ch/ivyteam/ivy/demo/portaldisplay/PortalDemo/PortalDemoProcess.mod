[Ivy]
[>Created: Wed Jul 03 15:20:39 CEST 2013]
13F5B2C4BCDDC181 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PortalDemoProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f3 '' #zField
Ps0 @RichDialog f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @RichDialog f7 '' #zField
Ps0 @RichDialogProcessStart f8 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @InfoButton f11 '' #zField
Ps0 @RichDialogProcessStart f12 '' #zField
Ps0 @RichDialog f13 '' #zField
Ps0 @RichDialog f14 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @PushWFArc f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @PushWFArc f17 '' #zField
>Proto Ps0 Ps0 PortalDemoProcess #zField
Ps0 f0 guid 13F5B2C4BEC63625 #txt
Ps0 f0 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.advancedCounter=0;
out.simpleCounter=0;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/portaldisplay/advanced/demo_icon\";\nparam.title=\"Portal Display Demo\";\nparam.subtitle=\"This demo shows how to use the portal display widget to create your own portal with Rich Dialogs\";\n"/initScript ""/userContext * }}' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f1 86 214 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 214 #arcP
Ps0 f3 guid 13F5B314A0EE5FF1 #txt
Ps0 f3 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f3 actionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'out.simpleCounter = in.simpleCounter + 1;' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load simple 
portlet</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 350 54 20 20 13 0 #rect
Ps0 f3 @|RichDialogProcessStartIcon #fIcon
Ps0 f4 targetWindow THIS #txt
Ps0 f4 targetDisplay EXISTING:portalDisplay #txt
Ps0 f4 richDialogId ch.ivyteam.ivy.demo.portaldisplay.SimplePortlet #txt
Ps0 f4 startMethod start() #txt
Ps0 f4 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f4 panelName 'Simple Portlet <%=in.simpleCounter%>' #txt
Ps0 f4 panelIcon /ch/ivyteam/ivy/demo/portaldisplay/simple_icon #txt
Ps0 f4 requestActionDecl '<> param;' #txt
Ps0 f4 responseActionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f4 responseMappingAction 'out=in;
' #txt
Ps0 f4 windowConfiguration '* ' #txt
Ps0 f4 isAsynch true #txt
Ps0 f4 isInnerRd true #txt
Ps0 f4 userContext '* ' #txt
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>simple 
portlet</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 342 212 36 24 20 -2 #rect
Ps0 f4 @|RichDialogIcon #fIcon
Ps0 f5 expr out #txt
Ps0 f5 360 74 360 212 #arcP
Ps0 f7 targetWindow THIS #txt
Ps0 f7 targetDisplay EXISTING:portalDisplay #txt
Ps0 f7 richDialogId ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet #txt
Ps0 f7 startMethod start() #txt
Ps0 f7 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f7 panelName 'Advanced <%=in.advancedCounter%>' #txt
Ps0 f7 panelIcon /ch/ivyteam/ivy/demo/portaldisplay/advanced/icon #txt
Ps0 f7 panelParams '"configurable"="true"
"refreshable"="true"' #txt
Ps0 f7 requestActionDecl '<> param;' #txt
Ps0 f7 responseActionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f7 responseMappingAction 'out=in;
' #txt
Ps0 f7 windowConfiguration '* ' #txt
Ps0 f7 isAsynch true #txt
Ps0 f7 isInnerRd true #txt
Ps0 f7 userContext '* ' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>advanced 
portlet</name>
        <nameStyle>10,7
7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 470 252 36 24 20 -2 #rect
Ps0 f7 @|RichDialogIcon #fIcon
Ps0 f8 guid 13F62002882681A4 #txt
Ps0 f8 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f8 actionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'out.advancedCounter = in.advancedCounter + 1;' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load advanced 
portlet</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f8 478 54 20 20 13 0 #rect
Ps0 f8 @|RichDialogProcessStartIcon #fIcon
Ps0 f9 expr out #txt
Ps0 f9 488 74 488 252 #arcP
Ps0 f10 expr out #txt
Ps0 f10 470 264 106 224 #arcP
Ps0 f10 1 216 264 #addKink
Ps0 f10 2 216 224 #addKink
Ps0 f10 0 0.4470853206508698 0 0 #arcLabel
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>When you load Rich Dialogs into a portal display then load them 
in the same way you load Rich Dialogs into other displays. 

In addition you can use the following parameters:

refreshable 	&quot;true&quot; to indicate that your portlet supports refreshing. The refresh button in the portlet''s titlebar is visible.
configurable 	&quot;true&quot; to indicate that your portlet has a configuration dialog. The configuration button in the portlet''s titlebar is visible.
</name>
        <nameStyle>65,7
382,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f11 188 307 712 138 -351 -64 #rect
Ps0 f11 @|IBIcon #fIcon
Ps0 f11 -1|-1|-16777216 #nodeStyle
Ps0 f12 guid 13FA4AF737BFED60 #txt
Ps0 f12 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f12 actionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f12 actionTable 'out=in;
' #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD Load</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 206 54 20 20 13 0 #rect
Ps0 f12 @|RichDialogProcessStartIcon #fIcon
Ps0 f13 targetWindow THIS #txt
Ps0 f13 targetDisplay EXISTING:portalDisplay #txt
Ps0 f13 richDialogId ch.ivyteam.ivy.demo.portaldisplay.SimplePortlet #txt
Ps0 f13 startMethod start() #txt
Ps0 f13 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f13 panelName 'Simple Portlet <%=in.simpleCounter%>' #txt
Ps0 f13 panelIcon /ch/ivyteam/ivy/demo/portaldisplay/simple_icon #txt
Ps0 f13 requestActionDecl '<> param;' #txt
Ps0 f13 responseActionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f13 responseMappingAction 'out=in;
' #txt
Ps0 f13 windowConfiguration '* ' #txt
Ps0 f13 isAsynch true #txt
Ps0 f13 isInnerRd true #txt
Ps0 f13 userContext '* ' #txt
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>simple 
portlet</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f13 198 100 36 24 20 -2 #rect
Ps0 f13 @|RichDialogIcon #fIcon
Ps0 f14 targetWindow THIS #txt
Ps0 f14 targetDisplay EXISTING:portalDisplay #txt
Ps0 f14 richDialogId ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet #txt
Ps0 f14 startMethod start() #txt
Ps0 f14 type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
Ps0 f14 panelName 'Advanced <%=in.advancedCounter%>' #txt
Ps0 f14 panelIcon /ch/ivyteam/ivy/demo/portaldisplay/advanced/icon #txt
Ps0 f14 panelParams '"configurable"="true"
"refreshable"="true"' #txt
Ps0 f14 requestActionDecl '<> param;' #txt
Ps0 f14 responseActionDecl 'ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData out;
' #txt
Ps0 f14 responseMappingAction 'out=in;
' #txt
Ps0 f14 windowConfiguration '* ' #txt
Ps0 f14 isAsynch true #txt
Ps0 f14 isInnerRd true #txt
Ps0 f14 userContext '* ' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>advanced 
portlet</name>
        <nameStyle>10,7
7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 198 148 36 24 20 -2 #rect
Ps0 f14 @|RichDialogIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 342 224 106 224 #arcP
Ps0 f15 expr out #txt
Ps0 f15 216 74 216 100 #arcP
Ps0 f16 expr out #txt
Ps0 f16 216 124 216 148 #arcP
Ps0 f17 expr out #txt
Ps0 f17 216 172 106 224 #arcP
Ps0 f17 1 216 224 #addKink
Ps0 f17 1 0.2636363636363636 0 0 #arcLabel
>Proto Ps0 .type ch.ivyteam.ivy.demo.portaldisplay.PortalDemo.PortalDemoData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f8 mainOut f9 tail #connect
Ps0 f9 head f7 mainIn #connect
Ps0 f7 mainOut f10 tail #connect
Ps0 f10 head f1 mainIn #connect
Ps0 f4 mainOut f6 tail #connect
Ps0 f6 head f1 mainIn #connect
Ps0 f12 mainOut f15 tail #connect
Ps0 f15 head f13 mainIn #connect
Ps0 f13 mainOut f16 tail #connect
Ps0 f16 head f14 mainIn #connect
Ps0 f14 mainOut f17 tail #connect
Ps0 f17 head f1 mainIn #connect
