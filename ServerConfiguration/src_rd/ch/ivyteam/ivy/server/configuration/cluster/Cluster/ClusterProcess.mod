[Ivy]
[>Created: Mon Feb 07 12:07:23 CET 2011]
1262C737D6F19C96 3.15 #module
>Proto >Proto Collection #zClass
Cs0 ClusterProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogInitStart f3 '' #zField
Cs0 @RichDialogProcessEnd f5 '' #zField
Cs0 @RichDialogBroadcastStart f10 '' #zField
Cs0 @RichDialogProcessStep f8 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @RichDialogMethodStart f12 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @RichDialogProcessStep f15 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @RichDialogProcessStart f19 '' #zField
Cs0 @RichDialogProcessEnd f20 '' #zField
Cs0 @RichDialogProcessEnd f22 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogProcessEnd f7 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogProcessStart f17 '' #zField
Cs0 @RichDialogProcessEnd f18 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @RichDialogProcessStart f25 '' #zField
Cs0 @RichDialogProcessEnd f26 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @RichDialogProcessStart f28 '' #zField
Cs0 @RichDialogProcessEnd f29 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @RichDialogMethodStart f31 '' #zField
Cs0 @RichDialogProcessEnd f32 '' #zField
Cs0 @RichDialogProcessStep f34 '' #zField
Cs0 @PushWFArc f35 '' #zField
Cs0 @Alternative f36 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @PushWFArc f33 '' #zField
Cs0 @RichDialog f38 '' #zField
Cs0 @RichDialogProcessEnd f39 '' #zField
Cs0 @PushWFArc f40 '' #zField
Cs0 @PushWFArc f41 '' #zField
Cs0 @RichDialog f42 '' #zField
Cs0 @PushWFArc f43 '' #zField
Cs0 @Alternative f44 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @RichDialogProcessStep f46 '' #zField
Cs0 @PushWFArc f47 '' #zField
Cs0 @PushWFArc f48 '' #zField
>Proto Cs0 Cs0 ClusterProcess #zField
Cs0 f0 guid 1262C73800046707 #txt
Cs0 f0 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 94 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f1 94 94 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 104 58 104 94 #arcP
Cs0 f3 guid 1262C9B17BB3C8CD #txt
Cs0 f3 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f3 method start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Cs0 f3 disableUIEvents true #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.Configuration configuration> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 inParameterMapAction 'out.administratorManager=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getAdministratorManager();
out.configuration=param.configuration;
out.connectionTester=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getConnectionTester();
out.enableClusterServer=true;
' #txt
Cs0 f3 inActionCode 'import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;
import java.net.InetAddress;

out.localHostName = InetAddress.getLocalHost().getCanonicalHostName();

int localClusterNodeIdFromLicence = SignedLicence.getIntParam(LicenceConstants.PARAM_SRV_CLUSTER_LOCAL_NODE_ID);
int localClusterNodeIdFromConfig = param.configuration.getLocalClusterNodeIdentifier();

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
}' #txt
Cs0 f3 outParameterDecl '<> result;
' #txt
Cs0 f3 embeddedRdInitializations '* ' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Configuration)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 182 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogInitStartIcon #fIcon
Cs0 f5 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f5 182 198 20 20 13 0 #rect
Cs0 f5 @|RichDialogProcessEndIcon #fIcon
Cs0 f10 guid 1262C9B9479E4889 #txt
Cs0 f10 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f10 broadcast connectionStateChanged #txt
Cs0 f10 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>connectionStateChanged</name>
    </language>
</elementInfo>
' #txt
Cs0 f10 334 46 20 20 13 0 #rect
Cs0 f10 @|RichDialogBroadcastStartIcon #fIcon
Cs0 f8 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode in.administratorManager.storeClusterNodes(); #txt
Cs0 f8 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save cluster nodes</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 518 92 36 24 20 -2 #rect
Cs0 f8 @|RichDialogProcessStepIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f9 526 190 20 20 13 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f12 guid 1262C9BF0FE27B21 #txt
Cs0 f12 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f12 method save() #txt
Cs0 f12 disableUIEvents false #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save()</name>
    </language>
