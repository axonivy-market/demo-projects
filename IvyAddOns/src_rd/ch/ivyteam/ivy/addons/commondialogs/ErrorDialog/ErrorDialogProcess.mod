[Ivy]
[>Created: Fri May 07 15:19:49 CEST 2010]
1180E624C69827DC 3.12 #module
>Proto >Proto Collection #zClass
Es0 ErrorDialogProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @RichDialogProcessStart f3 '' #zField
Es0 @RichDialogProcessStart f4 '' #zField
Es0 @RichDialogProcessStart f5 '' #zField
Es0 @RichDialogEnd f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @RichDialogProcessEnd f8 '' #zField
Es0 @RichDialogProcessEnd f9 '' #zField
Es0 @RichDialog f12 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogProcessStep f14 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @PushWFArc f11 '' #zField
Es0 @RichDialogProcessStep f16 '' #zField
Es0 @PushWFArc f17 '' #zField
Es0 @PushWFArc f2 '' #zField
Es0 @RichDialogInitStart f18 '' #zField
Es0 @PushWFArc f19 '' #zField
Es0 @Alternative f20 '' #zField
Es0 @PushWFArc f21 '' #zField
Es0 @PushWFArc f13 '' #zField
Es0 @RichDialog f22 '' #zField
Es0 @PushWFArc f23 '' #zField
Es0 @PushWFArc f24 '' #zField
>Proto Es0 Es0 ErrorDialogProcess #zField
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showError(Throwable,Boolean,Boolean)</name>
        <nameStyle>36,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 guid 1180E6FD55B71527 #txt
Es0 f0 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f0 method showError(java.lang.Throwable,Boolean,Boolean) #txt
Es0 f0 disableUIEvents false #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Throwable error,java.lang.Boolean showCopyButton,java.lang.Boolean showDetailButton> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inParameterMapAction 'out.error=param.error;
out.showCopyButton=param.showCopyButton;
out.showDetailButton=param.showDetailButton;
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 embeddedRdInitializations '* ' #txt
Es0 f0 54 62 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f1 51 219 26 26 14 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 guid 1180E7011B195DC0 #txt
Es0 f3 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetails</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f3 582 70 20 20 13 0 #rect
Es0 f3 @|RichDialogProcessStartIcon #fIcon
Es0 f4 guid 1180E701A7533787 #txt
Es0 f4 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f4 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f4 actionTable 'out=in;
' #txt
Es0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>copy</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f4 862 70 20 20 13 0 #rect
Es0 f4 @|RichDialogProcessStartIcon #fIcon
Es0 f5 guid 1180E70208C97B45 #txt
Es0 f5 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f5 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f5 actionTable 'out=in;
' #txt
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f5 974 70 20 20 13 0 #rect
Es0 f5 @|RichDialogProcessStartIcon #fIcon
Es0 f6 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f6 guid 1180E702B2429D3B #txt
Es0 f6 971 219 26 26 14 0 #rect
Es0 f6 @|RichDialogEndIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 984 90 984 219 #arcP
Es0 f8 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f8 859 219 26 26 14 0 #rect
Es0 f8 @|RichDialogProcessEndIcon #fIcon
Es0 f9 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f9 579 219 26 26 14 0 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f12 targetDisplay TOP #txt
Es0 f12 richDialogId ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog #txt
Es0 f12 startMethod showDetailError(java.lang.Throwable) #txt
Es0 f12 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f12 requestActionDecl '<java.lang.Throwable error> param;' #txt
Es0 f12 requestMappingAction 'param.error=in.error;
' #txt
Es0 f12 responseActionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f12 responseMappingAction 'out=in;
' #txt
Es0 f12 windowConfiguration '{/title "Error Details"/width 800 /height 600 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Es0 f12 isAsynch false #txt
Es0 f12 isInnerRd true #txt
Es0 f12 isDialog true #txt
Es0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show 
error detail</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f12 574 164 36 24 20 -2 #rect
Es0 f12 @|RichDialogIcon #fIcon
Es0 f10 expr out #txt
Es0 f10 592 188 592 219 #arcP
Es0 f14 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f14 actionTable 'out=in;
' #txt
Es0 f14 actionCode 'import ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogHelper;
import ch.ivyteam.ivy.ulc.server.ClientUtil;

String errorMessage;

