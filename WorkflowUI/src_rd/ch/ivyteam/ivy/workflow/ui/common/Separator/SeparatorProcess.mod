[Ivy]
[>Created: Tue Sep 07 11:49:26 CEST 2010]
129A809AFDE48719 3.12 #module
>Proto >Proto Collection #zClass
Ss0 SeparatorProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogInitStart f3 '' #zField
Ss0 @RichDialogProcessEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @RichDialogMethodStart f6 '' #zField
Ss0 @RichDialogMethodStart f7 '' #zField
Ss0 @RichDialogProcessEnd f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogProcessEnd f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
>Proto Ss0 Ss0 SeparatorProcess #zField
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 guid 129A809AFFEA534C #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 90 40 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f1 90 182 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 100 60 100 182 #arcP
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 129A80E9FC9577F5 #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f3 method start(String) #txt
Ss0 f3 disableUIEvents true #txt
Ss0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String separatorText> param = methodEvent.getInputArguments();
' #txt
Ss0 f3 inActionCode 'out.separatorText = param.separatorText;

' #txt
Ss0 f3 outParameterDecl '<> result;
' #txt
Ss0 f3 embeddedRdInitializations '* ' #txt
Ss0 f3 182 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogInitStartIcon #fIcon
Ss0 f4 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f4 182 182 20 20 13 0 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 192 58 192 182 #arcP
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSeparatorText()</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 guid 129A81205E715E77 #txt
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f6 method getSeparatorText() #txt
Ss0 f6 disableUIEvents false #txt
Ss0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f6 outParameterDecl '<java.lang.String separatorText> result;
' #txt
Ss0 f6 outActionCode 'result.separatorText = in.separatorText;' #txt
Ss0 f6 342 38 20 20 13 0 #rect
Ss0 f6 @|RichDialogMethodStartIcon #fIcon
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSeparatorText(String)</name>
    </language>
</elementInfo>
' #txt
Ss0 f7 guid 129A8120F7C64465 #txt
Ss0 f7 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f7 method setSeparatorText(String) #txt
Ss0 f7 disableUIEvents false #txt
Ss0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String separatorText> param = methodEvent.getInputArguments();
' #txt
Ss0 f7 inActionCode 'out.separatorText = param.separatorText;' #txt
Ss0 f7 outParameterDecl '<> result;
' #txt
Ss0 f7 526 46 20 20 13 0 #rect
Ss0 f7 @|RichDialogMethodStartIcon #fIcon
Ss0 f8 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f8 342 182 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessEndIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 352 58 352 182 #arcP
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
Ss0 f10 526 182 20 20 13 0 #rect
Ss0 f10 @|RichDialogProcessEndIcon #fIcon
Ss0 f11 expr out #txt
Ss0 f11 536 66 536 182 #arcP
>Proto Ss0 .rdData2UIAction 'panel.separatorLabel.text=in.separatorText;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Getters/Setters</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>304</swimlaneSize>
    <swimlaneSize>424</swimlaneSize>
    <swimlaneColor>-16737946</swimlaneColor>
    <swimlaneColor>-16737895</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f6 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f7 mainOut f11 tail #connect
Ss0 f11 head f10 mainIn #connect
