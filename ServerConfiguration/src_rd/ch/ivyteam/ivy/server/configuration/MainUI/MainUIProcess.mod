[Ivy]
[>Created: Thu Jul 03 11:43:07 CEST 2014]
117B5410B1CB7BDE 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MainUIProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @RichDialogProcessStart f2 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogProcessStep f9 '' #zField
Ms0 @RichDialogProcessStep f11 '' #zField
Ms0 @RichDialogEnd f13 '' #zField
Ms0 @RichDialogEnd f14 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @RichDialogProcessStep f4 '' #zField
Ms0 @PushWFArc f8 '' #zField
Ms0 @RichDialog f12 '' #zField
Ms0 @PushWFArc f16 '' #zField
Ms0 @RichDialog f17 '' #zField
Ms0 @PushWFArc f18 '' #zField
Ms0 @RichDialogProcessStep f19 '' #zField
Ms0 @PushWFArc f6 '' #zField
Ms0 @RichDialogProcessStart f21 '' #zField
Ms0 @RichDialogProcessEnd f22 '' #zField
Ms0 @RichDialogProcessStep f23 '' #zField
Ms0 @PushWFArc f24 '' #zField
Ms0 @PushWFArc f25 '' #zField
Ms0 @RichDialog f26 '' #zField
Ms0 @PushWFArc f27 '' #zField
Ms0 @RichDialog f30 '' #zField
Ms0 @PushWFArc f20 '' #zField
Ms0 @RichDialogProcessStep f32 '' #zField
Ms0 @PushWFArc f33 '' #zField
Ms0 @Alternative f34 '' #zField
Ms0 @PushWFArc f35 '' #zField
Ms0 @PushWFArc f36 '' #zField
Ms0 @RichDialogProcessEnd f5 '' #zField
Ms0 @PushWFArc f37 '' #zField
Ms0 @Alternative f38 '' #zField
Ms0 @RichDialog f41 '' #zField
Ms0 @PushWFArc f28 '' #zField
Ms0 @PushWFArc f40 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @RichDialogProcessStep f29 '' #zField
Ms0 @PushWFArc f42 '' #zField
Ms0 @PushWFArc f39 '' #zField
Ms0 @Alternative f43 '' #zField
Ms0 @PushWFArc f44 '' #zField
Ms0 @PushWFArc f31 '' #zField
Ms0 @PushWFArc f45 '' #zField
>Proto Ms0 Ms0 MainUIProcess #zField
Ms0 f0 guid 117B54530CD7879D #txt
Ms0 f0 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents false #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 166 38 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f1 163 499 26 26 14 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f2 guid 117B545522884D9E #txt
Ms0 f2 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f2 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f2 actionTable 'out=in;
' #txt
Ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f2 398 38 20 20 13 0 #rect
Ms0 f2 @|RichDialogProcessStartIcon #fIcon
Ms0 f3 guid 117B5455E4B60A83 #txt
Ms0 f3 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 550 38 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f9 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 actionCode 'import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;

in.configuration = Configuration.loadOrCreateConfiguration();
SystemDatabase.initialize(in.configuration);
' #txt
Ms0 f9 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load config</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f9 214 196 36 24 20 -2 #rect
Ms0 f9 @|RichDialogProcessStepIcon #fIcon
Ms0 f11 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f11 actionTable 'out=in;
' #txt
Ms0 f11 actionCode in.configuration.saveConfiguration(); #txt
Ms0 f11 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save config</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f11 390 220 36 24 20 -2 #rect
Ms0 f11 @|RichDialogProcessStepIcon #fIcon
Ms0 f13 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f13 guid 117B54809153EC4B #txt
Ms0 f13 547 75 26 26 14 0 #rect
Ms0 f13 @|RichDialogEndIcon #fIcon
Ms0 f14 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f14 guid 117B5481122E4B20 #txt
Ms0 f14 395 267 26 26 14 0 #rect
Ms0 f14 @|RichDialogEndIcon #fIcon
Ms0 f15 expr out #txt
Ms0 f15 408 244 408 267 #arcP
Ms0 f7 expr out #txt
Ms0 f7 560 58 560 75 #arcP
Ms0 f4 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f4 actionTable 'out=in;
' #txt
Ms0 f4 actionCode 'import ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterPanel;
import ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIPanel;
import ch.ivyteam.ivy.server.configuration.ServerConfigurationUI.ServerConfigurationUIPanel;
import ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIPanel;

import com.ulcjava.base.application.ULCComponent;

