[Ivy]
[>Created: Tue Feb 28 13:52:55 CET 2017]
157E2C1BEC4930AC 3.20 #module
>Proto >Proto Collection #zClass
ss0 ConfigurationOverviewProcess Big #zClass
ss0 RD #cInfo
ss0 #process
ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ss0 @TextInP .resExport .resExport #zField
ss0 @TextInP .type .type #zField
ss0 @TextInP .processKind .processKind #zField
ss0 @AnnotationInP-0n ai ai #zField
ss0 @MessageFlowInP-0n messageIn messageIn #zField
ss0 @MessageFlowOutP-0n messageOut messageOut #zField
ss0 @TextInP .xml .xml #zField
ss0 @TextInP .responsibility .responsibility #zField
ss0 @RichDialogInitStart f0 '' #zField
ss0 @RichDialogProcessEnd f1 '' #zField
ss0 @GridStep f3 '' #zField
ss0 @PushWFArc f4 '' #zField
ss0 @PushWFArc f2 '' #zField
>Proto ss0 ss0 ConfigurationOverviewProcess #zField
ss0 f0 guid 157E2C1BEDF33419 #txt
ss0 f0 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f0 method start() #txt
ss0 f0 disableUIEvents true #txt
ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
ss0 f0 outParameterDecl '<> result;
' #txt
ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
ss0 f0 83 51 26 26 -16 15 #rect
ss0 f0 @|RichDialogInitStartIcon #fIcon
ss0 f1 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f1 339 51 26 26 0 12 #rect
ss0 f1 @|RichDialogProcessEndIcon #fIcon
ss0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f3 actionTable 'out=in;
out.databaseSettings=com.axon.ivy.engine.config.SystemDatabaseSettings.create();
' #txt
ss0 f3 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f3 168 42 112 44 -8 -8 #rect
ss0 f3 @|StepIcon #fIcon
ss0 f4 expr out #txt
ss0 f4 109 64 168 64 #arcP
ss0 f2 expr out #txt
ss0 f2 280 64 339 64 #arcP
>Proto ss0 .type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
>Proto ss0 .processKind HTML_DIALOG #txt
>Proto ss0 -8 -8 16 16 16 26 #rect
>Proto ss0 '' #fIcon
ss0 f0 mainOut f4 tail #connect
ss0 f4 head f3 mainIn #connect
ss0 f3 mainOut f2 tail #connect
ss0 f2 head f1 mainIn #connect