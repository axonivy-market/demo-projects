[Ivy]
[>Created: Mon Aug 24 15:55:52 CEST 2009]
1233CBD13F2C0BB3 3.12 #module
>Proto >Proto Collection #zClass
As0 AboutDialogProcess Big #zClass
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
As0 @PushWFArc f2 '' #zField
As0 @RichDialogInitStart f8 '' #zField
As0 @PushWFArc f9 '' #zField
As0 @PushWFArc f7 '' #zField
>Proto As0 As0 AboutDialogProcess #zField
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 guid 1233CBD145FF21EC #txt
As0 f0 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.pmv=ivy.request.getProcessModelVersion();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 62 86 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f1 30 174 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f3 guid 1233CCDAABF271E3 #txt
As0 f3 286 174 20 20 13 0 #rect
As0 f3 @|RichDialogEndIcon #fIcon
As0 f4 guid 1233CCDB6B57CBFB #txt
As0 f4 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f4 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData out;
' #txt
As0 f4 actionTable 'out=in;
' #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f4 286 38 20 20 13 0 #rect
As0 f4 @|RichDialogProcessStartIcon #fIcon
As0 f5 expr out #txt
As0 f5 296 58 296 174 #arcP
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load About info</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import ch.ivyteam.ivy.addons.util.ProjectAdvisor;

ProjectAdvisor advisor = ProjectAdvisor.getInstance(in.pmv);

panel.productTextField.text = advisor.getApplicationName();
panel.versionTextField.text= advisor.getApplicationVersion(false);
panel.revTextField.text= advisor.getRevisionNumber();
panel.copyrightTextField.text= advisor.getCopyright();
panel.buildTextField.text = advisor.getBuildDate();' #txt
As0 f6 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f6 22 124 36 24 24 -8 #rect
As0 f6 @|RichDialogProcessStepIcon #fIcon
As0 f2 expr out #txt
As0 f2 40 148 40 174 #arcP
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IProcessModelVersion)</name>
        <nameStyle>27,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f8 guid 1234CAE22A7D4E7F #txt
As0 f8 type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
As0 f8 method start(ch.ivyteam.ivy.application.IProcessModelVersion) #txt
As0 f8 disableUIEvents true #txt
As0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.application.IProcessModelVersion pmv> param = methodEvent.getInputArguments();
' #txt
As0 f8 inParameterMapAction 'out.pmv=param.pmv;
' #txt
As0 f8 outParameterDecl '<> result;
' #txt
As0 f8 embeddedRdInitializations '* ' #txt
As0 f8 30 38 20 20 13 0 #rect
As0 f8 @|RichDialogInitStartIcon #fIcon
As0 f9 expr out #txt
As0 f9 40 58 40 124 #arcP
As0 f7 expr out #txt
As0 f7 65 103 50 124 #arcP
>Proto As0 .type ch.ivyteam.ivy.addons.commondialogs.AboutDialog.AboutDialogData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>210</swimlaneSize>
    <swimlaneSize>178</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-13408513</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f4 mainOut f5 tail #connect
As0 f5 head f3 mainIn #connect
As0 f6 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f8 mainOut f9 tail #connect
As0 f9 head f6 mainIn #connect
As0 f0 mainOut f7 tail #connect
As0 f7 head f6 mainIn #connect
