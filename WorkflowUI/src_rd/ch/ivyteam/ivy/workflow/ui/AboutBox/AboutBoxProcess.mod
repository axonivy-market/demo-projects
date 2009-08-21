[Ivy]
[>Created: Fri Aug 21 14:22:30 CEST 2009]
1233CBD13F2C0BB3 3.12 #module
>Proto >Proto Collection #zClass
As0 AboutBoxProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogEnd f3 '' #zField
As0 @RichDialogProcessStart f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogProcessStep f6 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AboutBoxProcess #zField
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 guid 1233CBD145FF21EC #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 90 40 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
As0 f1 90 140 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
As0 f3 guid 1233CCDAABF271E3 #txt
As0 f3 246 134 20 20 13 0 #rect
As0 f3 @|RichDialogEndIcon #fIcon
As0 f4 guid 1233CCDB6B57CBFB #txt
As0 f4 type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
As0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData out;
' #txt
As0 f4 actionTable 'out=in;
' #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Start1</name>
    </language>
</elementInfo>
' #txt
As0 f4 246 38 20 20 13 0 #rect
As0 f4 @|RichDialogProcessStartIcon #fIcon
As0 f5 expr out #txt
As0 f5 256 58 256 134 #arcP
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load About info</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ui.advisor.WfUiAdvisor;

panel.productTextField.text = WfUiAdvisor.getApplicationName();
panel.versionTextField.text= WfUiAdvisor.getApplicationVersion();
panel.revTextField.text=WfUiAdvisor.getRevisionNumber();
panel.copyrightTextField.text=WfUiAdvisor.getCopyright();
panel.buildTextField.text = WfUiAdvisor.getBuildDate();' #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
As0 f6 78 84 36 24 20 -2 #rect
As0 f6 @|RichDialogProcessStepIcon #fIcon
As0 f7 expr out #txt
As0 f7 99 59 97 84 #arcP
As0 f2 expr out #txt
As0 f2 97 108 99 140 #arcP
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.AboutBox.AboutBoxData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f4 mainOut f5 tail #connect
As0 f5 head f3 mainIn #connect
As0 f0 mainOut f7 tail #connect
As0 f7 head f6 mainIn #connect
As0 f6 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