</elementInfo>
' #txt
Cs0 f12 526 38 20 20 13 0 #rect
Cs0 f12 @|RichDialogMethodStartIcon #fIcon
Cs0 f13 expr out #txt
Cs0 f13 536 58 536 92 #arcP
Cs0 f15 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f15 actionTable 'out=in;
' #txt
Cs0 f15 actionCode 'if (in.enableClusterServer)
{
	in.configuration.setLocalClusterNodeIdentifier(in.localIdentifier);
}
else
{
	in.configuration.setLocalClusterNodeIdentifier(-1);
}' #txt
Cs0 f15 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save local cluster node identifier</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f15 518 140 36 24 20 -2 #rect
Cs0 f15 @|RichDialogProcessStepIcon #fIcon
Cs0 f16 expr out #txt
Cs0 f16 536 116 536 140 #arcP
Cs0 f14 expr out #txt
Cs0 f14 536 164 536 190 #arcP
Cs0 f19 guid 1266B7488EAEFA2B #txt
Cs0 f19 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f19 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f19 actionTable 'out=in;
out.addCanceled=true;
' #txt
Cs0 f19 actionCode 'import java.net.InetAddress;
import ch.ivyteam.ivy.server.configuration.system.db.ClusterNode;
in.addedClusterNode = new ClusterNode(
	null, in.localHostName, in.localIdentifier, 
	InetAddress.getLocalHost().getHostAddress(),
	6800);' #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
        <nameStyle>3,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 86 230 20 20 13 0 #rect
Cs0 f19 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f20 86 414 20 20 13 0 #rect
Cs0 f20 @|RichDialogProcessEndIcon #fIcon
Cs0 f22 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f22 334 190 20 20 13 0 #rect
Cs0 f22 @|RichDialogProcessEndIcon #fIcon
Cs0 f23 expr out #txt
Cs0 f23 344 66 344 190 #arcP
Cs0 f4 expr out #txt
Cs0 f4 192 58 192 198 #arcP
Cs0 f6 guid 126B6E8DB3419DE1 #txt
Cs0 f6 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'in.administratorManager.removeClusterNode(in.#selectedClusterNode);' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>remove</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 318 302 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f7 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f7 318 358 20 20 13 0 #rect
Cs0 f7 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 328 322 328 358 #arcP
Cs0 f17 guid 126B6F09791CCB41 #txt
Cs0 f17 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f17 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f17 actionTable 'out=in;
' #txt
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectionChanged</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f17 398 302 20 20 13 0 #rect
Cs0 f17 @|RichDialogProcessStartIcon #fIcon
Cs0 f18 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f18 398 358 20 20 13 0 #rect
Cs0 f18 @|RichDialogProcessEndIcon #fIcon
Cs0 f24 expr out #txt
Cs0 f24 408 322 408 358 #arcP
Cs0 f25 guid 126B73605C3BB577 #txt
Cs0 f25 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f25 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f25 actionTable 'out=in;
' #txt
Cs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>local identifier changed</name>
        <nameStyle>24,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f25 550 302 20 20 13 0 #rect