// first save cluster panel, so that the local cluster node identifier is saved before 
// the system properties are saved. This is necessary because it depends on the
// local cluster node identifier if the system properties are saved as system properties 
// or as cluster properties
for (ULCComponent component : panel.mainDisplay.getComponents())
{
  if (component instanceof ClusterPanel)
  { 
    (component as ClusterPanel).save();
  }
}
// then save the other panels
for (ULCComponent component : panel.mainDisplay.getComponents())
{
  if (component instanceof ServerConfigurationUIPanel)
  { 
    (component as ServerConfigurationUIPanel).save();
  }
  if (component instanceof AdministratorUIPanel)
  { 
    (component as AdministratorUIPanel).save();
  }
  if (component instanceof WebServerUIPanel)
  { 
    (component as WebServerUIPanel).save();
  }
}
  ' #txt
Ms0 f4 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call save on tabs</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f4 390 172 36 24 20 -2 #rect
Ms0 f4 @|RichDialogProcessStepIcon #fIcon
Ms0 f8 expr out #txt
Ms0 f8 408 196 408 220 #arcP
Ms0 f12 targetWindow THIS #txt
Ms0 f12 targetDisplay main #txt
Ms0 f12 richDialogId ch.ivyteam.ivy.server.configuration.ServerConfigurationUI #txt
Ms0 f12 startMethod start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ms0 f12 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f12 panelName 'System Database' #txt
Ms0 f12 requestActionDecl '<ch.ivyteam.ivy.server.configuration.Configuration configuration> param;' #txt
Ms0 f12 requestMappingAction 'param.configuration=in.configuration;
' #txt
Ms0 f12 responseActionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f12 responseMappingAction 'out=in;
' #txt
Ms0 f12 windowConfiguration '#Wed Mar 26 11:53:22 CET 2008
use_default=true
' #txt
Ms0 f12 isAsynch true #txt
Ms0 f12 isInnerRd true #txt
Ms0 f12 isDialog false #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open sys db tab</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f12 214 236 36 24 20 -2 #rect
Ms0 f12 @|RichDialogIcon #fIcon
Ms0 f16 expr out #txt
Ms0 f16 232 220 232 236 #arcP
Ms0 f17 targetWindow THIS #txt
Ms0 f17 targetDisplay main #txt
Ms0 f17 richDialogId ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI #txt
Ms0 f17 startMethod start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ms0 f17 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f17 panelName Administrators #txt
Ms0 f17 requestActionDecl '<ch.ivyteam.ivy.server.configuration.Configuration configuration> param;' #txt
Ms0 f17 requestMappingAction 'param.configuration=in.configuration;
' #txt
Ms0 f17 responseActionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f17 responseMappingAction 'out=in;
' #txt
Ms0 f17 windowConfiguration '#Wed Mar 26 11:53:28 CET 2008
use_default=true
' #txt
Ms0 f17 isAsynch true #txt
Ms0 f17 isInnerRd true #txt
Ms0 f17 isDialog false #txt
Ms0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open admin tab</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f17 214 276 36 24 20 -2 #rect
Ms0 f17 @|RichDialogIcon #fIcon
Ms0 f18 expr out #txt
Ms0 f18 232 260 232 276 #arcP
Ms0 f19 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f19 actionTable 'out=in;
' #txt
Ms0 f19 actionCode panel.mainDisplay.setSelectedIndex(0); #txt
Ms0 f19 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select first tab</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f19 214 460 36 24 26 -2 #rect
Ms0 f19 @|RichDialogProcessStepIcon #fIcon
Ms0 f6 expr out #txt
Ms0 f6 232 484 188 508 #arcP
Ms0 f6 1 232 496 #addKink
Ms0 f6 1 0.2771638195831917 0 0 #arcLabel
Ms0 f21 guid 117C11120BD93030 #txt
Ms0 f21 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f21 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f21 actionTable 'out=in;
' #txt
Ms0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>connectionStateChanged</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f21 398 310 20 20 13 0 #rect
Ms0 f21 @|RichDialogProcessStartIcon #fIcon
Ms0 f22 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f22 395 395 26 26 14 0 #rect
Ms0 f22 @|RichDialogProcessEndIcon #fIcon
Ms0 f23 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f23 actionTable 'out=in;
' #txt
Ms0 f23 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f23 390 356 36 24 20 -2 #rect
Ms0 f23 @|RichDialogProcessStepIcon #fIcon
Ms0 f24 expr out #txt
Ms0 f24 408 330 408 356 #arcP
Ms0 f25 expr out #txt
Ms0 f25 408 380 408 395 #arcP
Ms0 f26 targetWindow THIS #txt
Ms0 f26 targetDisplay EXISTING:main #txt
Ms0 f26 richDialogId ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI #txt
Ms0 f26 startMethod start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ms0 f26 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f26 panelName WebServer #txt
Ms0 f26 requestActionDecl '<ch.ivyteam.ivy.server.configuration.Configuration config> param;' #txt
Ms0 f26 requestMappingAction 'param.config=in.configuration;
' #txt
Ms0 f26 responseActionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f26 responseMappingAction 'out=in;
' #txt
Ms0 f26 windowConfiguration '* ' #txt
Ms0 f26 isAsynch true #txt
Ms0 f26 isInnerRd true #txt
Ms0 f26 isDialog false #txt
Ms0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open webserver tab</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f26 214 316 36 24 20 -2 #rect
Ms0 f26 @|RichDialogIcon #fIcon
Ms0 f27 expr out #txt
Ms0 f27 232 300 232 316 #arcP
Ms0 f30 targetWindow THIS #txt
Ms0 f30 targetDisplay EXISTING:main #txt
Ms0 f30 richDialogId ch.ivyteam.ivy.server.configuration.cluster.Cluster #txt
Ms0 f30 startMethod start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ms0 f30 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f30 panelName Cluster #txt
Ms0 f30 requestActionDecl '<ch.ivyteam.ivy.server.configuration.Configuration configuration> param;' #txt
Ms0 f30 requestMappingAction 'param.configuration=in.configuration;
' #txt
Ms0 f30 responseActionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f30 responseMappingAction 'out=in;
' #txt
Ms0 f30 windowConfiguration '* ' #txt
Ms0 f30 isAsynch true #txt
Ms0 f30 isInnerRd true #txt
Ms0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open cluster tab</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f30 214 412 36 24 20 -2 #rect
Ms0 f30 @|RichDialogIcon #fIcon
Ms0 f20 expr out #txt
Ms0 f20 232 436 232 460 #arcP
Ms0 f32 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f32 actionTable 'out=in;
' #txt
Ms0 f32 actionCode 'import ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterPanel;
import ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIPanel;
import ch.ivyteam.ivy.server.configuration.ServerConfigurationUI.ServerConfigurationUIPanel;
import ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIPanel;

