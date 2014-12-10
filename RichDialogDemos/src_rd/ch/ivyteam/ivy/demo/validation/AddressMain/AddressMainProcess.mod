[Ivy]
[>Created: Fri Jun 26 15:38:20 CEST 2009]
120EBBF329071FD0 3.12 #module
>Proto >Proto Collection #zClass
As0 AdresMainProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStep f3 '' #zField
As0 @PushWFArc f4 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AdresMainProcess #zField
As0 f0 guid 120EBBF32BF961E1 #txt
As0 f0 type ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents false #txt
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
As0 f0 90 40 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainData #txt
As0 f1 87 137 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f3 actionDecl 'ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 panelTable 'panel.additionalContactCheckBox.selected=false;
' #txt
As0 f3 type ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainData #txt
As0 f3 82 84 36 24 20 -2 #rect
As0 f3 @|RichDialogProcessStepIcon #fIcon
As0 f4 expr out #txt
As0 f4 100 60 100 84 #arcP
As0 f2 expr out #txt
As0 f2 100 108 100 137 #arcP
>Proto As0 .type ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f4 tail #connect
As0 f4 head f3 mainIn #connect
As0 f3 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