Cs0 f25 @|RichDialogProcessStartIcon #fIcon
Cs0 f26 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f26 550 358 20 20 13 0 #rect
Cs0 f26 @|RichDialogProcessEndIcon #fIcon
Cs0 f27 expr out #txt
Cs0 f27 560 322 560 358 #arcP
Cs0 f28 guid 126B73B7170D4719 #txt
Cs0 f28 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f28 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f28 actionTable 'out=in;
' #txt
Cs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clusterNodeEnabled</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f28 94 486 20 20 13 0 #rect
Cs0 f28 @|RichDialogProcessStartIcon #fIcon
Cs0 f29 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f29 94 542 20 20 13 0 #rect
Cs0 f29 @|RichDialogProcessEndIcon #fIcon
Cs0 f30 expr out #txt
Cs0 f30 104 506 104 542 #arcP
Cs0 f31 guid 126C26BC76C2DF21 #txt
Cs0 f31 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f31 method canSave() #txt
Cs0 f31 disableUIEvents false #txt
Cs0 f31 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f31 inParameterMapAction 'out.canSave=true;
' #txt
Cs0 f31 outParameterDecl '<java.lang.Boolean canSave> result;
' #txt
Cs0 f31 outParameterMapAction 'result.canSave=in.canSave;
' #txt
Cs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>canSave()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 774 46 20 20 13 0 #rect
Cs0 f31 @|RichDialogMethodStartIcon #fIcon
Cs0 f32 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f32 774 270 20 20 13 0 #rect
Cs0 f32 @|RichDialogProcessEndIcon #fIcon
Cs0 f34 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f34 actionTable 'out=in;
' #txt
Cs0 f34 actionCode 'import java.net.InetAddress;
import ch.ivyteam.ivy.server.configuration.system.db.ClusterNode;
in.canSave = !in.enableClusterServer || in.administratorManager.existsClusterNode(new ClusterNode(null, in.localHostName, in.localIdentifier, "", 0));' #txt
Cs0 f34 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f34 766 100 36 24 20 -2 #rect
Cs0 f34 @|RichDialogProcessStepIcon #fIcon
Cs0 f35 expr out #txt
Cs0 f35 784 66 784 100 #arcP
Cs0 f36 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f36 770 162 28 28 14 0 #rect
Cs0 f36 @|AlternativeIcon #fIcon
Cs0 f37 expr out #txt
Cs0 f37 784 124 784 162 #arcP
Cs0 f33 expr in #txt
Cs0 f33 outCond in.canSave #txt
Cs0 f33 784 190 784 270 #arcP
Cs0 f38 targetWindow NEW:card: #txt
Cs0 f38 targetDisplay TOP #txt
Cs0 f38 richDialogId ch.ivyteam.ivy.commondialogs.MessageDialog #txt
Cs0 f38 startMethod showMessageWithTitle(String,String) #txt
Cs0 f38 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f38 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Cs0 f38 requestMappingAction 'param.aMessageTitle="Missing local cluster node in list of cluster nodes";
param.aMessageText="Please add the local cluster node to the list of cluster nodes before you save!";
' #txt
Cs0 f38 responseActionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f38 responseMappingAction 'out=in;
' #txt
Cs0 f38 windowConfiguration '{/title "\"Can not save\""/width 500 /height 150 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
Cs0 f38 isAsynch false #txt
Cs0 f38 isInnerRd true #txt
Cs0 f38 846 164 36 24 20 -2 #rect
Cs0 f38 @|RichDialogIcon #fIcon
Cs0 f39 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f39 854 270 20 20 13 0 #rect
Cs0 f39 @|RichDialogProcessEndIcon #fIcon
Cs0 f40 expr in #txt
Cs0 f40 798 176 846 176 #arcP
Cs0 f41 expr out #txt
Cs0 f41 864 188 864 270 #arcP
Cs0 f42 targetWindow NEW:card: #txt
Cs0 f42 targetDisplay TOP #txt
Cs0 f42 richDialogId ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel #txt
Cs0 f42 startMethod start(ch.ivyteam.ivy.server.configuration.system.db.ClusterNode) #txt
Cs0 f42 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f42 requestActionDecl '<ch.ivyteam.ivy.server.configuration.system.db.ClusterNode clusterNode> param;' #txt
Cs0 f42 requestMappingAction 'param.clusterNode=in.addedClusterNode;
' #txt
Cs0 f42 responseActionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f42 responseMappingAction 'out=in;
out.addCanceled=result.canceled;
out.addedClusterNode=result.canceled ? null : result.clusterNode;
' #txt
Cs0 f42 windowConfiguration '{/title "Add New Cluster Node"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Cs0 f42 isAsynch false #txt
Cs0 f42 isInnerRd true #txt
Cs0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Open add 
cluster node dialog</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f42 78 293 36 22 21 -21 #rect
Cs0 f42 @|RichDialogIcon #fIcon
Cs0 f43 expr out #txt
Cs0 f43 96 250 96 293 #arcP
Cs0 f44 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>canceled?</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f44 82 338 28 28 13 -22 #rect
Cs0 f44 @|AlternativeIcon #fIcon
Cs0 f45 expr out #txt
Cs0 f45 96 315 96 338 #arcP
Cs0 f21 expr in #txt
Cs0 f21 outCond in.addCanceled #txt
Cs0 f21 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 96 366 96 414 #arcP
Cs0 f21 0 0.25 -14 0 #arcLabel
Cs0 f46 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData out;
' #txt
Cs0 f46 actionTable 'out=in;
' #txt
Cs0 f46 actionCode in.administratorManager.addClusterNode(in.addedClusterNode); #txt
Cs0 f46 type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
Cs0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new cluster node</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f46 126 380 36 24 24 -5 #rect
Cs0 f46 @|RichDialogProcessStepIcon #fIcon
Cs0 f47 expr in #txt
Cs0 f47 104 358 130 380 #arcP
Cs0 f48 expr out #txt
Cs0 f48 126 404 104 418 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.server.configuration.cluster.Cluster.ClusterData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .ui2RdDataAction 'out.selectedClusterNode=panel.clusterNodesTable.#selectedListEntry as ch.ivyteam.ivy.server.configuration.system.db.ClusterNode;
out.enableClusterServer=panel.enableClusterNodeCheckBox.selected;
out.localIdentifier=panel.localClusterHostIdentifierTextField.valueAsNumber;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.clusterNodesPane.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED
&& in.enableClusterServer;
panel.clusterNodesRemoveButton.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED
&& in.enableClusterServer
&& in.#selectedClusterNode!=null;
panel.clusterNodesTable.listData=in.administratorManager.getClusterNodes();
panel.enableClusterNodeCheckBox.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED;
panel.enableClusterNodeCheckBox.selected=in.enableClusterServer;
panel.localClusterHostIdentifierTextField.valueAsNumber=in.localIdentifier;
panel.localClusterNodeAddButton.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED
&& in.enableClusterServer
&& !(in.administratorManager.existsClusterNode(
       new ch.ivyteam.ivy.server.configuration.system.db.ClusterNode(
            null, in.localHostName, in.localIdentifier, "", 0)));
