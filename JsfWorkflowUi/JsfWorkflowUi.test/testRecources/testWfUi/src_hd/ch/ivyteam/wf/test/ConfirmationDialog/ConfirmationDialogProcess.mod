[Ivy]
[>Created: Fri Jun 14 08:31:22 CEST 2013]
13F3DB669CBD2A27 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ConfirmationDialogProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogEnd f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
>Proto Cs0 Cs0 ConfirmationDialogProcess #zField
Cs0 f0 guid 13F3DB669DB801CF #txt
Cs0 f0 type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
Cs0 f0 method start(ch.ivyteam.wf.test.Data) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.wf.test.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
Cs0 f1 86 150 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 96 74 96 150 #arcP
Cs0 f3 guid 13F3DD3A8925699B #txt
Cs0 f3 type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
Cs0 f3 actionDecl 'ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 182 54 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f6 type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
Cs0 f6 guid 13F3DD5B15765330 #txt
Cs0 f6 182 150 20 20 13 0 #rect
Cs0 f6 @|RichDialogEndIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 192 74 192 150 #arcP
>Proto Cs0 .type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
