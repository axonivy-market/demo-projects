[Ivy]
[>Created: Mon Jul 03 10:03:08 CEST 2017]
15AA3C30A9139F49 3.20 #module
>Proto >Proto Collection #zClass
Cs0 ClusterComponentProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @GridStep f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @RichDialogMethodStart f13 '' #zField
Cs0 @RichDialogProcessEnd f17 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogMethodStart f9 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f3 '' #zField
>Proto Cs0 Cs0 ClusterComponentProcess #zField
Cs0 f0 guid 15AA3C30ABD6928D #txt
Cs0 f0 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axon.ivy.engine.config.SystemDatabaseSettings settings> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.adminManager=param.settings.getAdministratorManager();
out.connectionInfo=param.settings.getConnectionInfo();
out.settings=param.settings;
' #txt
Cs0 f0 inActionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ClusterNode;
import com.axon.ivy.engine.config.ConfigHelper;
import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;
import java.net.InetAddress;

out.localHostName = InetAddress.getLocalHost().getCanonicalHostName();

int localClusterNodeIdFromLicence = SignedLicence.getIntParam(LicenceConstants.PARAM_SRV_CLUSTER_LOCAL_NODE_ID);
int localClusterNodeIdFromConfig = param.settings.getConfiguration().getLocalClusterNodeIdentifier();

if (localClusterNodeIdFromLicence >= 0)
{
	out.localIdentifier = localClusterNodeIdFromLicence;
}
else if (localClusterNodeIdFromConfig >= 0)
{
	out.localIdentifier = localClusterNodeIdFromConfig;
}
else
{
	out.localIdentifier = 0;
}

out.newClusterNode = new ClusterNode(
	null, out.localHostName, out.localIdentifier, 
	InetAddress.getLocalHost().getHostAddress(),
	6800);' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(SystemDatabaseSettings)</name>
        <nameStyle>29,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -86 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 109 64 211 64 #arcP
Cs0 f16 guid 15AA3E5886D6A8B4 #txt
Cs0 f16 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f16 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addLocalNode</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 86 115 26 26 -40 15 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f19 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 actionCode 'import com.axon.ivy.engine.config.FocusSetter;

in.adminManager.addClusterNode(in.newClusterNode);
FocusSetter.setFocusOnClusterTabNextStepButton();' #txt
Cs0 f19 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new Local Node</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 187 106 128 44 -56 -8 #rect
Cs0 f19 @|StepIcon #fIcon
Cs0 f20 expr out #txt
Cs0 f20 112 128 187 128 #arcP
Cs0 f13 guid 15AA8278F6969095 #txt
Cs0 f13 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f13 method checkExists() #txt
Cs0 f13 disableUIEvents false #txt
Cs0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f13 inParameterMapAction 'out.exists=out.adminManager.existsClusterNode(out.newClusterNode);
' #txt
Cs0 f13 outParameterDecl '<> result;
' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkExists()</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 83 179 26 26 -36 15 #rect
Cs0 f13 @|RichDialogMethodStartIcon #fIcon
Cs0 f17 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f17 395 179 26 26 0 12 #rect
Cs0 f17 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 315 128 408 179 #arcP
Cs0 f7 1 408 128 #addKink
Cs0 f7 0 0.8300232385369237 0 0 #arcLabel
Cs0 f9 guid 15BB4CE685E872B1 #txt
Cs0 f9 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f9 method removeNode(ch.ivyteam.ivy.server.configuration.system.db.ClusterNode) #txt
Cs0 f9 disableUIEvents false #txt
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.system.db.ClusterNode node> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 inActionCode out.adminManager.removeClusterNode(param.node); #txt
Cs0 f9 outParameterDecl '<> result;
' #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeNode(ClusterNode)</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 83 243 26 26 -74 15 #rect
Cs0 f9 @|RichDialogMethodStartIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 109 256 408 205 #arcP
Cs0 f18 1 408 256 #addKink
Cs0 f18 0 0.8067862948632382 0 0 #arcLabel
Cs0 f3 expr out #txt
Cs0 f3 109 192 395 192 #arcP
>Proto Cs0 .type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f16 mainOut f20 tail #connect
Cs0 f20 head f19 mainIn #connect
Cs0 f19 mainOut f7 tail #connect
Cs0 f7 head f17 mainIn #connect
Cs0 f9 mainOut f18 tail #connect
Cs0 f18 head f17 mainIn #connect
Cs0 f13 mainOut f3 tail #connect
Cs0 f3 head f17 mainIn #connect