panel.localClusterNodePane.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED
&& in.enableClusterServer;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f12 mainOut f13 tail #connect
Cs0 f13 head f8 mainIn #connect
Cs0 f8 mainOut f16 tail #connect
Cs0 f16 head f15 mainIn #connect
Cs0 f15 mainOut f14 tail #connect
Cs0 f14 head f9 mainIn #connect
Cs0 f10 mainOut f23 tail #connect
Cs0 f23 head f22 mainIn #connect
Cs0 f3 mainOut f4 tail #connect
Cs0 f4 head f5 mainIn #connect
Cs0 f6 mainOut f11 tail #connect
Cs0 f11 head f7 mainIn #connect
Cs0 f17 mainOut f24 tail #connect
Cs0 f24 head f18 mainIn #connect
Cs0 f25 mainOut f27 tail #connect
Cs0 f27 head f26 mainIn #connect
Cs0 f28 mainOut f30 tail #connect
Cs0 f30 head f29 mainIn #connect
Cs0 f31 mainOut f35 tail #connect
Cs0 f35 head f34 mainIn #connect
Cs0 f34 mainOut f37 tail #connect
Cs0 f37 head f36 in #connect
Cs0 f36 out f33 tail #connect
Cs0 f33 head f32 mainIn #connect
Cs0 f36 out f40 tail #connect
Cs0 f40 head f38 mainIn #connect
Cs0 f38 mainOut f41 tail #connect
Cs0 f41 head f39 mainIn #connect
Cs0 f19 mainOut f43 tail #connect
Cs0 f43 head f42 mainIn #connect
Cs0 f42 mainOut f45 tail #connect
Cs0 f45 head f44 in #connect
Cs0 f44 out f21 tail #connect
Cs0 f21 head f20 mainIn #connect
Cs0 f44 out f47 tail #connect
Cs0 f47 head f46 mainIn #connect
Cs0 f46 mainOut f48 tail #connect
Cs0 f48 head f20 mainIn #connect