if (in.#error is initialized)
{
	errorMessage = in.error.getMessage();
}
else
{
	errorMessage = ErrorDialogHelper.writeIvyResultStatusToString(in.ivyResultStatus);
}

ClientUtil.copyToClipboard(errorMessage);
' #txt
Es0 f14 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write to
client clipboard</name>
        <nameStyle>25,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f14 854 148 36 24 20 -2 #rect
Es0 f14 @|RichDialogProcessStepIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 872 90 872 148 #arcP
Es0 f11 expr out #txt
Es0 f11 872 172 872 219 #arcP
Es0 f16 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f16 actionTable 'out=in;
' #txt
Es0 f16 actionCode panel.getRootPane().setDefaultButton(panel.okButton); #txt
Es0 f16 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default button</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f16 46 148 36 24 20 -2 #rect
Es0 f16 @|RichDialogProcessStepIcon #fIcon
Es0 f17 expr out #txt
Es0 f17 64 82 64 148 #arcP
Es0 f2 expr out #txt
Es0 f2 64 172 64 219 #arcP
Es0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showError(IvyResultStatus,Boolean,Boolean)</name>
        <nameStyle>42,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f18 guid 12871AC6DD0D1C28 #txt
Es0 f18 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f18 method showError(ch.ivyteam.ivy.addons.data.technical.IvyResultStatus,Boolean,Boolean) #txt
Es0 f18 disableUIEvents true #txt
Es0 f18 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus,java.lang.Boolean showCopyButton,java.lang.Boolean showDetailButton> param = methodEvent.getInputArguments();
' #txt
Es0 f18 inActionCode 'out.ivyResultStatus = param.ivyResultStatus;
out.showCopyButton = param.showCopyButton;
out.showDetailButton = param.showDetailButton;' #txt
Es0 f18 outParameterDecl '<> result;
' #txt
Es0 f18 embeddedRdInitializations '* ' #txt
Es0 f18 270 62 20 20 13 0 #rect
Es0 f18 @|RichDialogInitStartIcon #fIcon
Es0 f19 expr out #txt
Es0 f19 280 82 82 158 #arcP
Es0 f19 1 280 136 #addKink
Es0 f19 1 0.38113887193118207 0 0 #arcLabel
Es0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show Throwable detail?</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f20 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f20 578 106 28 28 5 -21 #rect
Es0 f20 @|AlternativeIcon #fIcon
Es0 f21 expr out #txt
Es0 f21 592 90 592 106 #arcP
Es0 f13 expr in #txt
Es0 f13 outCond 'in.#error is initialized' #txt
Es0 f13 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f13 592 134 592 164 #arcP
Es0 f22 targetDisplay TOP #txt
Es0 f22 richDialogId ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog #txt
Es0 f22 startMethod showDetailError(ch.ivyteam.ivy.addons.data.technical.IvyResultStatus) #txt
Es0 f22 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f22 requestActionDecl '<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus> param;' #txt
Es0 f22 requestMappingAction 'param.ivyResultStatus=in.ivyResultStatus;
' #txt
Es0 f22 responseActionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f22 responseMappingAction 'out=in;
' #txt
Es0 f22 windowConfiguration '{/title "Error Details"/width 800 /height 600 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Es0 f22 isAsynch false #txt
Es0 f22 isInnerRd true #txt
Es0 f22 isDialog true #txt
Es0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show 
IvyResultStatus detail</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f22 686 164 36 24 20 -2 #rect
Es0 f22 @|RichDialogIcon #fIcon
Es0 f23 expr in #txt
Es0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f23 606 120 704 164 #arcP
Es0 f23 1 704 120 #addKink
Es0 f23 1 0.45454545454545453 10 0 #arcLabel
Es0 f24 expr out #txt
Es0 f24 704 188 604 230 #arcP
Es0 f24 1 704 216 #addKink
Es0 f24 1 0.24593882054344138 0 0 #arcLabel
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>548</swimlaneSize>
    <swimlaneSize>518</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16764007</swimlaneColor>
</elementInfo>
' #txt
>Proto Es0 .type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 .ui2RdDataAction 'out.showCopyButton=panel.copyButton.visible;
out.showDetailButton=panel.showDetailsButton.visible;
' #txt
>Proto Es0 .rdData2UIAction 'panel.copyButton.visible=in.showCopyButton;
panel.errorMessageTextArea.text=in.#error is initialized? in.error.getMessage(): in.ivyResultStatus.message;
panel.showDetailsButton.visible=in.showDetailButton;
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f5 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f12 mainOut f10 tail #connect
Es0 f10 head f9 mainIn #connect
Es0 f4 mainOut f15 tail #connect
Es0 f15 head f14 mainIn #connect
Es0 f14 mainOut f11 tail #connect
Es0 f11 head f8 mainIn #connect
Es0 f0 mainOut f17 tail #connect
Es0 f17 head f16 mainIn #connect
Es0 f16 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
Es0 f18 mainOut f19 tail #connect
Es0 f19 head f16 mainIn #connect
Es0 f3 mainOut f21 tail #connect
Es0 f21 head f20 in #connect
Es0 f20 out f13 tail #connect
Es0 f13 head f12 mainIn #connect
Es0 f20 out f23 tail #connect
Es0 f23 head f22 mainIn #connect
Es0 f22 mainOut f24 tail #connect
Es0 f24 head f9 mainIn #connect
