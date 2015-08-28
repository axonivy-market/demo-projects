[Ivy]
[>Created: Tue Sep 07 12:14:11 CEST 2010]
11A0B8C8AB7EFE49 3.12 #module
>Proto >Proto Collection #zClass
Is0 IntermediateEventElementDisplayProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @MessageFlowInP-0n messageIn messageIn #zField
Is0 @MessageFlowOutP-0n messageOut messageOut #zField
Is0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Is0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Is0 @TextInP .resExport .resExport #zField
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @RichDialogInitStart f0 '' #zField
Is0 @RichDialogProcessEnd f1 '' #zField
Is0 @PushWFArc f2 '' #zField
Is0 @RichDialogInitStart f3 '' #zField
Is0 @PushWFArc f4 '' #zField
Is0 @RichDialogMethodStart f5 '' #zField
Is0 @RichDialogMethodStart f6 '' #zField
Is0 @RichDialogProcessEnd f7 '' #zField
Is0 @PushWFArc f8 '' #zField
Is0 @PushWFArc f9 '' #zField
>Proto Is0 Is0 IntermediateEventElementDisplayProcess #zField
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f0 guid 11A0B8C8B4E695DE #txt
Is0 f0 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f0 method start() #txt
Is0 f0 disableUIEvents false #txt
Is0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Is0 f0 inParameterMapAction 'out.intermediateEventElement=null;
' #txt
Is0 f0 outParameterDecl '<> result;
' #txt
Is0 f0 embeddedRdInitializations '* ' #txt
Is0 f0 94 86 20 20 13 0 #rect
Is0 f0 @|RichDialogInitStartIcon #fIcon
Is0 f1 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f1 91 347 26 26 14 0 #rect
Is0 f1 @|RichDialogProcessEndIcon #fIcon
Is0 f2 expr out #txt
Is0 f2 104 106 104 347 #arcP
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IIntermediateEventElement)</name>
        <nameStyle>32,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f3 guid 11A0BCB8578FCF3B #txt
Is0 f3 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f3 method start(ch.ivyteam.ivy.workflow.IIntermediateEventElement) #txt
Is0 f3 disableUIEvents false #txt
Is0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IIntermediateEventElement aIntermediateEventElement> param = methodEvent.getInputArguments();
' #txt
Is0 f3 inParameterMapAction 'out.intermediateEventElement=param.aIntermediateEventElement;
' #txt
Is0 f3 outParameterDecl '<> result;
' #txt
Is0 f3 embeddedRdInitializations '* ' #txt
Is0 f3 174 94 20 20 13 0 #rect
Is0 f3 @|RichDialogInitStartIcon #fIcon
Is0 f4 expr out #txt
Is0 f4 184 114 117 360 #arcP
Is0 f4 1 184 360 #addKink
Is0 f4 0 0.7497133987788428 0 0 #arcLabel
Is0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isInitialized()</name>
        <nameStyle>15,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f5 guid 11A0BCC8F2A52121 #txt
Is0 f5 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f5 method isInitialized() #txt
Is0 f5 disableUIEvents false #txt
Is0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Is0 f5 outParameterDecl '<java.lang.Boolean aInitialized> result;
' #txt
Is0 f5 outParameterMapAction 'result.aInitialized=(in.#intermediateEventElement != null);
' #txt
Is0 f5 334 94 20 20 13 0 #rect
Is0 f5 @|RichDialogMethodStartIcon #fIcon
Is0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setIntermediateEventElement(IIntermediateEventElement)</name>
        <nameStyle>54,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f6 guid 11A0BCCADD59FE96 #txt
Is0 f6 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f6 method setIntermediateEventElement(ch.ivyteam.ivy.workflow.IIntermediateEventElement) #txt
Is0 f6 disableUIEvents false #txt
Is0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IIntermediateEventElement aIntermediateEventElement> param = methodEvent.getInputArguments();
' #txt
Is0 f6 inParameterMapAction 'out.intermediateEventElement=param.aIntermediateEventElement;
' #txt
Is0 f6 outParameterDecl '<> result;
' #txt
Is0 f6 422 94 20 20 13 0 #rect
Is0 f6 @|RichDialogMethodStartIcon #fIcon
Is0 f7 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
Is0 f7 331 347 26 26 14 0 #rect
Is0 f7 @|RichDialogProcessEndIcon #fIcon
Is0 f8 expr out #txt
Is0 f8 344 114 344 347 #arcP
Is0 f9 expr out #txt
Is0 f9 432 114 357 360 #arcP
Is0 f9 1 432 360 #addKink
Is0 f9 0 0.6720422192213075 0 0 #arcLabel
>Proto Is0 .rdData2UIAction 'panel.descriptionTextArea.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getDescription() is initialized? in.intermediateEventElement.getDescription(): "n/a");
panel.identifierTextField.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getId() is initialized? in.intermediateEventElement.getId().toString(): "n/a");
panel.intermediateEventBeanClassNameTextField.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getIntermediateEventBeanClassName() is initialized? in.intermediateEventElement.getIntermediateEventBeanClassName(): "n/a");
panel.intermediateEventBeanConfigurationTextField.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getIntermediateEventBeanConfiguration() is initialized? in.intermediateEventElement.getIntermediateEventBeanConfiguration(): "n/a");
panel.intermediateEventBeanEnabledCheckBox.selected=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.isIntermediateEventBeanEnabled() is initialized? in.intermediateEventElement.isIntermediateEventBeanEnabled(): false);
panel.nameTextField.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getName() is initialized? in.intermediateEventElement.getName(): "n/a");
panel.processElementIdTextField.text=(in.#intermediateEventElement is initialized && in.#intermediateEventElement.getProcessElementId() is initialized? in.intermediateEventElement.getProcessElementId(): "n/a");
' #txt
>Proto Is0 .type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayData #txt
>Proto Is0 .processKind RICH_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
>Proto Is0 '' #fIcon
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f4 tail #connect
Is0 f4 head f1 mainIn #connect
Is0 f5 mainOut f8 tail #connect
Is0 f8 head f7 mainIn #connect
Is0 f6 mainOut f9 tail #connect
Is0 f9 head f7 mainIn #connect
