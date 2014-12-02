[Ivy]
[>Created: Tue Feb 01 17:30:04 CET 2011]
126D20DF84D39648 3.15 #module
>Proto >Proto Collection #zClass
Cs0 ClusterDetailPanelProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogInitStart f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogProcessStart f7 '' #zField
Cs0 @RichDialogEnd f8 '' #zField
Cs0 @RichDialogEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogProcessStart f12 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @PushWFArc f14 '' #zField
>Proto Cs0 Cs0 ClusterDetailPanelProcess #zField
Cs0 f0 guid 126D20DFC069C5F2 #txt
Cs0 f0 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
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
Cs0 f0 90 40 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f3 guid 126D2169CE42F590 #txt
Cs0 f3 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f3 method start(ch.ivyteam.ivy.server.configuration.system.db.ClusterNode) #txt
Cs0 f3 disableUIEvents false #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.system.db.ClusterNode clusterNode> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 inParameterMapAction 'out.canceled=true;
out.clusterNode=param.clusterNode;
' #txt
Cs0 f3 inActionCode 'import ch.ivyteam.util.NetworkUtil;
import java.net.InetAddress;

for (InetAddress address : NetworkUtil.getAllApplicationUsableInetAddresses())
{
	out.ipAddresses.add(address.getHostAddress());
}' #txt
Cs0 f3 outParameterDecl '<ch.ivyteam.ivy.server.configuration.system.db.ClusterNode clusterNode,java.lang.Boolean canceled> result;
' #txt
Cs0 f3 outParameterMapAction 'result.clusterNode=in.clusterNode;
result.canceled=in.canceled;
' #txt
Cs0 f3 embeddedRdInitializations '* ' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ClusterNode)</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 190 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogInitStartIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f4 190 142 20 20 13 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 200 58 200 142 #arcP
Cs0 f6 guid 126D25B1D0112C49 #txt
Cs0 f6 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData out;
' #txt
Cs0 f6 actionTable 'out=in;
out.canceled=false;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 86 278 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f7 guid 126D25B2F7FF638E #txt
Cs0 f7 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f7 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData out;
' #txt
Cs0 f7 actionTable 'out=in;
out.canceled=true;
' #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Cancel</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 238 278 20 20 13 0 #rect
Cs0 f7 @|RichDialogProcessStartIcon #fIcon
Cs0 f8 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f8 guid 126D25B444FDF794 #txt
Cs0 f8 86 390 20 20 13 0 #rect
Cs0 f8 @|RichDialogEndIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f9 guid 126D25B4EFD654CE #txt
Cs0 f9 238 382 20 20 13 0 #rect
Cs0 f9 @|RichDialogEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 96 298 96 390 #arcP
Cs0 f11 expr out #txt
Cs0 f11 248 298 248 382 #arcP
Cs0 f12 guid 126D25BC2D5E00A7 #txt
Cs0 f12 type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
Cs0 f12 actionDecl 'ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'panel.getRootPane().setDefaultButton(panel.okButton);
panel.okButton.setEnabler(panel.ipPortTextField);' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load
- set default button
- add enabler to add button</name>
        <nameStyle>53,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 270 94 20 20 25 -10 #rect
Cs0 f12 @|RichDialogProcessStartIcon #fIcon
Cs0 f13 expr out #txt
Cs0 f13 271 109 208 146 #arcP
Cs0 f14 expr out #txt
Cs0 f14 107 57 192 144 #arcP
>Proto Cs0 .ui2RdDataAction 'out.clusterNode.ipAddress=panel.ipAddressComboBox.#selectedListEntry as String;
out.clusterNode.ipPort=panel.ipPortTextField.valueAsNumber;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.hostNameTextField.text=in.clusterNode.getHostName();
panel.ipAddressComboBox.listData=in.ipAddresses;
panel.ipAddressComboBox.selectedListEntry=in.clusterNode.ipAddress;
panel.ipPortTextField.valueAsNumber=in.clusterNode.ipPort;
panel.localIdentifierTextField.valueAsNumber=in.clusterNode.getLocalIdentifier();
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel.ClusterDetailPanelData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f8 mainIn #connect
Cs0 f7 mainOut f11 tail #connect
Cs0 f11 head f9 mainIn #connect
Cs0 f12 mainOut f13 tail #connect
Cs0 f13 head f4 mainIn #connect
Cs0 f0 mainOut f14 tail #connect
Cs0 f14 head f4 mainIn #connect
