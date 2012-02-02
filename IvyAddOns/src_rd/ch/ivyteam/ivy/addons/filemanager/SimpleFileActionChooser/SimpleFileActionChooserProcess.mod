[Ivy]
[>Created: Mon Oct 11 11:56:05 CEST 2010]
128D9ECDA4B582BE 3.13 #module
>Proto >Proto Collection #zClass
Ss0 SimpleFileActionChooserProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogInitStart f3 '' #zField
Ss0 @RichDialogProcessStep f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessStart f9 '' #zField
Ss0 @RichDialogProcessStart f10 '' #zField
Ss0 @RichDialogEnd f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialogMethodStart f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @RichDialogMethodStart f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @RichDialogMethodStart f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
>Proto Ss0 Ss0 SimpleFileActionChooserProcess #zField
Ss0 f0 guid 128D9ECDA6A98781 #txt
Ss0 f0 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 90 40 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f1 90 140 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 100 60 100 140 #arcP
Ss0 f3 guid 128D9F4018618288 #txt
Ss0 f3 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f3 method start(String) #txt
Ss0 f3 disableUIEvents true #txt
Ss0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String label> param = methodEvent.getInputArguments();
' #txt
Ss0 f3 inParameterMapAction 'out.label="<html>"+param.label;
' #txt
Ss0 f3 outParameterDecl '<java.lang.String returnedAction> result;
' #txt
Ss0 f3 outParameterMapAction 'result.returnedAction=in.returnedAction;
' #txt
Ss0 f3 embeddedRdInitializations '* ' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 94 198 20 20 13 0 #rect
Ss0 f3 @|RichDialogInitStartIcon #fIcon
Ss0 f4 actionDecl 'ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 actionCode 'if(in.label.trim().equals("")){
	out.label=ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/label/chooseAction");
}
out.returnedAction="cancel";

panel.getRootPane().setDefaultButton(panel.editButton);
' #txt
Ss0 f4 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f4 86 252 36 24 20 -2 #rect
Ss0 f4 @|RichDialogProcessStepIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 104 218 104 252 #arcP
Ss0 f6 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f6 94 310 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 104 276 104 310 #arcP
Ss0 f8 guid 128D9F5474D70903 #txt
Ss0 f8 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData out;
' #txt
Ss0 f8 actionTable 'out=in;
out.returnedAction="edit";
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 446 102 20 20 -10 -29 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 guid 128D9F552B2EE280 #txt
Ss0 f9 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f9 actionDecl 'ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData out;
' #txt
Ss0 f9 actionTable 'out=in;
out.returnedAction="print";
' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>print</name>
        <nameStyle>5,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 582 102 20 20 -14 -29 #rect
Ss0 f9 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 guid 128D9F55E37BBC15 #txt
Ss0 f10 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f10 actionDecl 'ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData out;
' #txt
Ss0 f10 actionTable 'out=in;
out.returnedAction="cancel";
' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 718 102 20 20 -20 -30 #rect
Ss0 f10 @|RichDialogProcessStartIcon #fIcon
Ss0 f11 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f11 guid 128D9F5663293F6E #txt
Ss0 f11 582 198 20 20 13 0 #rect
Ss0 f11 @|RichDialogEndIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 464 117 583 202 #arcP
Ss0 f13 expr out #txt
Ss0 f13 592 122 592 198 #arcP
Ss0 f14 expr out #txt
Ss0 f14 719 117 600 202 #arcP
Ss0 f15 guid 12B9AB6BCD7B4C71 #txt
Ss0 f15 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f15 method _close() #txt
Ss0 f15 disableUIEvents false #txt
Ss0 f15 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f15 inParameterMapAction 'out.returnedAction="cancel";
' #txt
Ss0 f15 outParameterDecl '<> result;
' #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_close()</name>
        <nameStyle>8,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 774 102 20 20 13 0 #rect
Ss0 f15 @|RichDialogMethodStartIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 775 116 600 203 #arcP
Ss0 f17 guid 12B9AB6DDAF248D4 #txt
Ss0 f17 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f17 method _edit() #txt
Ss0 f17 disableUIEvents false #txt
Ss0 f17 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f17 inParameterMapAction 'out.returnedAction="edit";
' #txt
Ss0 f17 outParameterDecl '<> result;
' #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_edit()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 406 102 20 20 -52 -13 #rect
Ss0 f17 @|RichDialogMethodStartIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 424 116 583 203 #arcP
Ss0 f19 guid 12B9AB7058AC810D #txt
Ss0 f19 type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
Ss0 f19 method _print() #txt
Ss0 f19 disableUIEvents false #txt
Ss0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f19 inParameterMapAction 'out.returnedAction="print";
' #txt
Ss0 f19 outParameterDecl '<> result;
' #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_print()</name>
        <nameStyle>8,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 606 102 20 20 13 0 #rect
Ss0 f19 @|RichDialogMethodStartIcon #fIcon
Ss0 f20 expr out #txt
Ss0 f20 613 121 594 198 #arcP
>Proto Ss0 .rdData2UIAction 'panel.infoLabel.text=in.label;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser.SimpleFileActionChooserData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f4 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f8 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f9 mainOut f13 tail #connect
Ss0 f13 head f11 mainIn #connect
Ss0 f10 mainOut f14 tail #connect
Ss0 f14 head f11 mainIn #connect
Ss0 f15 mainOut f16 tail #connect
Ss0 f16 head f11 mainIn #connect
Ss0 f17 mainOut f18 tail #connect
Ss0 f18 head f11 mainIn #connect
Ss0 f19 mainOut f20 tail #connect
Ss0 f20 head f11 mainIn #connect
