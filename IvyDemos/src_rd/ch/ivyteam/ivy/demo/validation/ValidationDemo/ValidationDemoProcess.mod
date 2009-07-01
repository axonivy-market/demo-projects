[Ivy]
[>Created: Fri Jun 26 16:22:45 CEST 2009]
1221CCADF0246C85 3.12 #module
>Proto >Proto Collection #zClass
Vs0 ValidationDemoProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @PushWFArc f2 '' #zField
>Proto Vs0 Vs0 ValidationDemoProcess #zField
Vs0 f0 guid 1221CCADF214994C #txt
Vs0 f0 type ch.ivyteam.ivy.demo.validation.ValidationDemo.ValidationDemoData #txt
Vs0 f0 method start() #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 outParameterDecl '<> result;
' #txt
Vs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/window_dialog\";\nparam.title=\"Validation Demo\";\nparam.subtitle=\"Please enter your personal information into the registration form\";\n"/initScript ""}/addressMainPanel {/fieldName "addressMainPanel"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f0 90 40 20 20 13 0 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type ch.ivyteam.ivy.demo.validation.ValidationDemo.ValidationDemoData #txt
Vs0 f1 87 137 26 26 14 0 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f2 expr out #txt
Vs0 f2 100 60 100 137 #arcP
>Proto Vs0 .type ch.ivyteam.ivy.demo.validation.ValidationDemo.ValidationDemoData #txt
>Proto Vs0 .processKind RICH_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f0 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
