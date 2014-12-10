[Ivy]
[>Created: Tue Jun 25 18:31:37 CEST 2013]
13F7A0CB3C44A69C 3.17 #module
>Proto >Proto Collection #zClass
As0 AdvancedPortletConfigurationProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogMethodStart f3 '' #zField
As0 @RichDialogMethodStart f4 '' #zField
As0 @RichDialogProcessEnd f5 '' #zField
As0 @PushWFArc f6 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @InfoButton f19 '' #zField
>Proto As0 As0 AdvancedPortletConfigurationProcess #zField
As0 f0 guid 13F7A0CB402166C9 #txt
As0 f0 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 86 54 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
As0 f1 86 150 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 96 74 96 150 #arcP
As0 f3 guid 13F7A2BF81B5E807 #txt
As0 f3 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
As0 f3 method getConfigData() #txt
As0 f3 disableUIEvents false #txt
As0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f3 outParameterDecl '<java.util.Map data> result;
' #txt
As0 f3 outActionCode 'import java.util.HashMap;
result.data = new HashMap();
if (panel.radioOption1.isSelected())
{
	result.data.put("imageId", 1);
}
else
{
	result.data.put("imageId", 2);
}' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getConfigData()</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 198 54 21 20 13 0 #rect
As0 f3 @|RichDialogMethodStartIcon #fIcon
As0 f4 guid 13F7A2C065DEF157 #txt
As0 f4 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
As0 f4 method setConfigData(java.util.Map) #txt
As0 f4 disableUIEvents false #txt
As0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.util.Map data> param = methodEvent.getInputArguments();
' #txt
As0 f4 inParameterMapAction 'out.configData=param.data;
' #txt
As0 f4 inActionCode 'if (out.configData.get("imageId").toNumber() == 1)
{
	panel.radioOption1.setSelected(true);
}
else
{
	panel.radioOption2.setSelected(true);
}' #txt
As0 f4 outParameterDecl '<> result;
' #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setConfigData(Mapt)</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f4 310 54 20 20 13 0 #rect
As0 f4 @|RichDialogMethodStartIcon #fIcon
As0 f5 type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
As0 f5 262 150 20 20 13 0 #rect
As0 f5 @|RichDialogProcessEndIcon #fIcon
As0 f6 expr out #txt
As0 f6 213 72 266 151 #arcP
As0 f7 expr out #txt
As0 f7 315 72 276 151 #arcP
As0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>The two methods are used to exchange data with the portlet

When the configuration dialog is opened, then 
setConfigData(java.util.Map) is called to set the current data 
from the portlet into the configuration dialog. 

When the user closes the configuration dialog, then first 
getConfigData():java.util.Map is called on the configuration
dialog to retrieve the changed data. This data is then returned 
to the portlet.</name>
        <nameStyle>58,7
363,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f19 331 115 347 170 -168 -80 #rect
As0 f19 @|IBIcon #fIcon
As0 f19 -1|-1|-16777216 #nodeStyle
>Proto As0 .type ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration.AdvancedPortletConfigurationData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>start methods</swimlaneLabel>
        <swimlaneLabel>configuration</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>528</swimlaneSize>
    <swimlaneColor>-3355393</swimlaneColor>
    <swimlaneColor>-3342388</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f6 tail #connect
As0 f6 head f5 mainIn #connect
As0 f4 mainOut f7 tail #connect
As0 f7 head f5 mainIn #connect
