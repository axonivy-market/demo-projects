[Ivy]
[>Created: Wed May 27 21:44:50 CEST 2009]
1180E624C69827DC 3.11 #module
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
Es0 @PushWFArc f13 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogProcessStep f14 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @PushWFArc f11 '' #zField
Es0 @RichDialogProcessStep f16 '' #zField
Es0 @PushWFArc f17 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 ErrorDialogProcess #zField
Es0 f0 guid 1180E6FD55B71527 #txt
Es0 f0 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f0 method showError(java.lang.Throwable,Boolean,Boolean) #txt
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
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showError(Throwable,Boolean,Boolean)</name>
        <nameStyle>36,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 54 62 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f1 51 163 26 26 14 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetails</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f3 guid 1180E7011B195DC0 #txt
Es0 f3 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 334 70 20 20 13 0 #rect
Es0 f3 @|RichDialogProcessStartIcon #fIcon
Es0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>copy</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f4 guid 1180E701A7533787 #txt
Es0 f4 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f4 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f4 actionTable 'out=in;
' #txt
Es0 f4 438 70 20 20 13 0 #rect
Es0 f4 @|RichDialogProcessStartIcon #fIcon
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f5 guid 1180E70208C97B45 #txt
Es0 f5 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f5 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f5 actionTable 'out=in;
' #txt
Es0 f5 662 70 20 20 13 0 #rect
Es0 f5 @|RichDialogProcessStartIcon #fIcon
Es0 f6 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f6 guid 1180E702B2429D3B #txt
Es0 f6 659 163 26 26 14 0 #rect
Es0 f6 @|RichDialogEndIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 672 90 672 163 #arcP
Es0 f8 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f8 435 163 26 26 14 0 #rect
Es0 f8 @|RichDialogProcessEndIcon #fIcon
Es0 f9 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f9 331 163 26 26 14 0 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f12 targetWindow NEW #txt
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
Es0 f12 windowConfiguration '#Tue May 19 13:50:20 CEST 2009
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=0
title=Error Details
' #txt
Es0 f12 isAsynch false #txt
Es0 f12 isInnerRd true #txt
Es0 f12 isDialog true #txt
Es0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Es0 f12 326 116 36 24 20 -2 #rect
Es0 f12 @|RichDialogIcon #fIcon
Es0 f13 expr out #txt
Es0 f13 344 90 344 116 #arcP
Es0 f10 expr out #txt
Es0 f10 344 140 344 163 #arcP
Es0 f14 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData out;
' #txt
Es0 f14 actionTable 'out=in;
' #txt
Es0 f14 type ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogData #txt
Es0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>how to write to
client clipboard?</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f14 430 116 36 24 20 -2 #rect
Es0 f14 @|RichDialogProcessStepIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 448 90 448 116 #arcP
Es0 f11 expr out #txt
Es0 f11 448 140 448 163 #arcP
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
Es0 f16 46 116 36 24 20 -2 #rect
Es0 f16 @|RichDialogProcessStepIcon #fIcon
Es0 f17 expr out #txt
Es0 f17 64 82 64 116 #arcP
Es0 f2 expr out #txt
Es0 f2 64 140 64 163 #arcP
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneSize>421</swimlaneSize>
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
panel.showDetailsButton.visible=in.showDetailButton;
panel.errorMessageTextArea.text=in.error.getMessage()!=null?in.error.getMessage():in.error.getClass().getSimpleName();
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f5 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f3 mainOut f13 tail #connect
Es0 f13 head f12 mainIn #connect
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
