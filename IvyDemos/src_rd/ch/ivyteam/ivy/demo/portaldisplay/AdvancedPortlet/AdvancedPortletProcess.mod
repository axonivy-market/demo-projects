[Ivy]
[>Created: Tue Jul 02 16:01:25 CEST 2013]
13F6201EBBFCFF9C 3.17 #module
>Proto >Proto Collection #zClass
Ps0 AdvancedPortletProcess Big #zClass
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
Ps0 @RichDialogMethodStart f3 '' #zField
Ps0 @RichDialogProcessStep f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @RichDialogMethodStart f7 '' #zField
Ps0 @RichDialogMethodStart f8 '' #zField
Ps0 @RichDialogProcessEnd f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @PushWFArc f11 '' #zField
Ps0 @RichDialogBroadcastStart f12 '' #zField
Ps0 @RichDialog f13 '' #zField
Ps0 @RichDialogProcessEnd f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RichDialogProcessEnd f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @InfoButton f4 '' #zField
Ps0 @InfoButton f19 '' #zField
Ps0 @InfoButton f20 '' #zField
Ps0 @Alternative f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @PushWFArc f23 '' #zField
>Proto Ps0 Ps0 AdvancedPortletProcess #zField
Ps0 f0 guid 13F61ECEDB8BC44E #txt
Ps0 f0 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.refreshCounter=0;
' #txt
Ps0 f0 inActionCode 'import java.util.HashMap;

out.ConfigData = new HashMap();
out.configData.put("imageId", 1);' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 70 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f1 70 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 80 74 80 150 #arcP
Ps0 f3 guid 13F62275FE3A0B86 #txt
Ps0 f3 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f3 method doRefresh() #txt
Ps0 f3 disableUIEvents false #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 outParameterDecl '<> result;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doRefresh()</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 790 62 20 20 13 0 #rect
Ps0 f3 @|RichDialogMethodStartIcon #fIcon
Ps0 f5 actionDecl 'ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 actionCode 'out.refreshCounter = in.refreshCounter + 1;
panel.Label1.setText("Refresh was executed " + out.refreshCounter + " times");
' #txt
Ps0 f5 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f5 782 140 36 24 20 -2 #rect
Ps0 f5 @|RichDialogProcessStepIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 800 82 800 140 #arcP
Ps0 f6 0 0.5000000000000001 0 0 #arcLabel
Ps0 f7 guid 13F7A0ADED9375E2 #txt
Ps0 f7 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f7 method getConfigData() #txt
Ps0 f7 disableUIEvents false #txt
Ps0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f7 outParameterDecl '<java.util.Map data> result;
' #txt
Ps0 f7 outActionCode 'result.data = in.configData;' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getConfigData()</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 222 326 20 20 13 0 #rect
Ps0 f7 @|RichDialogMethodStartIcon #fIcon
Ps0 f8 guid 13F7A0AF18F51DB8 #txt
Ps0 f8 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f8 method setConfigData(java.util.Map) #txt
Ps0 f8 disableUIEvents false #txt
Ps0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.util.Map data> param = methodEvent.getInputArguments();
' #txt
Ps0 f8 inParameterMapAction 'out.configData=param.data;
' #txt
Ps0 f8 inActionCode 'if (out.configData.get("imageId").toNumber() == 1)
{
	panel.imageLabel.setIconUri("/ch/ivyteam/ivy/demo/portaldisplay/advanced/option1");
}
else
{
	panel.imageLabel.setIconUri("/ch/ivyteam/ivy/demo/portaldisplay/advanced/option2");
}' #txt
Ps0 f8 outParameterDecl '<> result;
' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setConfigData(Map)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f8 262 374 20 20 13 0 #rect
Ps0 f8 @|RichDialogMethodStartIcon #fIcon
Ps0 f9 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f9 222 430 20 20 13 0 #rect
Ps0 f9 @|RichDialogProcessEndIcon #fIcon
Ps0 f10 expr out #txt
Ps0 f10 232 346 232 430 #arcP
Ps0 f11 expr out #txt
Ps0 f11 266 392 237 431 #arcP
Ps0 f12 guid 13F7A0BB1FF6AC23 #txt
Ps0 f12 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f12 actionDecl 'ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData out;
' #txt
Ps0 f12 actionTable 'out=in;
out.portletId=param.portletId;
' #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>openConfigDialog</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 222 54 20 20 13 0 #rect
Ps0 f12 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f13 targetWindow THIS #txt
Ps0 f13 targetDisplay EXISTING:portalDisplay #txt
Ps0 f13 richDialogId ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration #txt
Ps0 f13 startMethod start() #txt
Ps0 f13 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f13 panelParams "portletID"=in.portletId #txt
Ps0 f13 requestActionDecl '<> param;' #txt
Ps0 f13 responseActionDecl 'ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData out;
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
        <name>open configuration