import com.ulcjava.base.application.ULCComponent;

// first save cluster panel, so that the local cluster node identifier is saved before 
// the system properties are saved. This is necessary because it depends on the
// local cluster node identifier if the system properties are saved as system properties 
// or as cluster properties

in.canSave = true; // if no cluster is configured we can save always
for (ULCComponent tab : panel.mainDisplay.getComponents())
{
  if (tab instanceof ClusterPanel)
  { 
    in.canSave = in.canSave && (tab as ClusterPanel).canSave();
  }
}
' #txt
Ms0 f32 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f32 390 76 36 24 20 -2 #rect
Ms0 f32 @|RichDialogProcessStepIcon #fIcon
Ms0 f33 expr out #txt
Ms0 f33 408 58 408 76 #arcP
Ms0 f34 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f34 394 122 28 28 14 0 #rect
Ms0 f34 @|AlternativeIcon #fIcon
Ms0 f35 expr out #txt
Ms0 f35 408 100 408 122 #arcP
Ms0 f36 expr in #txt
Ms0 f36 outCond in.canSave #txt
Ms0 f36 408 150 408 172 #arcP
Ms0 f5 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f5 446 126 20 20 13 0 #rect
Ms0 f5 @|RichDialogProcessEndIcon #fIcon
Ms0 f37 expr in #txt
Ms0 f37 422 136 446 136 #arcP
Ms0 f38 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isLicenceOk?</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f38 162 122 28 28 19 -18 #rect
Ms0 f38 @|AlternativeIcon #fIcon
Ms0 f41 targetWindow THIS #txt
Ms0 f41 targetDisplay EXISTING:main #txt
Ms0 f41 richDialogId ch.ivyteam.ivy.server.configuration.DemoLicenceInformation #txt
Ms0 f41 startMethod start() #txt
Ms0 f41 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f41 panelName 'Missing Engine Licence' #txt
Ms0 f41 requestActionDecl '<> param;' #txt
Ms0 f41 requestActionCode panel.saveButton.setVisible(false); #txt
Ms0 f41 responseActionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f41 responseMappingAction 'out=in;
' #txt
Ms0 f41 windowConfiguration '* ' #txt
Ms0 f41 isAsynch true #txt
Ms0 f41 isInnerRd true #txt
Ms0 f41 userContext '* ' #txt
Ms0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load missing licence
information and
hide save button</name>
        <nameStyle>4,7,9
