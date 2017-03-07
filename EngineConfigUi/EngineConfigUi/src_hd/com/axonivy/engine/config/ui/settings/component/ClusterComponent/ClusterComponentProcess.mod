[Ivy]
[>Created: Tue Mar 07 16:45:25 CET 2017]
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
Cs0 @GridStep f3 '' #zField
Cs0 @RichDialogProcessStart f11 '' #zField
Cs0 @GridStep f14 '' #zField
Cs0 @RichDialogProcessEnd f12 '' #zField
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @GridStep f19 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogMethodStart f13 '' #zField
Cs0 @RichDialogProcessEnd f17 '' #zField
Cs0 @PushWFArc f4 '' #zField
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
Cs0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 actionCode out.adminManager.storeClusterNodes(); #txt
Cs0 f3 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Local Nodes</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 387 186 112 44 -50 -8 #rect
Cs0 f3 @|StepIcon #fIcon
Cs0 f11 guid 15AA3E5886DF5043 #txt
Cs0 f11 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f11 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f11 actionTable 'out=in;
' #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeLocalNode</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 86 147 26 26 -50 15 #rect
Cs0 f11 @|RichDialogProcessStartIcon #fIcon
Cs0 f14 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 actionCode 'if(in.#selectedCluster is initialized)
{
	in.adminManager.removeClusterNode(in.selectedCluster);
}' #txt
Cs0 f14 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Remove selected LocalNode</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 139 138 176 44 -79 -8 #rect
Cs0 f14 @|StepIcon #fIcon
Cs0 f12 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f12 582 195 26 26 0 12 #rect
Cs0 f12 @|RichDialogProcessEndIcon #fIcon
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
Cs0 f16 86 243 26 26 -40 15 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f19 actionDecl 'com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 actionCode in.adminManager.addClusterNode(in.newClusterNode); #txt
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
Cs0 f19 163 234 128 44 -56 -8 #rect
Cs0 f19 @|StepIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 315 180 387 208 #arcP
Cs0 f9 expr out #txt
Cs0 f9 499 208 582 208 #arcP
Cs0 f15 expr out #txt
Cs0 f15 112 160 139 160 #arcP
Cs0 f20 expr out #txt
Cs0 f20 112 256 163 256 #arcP
Cs0 f10 expr out #txt
Cs0 f10 291 256 387 208 #arcP
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
Cs0 f13 83 339 26 26 -36 15 #rect
Cs0 f13 @|RichDialogMethodStartIcon #fIcon
Cs0 f17 type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
Cs0 f17 179 339 26 26 0 12 #rect
Cs0 f17 @|RichDialogProcessEndIcon #fIcon
Cs0 f4 expr out #txt
Cs0 f4 109 352 179 352 #arcP
>Proto Cs0 .type com.axonivy.engine.config.ui.settings.component.ClusterComponent.ClusterComponentData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f11 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f16 mainOut f20 tail #connect
Cs0 f20 head f19 mainIn #connect
Cs0 f3 mainOut f9 tail #connect
Cs0 f9 head f12 mainIn #connect
Cs0 f19 mainOut f10 tail #connect
Cs0 f10 head f3 mainIn #connect
Cs0 f14 mainOut f18 tail #connect
Cs0 f18 head f3 mainIn #connect
Cs0 f13 mainOut f4 tail #connect
Cs0 f4 head f17 mainIn #connect