dialog</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f13 214 180 36 24 20 -2 #rect
Ps0 f13 @|RichDialogIcon #fIcon
Ps0 f15 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f15 222 254 20 20 13 0 #rect
Ps0 f15 @|RichDialogProcessEndIcon #fIcon
Ps0 f16 expr out #txt
Ps0 f16 232 204 232 254 #arcP
Ps0 f17 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f17 790 214 20 20 13 0 #rect
Ps0 f17 @|RichDialogProcessEndIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 800 164 800 214 #arcP
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Implement this broadcast to start the configuration dialog. 

One parameter is sent along which you can use to check 
whether the configuration dialog should be opened for 
this instance of the portlet. See the alternative!

The &quot;Fire Event&quot; must be defined in the interface of this 
rich dialog, but it will be fired by the portal display.</name>
        <nameStyle>224,7
1,7
115,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 405 43 327 138 -158 -64 #rect
Ps0 f4 @|IBIcon #fIcon
Ps0 f4 -1|-1|-16777216 #nodeStyle
Ps0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>The two methods are used to exchange data with 
the configuration dialog.

When the configuration dialog is opened, then 
getConfigData():java.util.Map is called to get the
current data from the portlet. The map that you
must return in this method is then used to put in
the configuration dialog.

When the user closes the configuration dialog, 
the changed data is returned to the portlet with
the setConfigData(java.util.Map). 

Note that the doRefresh method is called after a 
successful save of the configuration data.</name>
        <nameStyle>72,7
451,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f19 428 283 281 250 -135 -120 #rect
Ps0 f19 @|IBIcon #fIcon
Ps0 f19 -1|-1|-16777216 #nodeStyle
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>The display will call doRefresh every time 
when the user clicks on the refresh button.</name>
        <nameStyle>53,7
34,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f20 856 99 241 42 -115 -16 #rect
Ps0 f20 @|IBIcon #fIcon
Ps0 f20 -1|-1|-16777216 #nodeStyle
Ps0 f21 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
Ps0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>configuration button
clicked on this instance?</name>
        <nameStyle>21,7
25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f21 218 98 28 28 14 0 #rect
Ps0 f21 @|AlternativeIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 232 74 232 98 #arcP
Ps0 f14 expr in #txt
Ps0 f14 outCond panel.getName().equals(in.portletID) #txt
Ps0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 232 126 232 180 #arcP
Ps0 f23 expr in #txt
Ps0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 246 112 242 264 #arcP
Ps0 f23 1 392 112 #addKink
Ps0 f23 2 392 264 #addKink
Ps0 f23 1 0.5131578947368421 0 0 #arcLabel
>Proto Ps0 .type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet.AdvancedPortletData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>configuration</swimlaneLabel>
        <swimlaneLabel>refresh</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>552</swimlaneSize>
    <swimlaneSize>416</swimlaneSize>
    <swimlaneColor>-3355393</swimlaneColor>
    <swimlaneColor>-13108</swimlaneColor>
    <swimlaneColor>-3342388</swimlaneColor>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f7 mainOut f10 tail #connect
Ps0 f10 head f9 mainIn #connect
Ps0 f8 mainOut f11 tail #connect
Ps0 f11 head f9 mainIn #connect
Ps0 f13 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f5 mainOut f18 tail #connect
Ps0 f18 head f17 mainIn #connect
Ps0 f12 mainOut f22 tail #connect
Ps0 f22 head f21 in #connect
Ps0 f21 out f14 tail #connect
Ps0 f14 head f13 mainIn #connect
Ps0 f21 out f23 tail #connect
Ps0 f23 head f15 mainIn #connect
