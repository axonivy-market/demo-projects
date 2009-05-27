[Ivy]
[>Created: Wed May 27 21:42:59 CEST 2009]
1180E22A4CFB14EE 3.11 #module
>Proto >Proto Collection #zClass
Ms0 MessageDialogProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogEnd f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @RichDialogProcessStep f2 '' #zField
Ms0 @RichDialogInitStart f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @RichDialogProcessStep f10 '' #zField
Ms0 @PushWFArc f12 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @PushWFArc f7 '' #zField
>Proto Ms0 Ms0 MessageDialogProcess #zField
Ms0 f0 guid 1180E3DBCE9DCCB8 #txt
Ms0 f0 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f0 method showMessage(String) #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String message> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 inParameterMapAction 'out.messageText=param.message;
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 embeddedRdInitializations '* ' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showMessage(String)</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 30 22 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f1 27 251 26 26 14 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 guid 1180E404452D8691 #txt
Ms0 f3 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 478 30 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f4 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f4 guid 1180E404ABBE641C #txt
Ms0 f4 475 243 26 26 14 0 #rect
Ms0 f4 @|RichDialogEndIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 488 50 488 243 #arcP
Ms0 f2 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData out;
' #txt
Ms0 f2 actionTable 'out=in;
' #txt
Ms0 f2 actionCode 'import com.ulcjava.base.application.util.HTMLUtilities;

panel.messageTextHtmlPane.setText(HTMLUtilities.convertToHtml(in.messageText));' #txt
Ms0 f2 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set text</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f2 22 132 36 24 22 -20 #rect
Ms0 f2 @|RichDialogProcessStepIcon #fIcon
Ms0 f8 guid 119CE58615425133 #txt
Ms0 f8 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f8 method showMessageWithTitle(String,String) #txt
Ms0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String aMessageTitle,java.lang.String aMessageText> param = methodEvent.getInputArguments();
' #txt
Ms0 f8 inParameterMapAction 'out.messageText=param.aMessageText;
out.messageTitle=param.aMessageTitle;
' #txt
Ms0 f8 outParameterDecl '<> result;
' #txt
Ms0 f8 embeddedRdInitializations '* ' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showMessageWithTitle(String,String)</name>
        <nameStyle>35,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 158 30 20 20 13 0 #rect
Ms0 f8 @|RichDialogInitStartIcon #fIcon
Ms0 f9 expr out #txt
Ms0 f9 168 50 58 144 #arcP
Ms0 f9 1 168 144 #addKink
Ms0 f9 1 0.29654417157321455 0 0 #arcLabel
Ms0 f10 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData out;
' #txt
Ms0 f10 actionTable 'out=in;
' #txt
Ms0 f10 actionCode 'panel.getRootPane().setDefaultButton(panel.okButton);
panel.okButton.requestFocus();' #txt
Ms0 f10 type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
Ms0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default button</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f10 22 188 36 24 20 -2 #rect
Ms0 f10 @|RichDialogProcessStepIcon #fIcon
Ms0 f12 expr out #txt
Ms0 f12 40 42 40 132 #arcP
Ms0 f11 expr out #txt
Ms0 f11 40 156 40 188 #arcP
Ms0 f7 expr out #txt
Ms0 f7 40 212 40 251 #arcP
Ms0 f7 0 0.34134107728219387 0 0 #arcLabel
>Proto Ms0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>343</swimlaneSize>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16763905</swimlaneColor>
</elementInfo>
' #txt
>Proto Ms0 .type ch.ivyteam.ivy.addons.commondialogs.MessageDialog.MessageDialogData #txt
>Proto Ms0 .processKind RICH_DIALOG #txt
>Proto Ms0 .rdData2UIAction 'panel.messageTitleLabel.text=in.messageTitle;
panel.messageTitleLabel.visible=in.messageTitle.trim().length() > 0;
' #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f8 mainOut f9 tail #connect
Ms0 f9 head f2 mainIn #connect
Ms0 f0 mainOut f12 tail #connect
Ms0 f12 head f2 mainIn #connect
Ms0 f2 mainOut f11 tail #connect
Ms0 f11 head f10 mainIn #connect
Ms0 f10 mainOut f7 tail #connect
Ms0 f7 head f1 mainIn #connect