16,0,7,9
33,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f41 110 260 36 24 -119 22 #rect
Ms0 f41 @|RichDialogIcon #fIcon
Ms0 f41 -985168|-985168|-16777216 #nodeStyle
Ms0 f28 expr out #txt
Ms0 f28 128 284 168 501 #arcP
Ms0 f28 1 128 440 #addKink
Ms0 f28 0 0.6574715433342461 0 0 #arcLabel
Ms0 f40 expr in #txt
Ms0 f40 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f40 167 141 128 260 #arcP
Ms0 f40 1 128 160 #addKink
Ms0 f40 0 0.47130712008501596 5 12 #arcLabel
Ms0 f10 expr in #txt
Ms0 f10 outCond in.isLicenceOk #txt
Ms0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f10 186 140 232 196 #arcP
Ms0 f10 1 232 160 #addKink
Ms0 f10 0 0.404610492845787 -5 13 #arcLabel
Ms0 f29 actionDecl 'ch.ivyteam.ivy.server.configuration.MainUI.MainUIData out;
' #txt
Ms0 f29 actionTable 'out=in;
' #txt
Ms0 f29 actionCode 'import ch.ivyteam.licence.SignedLicence;
out.isLicenceOk = 
	(SignedLicence.isServer() && !SignedLicence.isDemo())
	|| System.getProperty("ch.ivyteam.ivy.server.configuration.development") is initialized;
	
out.isClusterLicense=out.isLicenceOk &&
  ch.ivyteam.licence.LicenceConstants.VAL_LICENCE_TYPE_ENTERPRISE==ch.ivyteam.licence.SignedLicence.getParam(ch.ivyteam.licence.LicenceConstants.PARAM_LICENCE_TYPE)
  || System.getProperty("ch.ivyteam.ivy.server.configuration.development.cluster") is initialized;;' #txt
Ms0 f29 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check licence</name>
        <nameStyle>13,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f29 158 76 36 24 20 -2 #rect
Ms0 f29 @|RichDialogProcessStepIcon #fIcon
Ms0 f42 expr out #txt
Ms0 f42 176 58 176 76 #arcP
Ms0 f39 expr out #txt
Ms0 f39 176 100 176 122 #arcP
Ms0 f43 type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
Ms0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Is Cluster Licence?</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f43 218 362 28 28 18 -12 #rect
Ms0 f43 @|AlternativeIcon #fIcon
Ms0 f44 expr out #txt
Ms0 f44 232 340 232 362 #arcP
Ms0 f31 expr in #txt
Ms0 f31 outCond in.isClusterLicense #txt
Ms0 f31 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f31 232 390 232 412 #arcP
Ms0 f31 0 0.18181818181818182 13 0 #arcLabel
Ms0 f45 expr in #txt
Ms0 f45 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f45 218 376 214 472 #arcP
Ms0 f45 1 184 376 #addKink
Ms0 f45 2 184 472 #addKink
Ms0 f45 0 0.6470588235294118 0 -6 #arcLabel
>Proto Ms0 .type ch.ivyteam.ivy.server.configuration.MainUI.MainUIData #txt
>Proto Ms0 .processKind RICH_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f11 mainOut f15 tail #connect
Ms0 f15 head f14 mainIn #connect
Ms0 f3 mainOut f7 tail #connect
Ms0 f7 head f13 mainIn #connect
Ms0 f4 mainOut f8 tail #connect
Ms0 f8 head f11 mainIn #connect
Ms0 f9 mainOut f16 tail #connect
Ms0 f16 head f12 mainIn #connect
Ms0 f12 mainOut f18 tail #connect
Ms0 f18 head f17 mainIn #connect
Ms0 f19 mainOut f6 tail #connect
Ms0 f6 head f1 mainIn #connect
Ms0 f21 mainOut f24 tail #connect
Ms0 f24 head f23 mainIn #connect
Ms0 f23 mainOut f25 tail #connect
Ms0 f25 head f22 mainIn #connect
Ms0 f17 mainOut f27 tail #connect
Ms0 f27 head f26 mainIn #connect
Ms0 f30 mainOut f20 tail #connect
Ms0 f20 head f19 mainIn #connect
Ms0 f2 mainOut f33 tail #connect
Ms0 f33 head f32 mainIn #connect
Ms0 f32 mainOut f35 tail #connect
Ms0 f35 head f34 in #connect
Ms0 f34 out f36 tail #connect
Ms0 f36 head f4 mainIn #connect
Ms0 f34 out f37 tail #connect
Ms0 f37 head f5 mainIn #connect
Ms0 f41 mainOut f28 tail #connect
Ms0 f28 head f1 mainIn #connect
Ms0 f40 head f41 mainIn #connect
Ms0 f38 out f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f38 out f40 tail #connect
Ms0 f0 mainOut f42 tail #connect
Ms0 f42 head f29 mainIn #connect
Ms0 f29 mainOut f39 tail #connect
Ms0 f39 head f38 in #connect
Ms0 f26 mainOut f44 tail #connect
Ms0 f44 head f43 in #connect
Ms0 f43 out f31 tail #connect
Ms0 f31 head f30 mainIn #connect
Ms0 f43 out f45 tail #connect
Ms0 f45 head f19 mainIn #connect
