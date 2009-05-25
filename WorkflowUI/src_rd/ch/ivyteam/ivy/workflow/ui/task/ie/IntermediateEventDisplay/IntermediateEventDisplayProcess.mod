[Ivy]
[>Created: Wed May 21 18:51:39 CEST 2008]
11A0B883DD63BC83 3.10 #module
>Proto >Proto Collection #zClass
Is0 IntermediateEventDisplayProcess Big #zClass
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
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f0 guid 11A0B883E80343A4 #txt
Is0 f0 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f0 method start() #txt
Is0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Is0 f0 outParameterDecl '<> result;
' #txt
Is0 f0 embeddedRdInitializations '{/intermediateEventElementDisplayRDC {/fieldName "intermediateEventElementDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Is0 f0 54 38 20 20 13 0 #rect
Is0 f0 @|RichDialogInitStartIcon #fIcon
Is0 @RichDialogProcessEnd f1 '' #zField
Is0 f1 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f1 51 307 26 26 14 0 #rect
Is0 f1 @|RichDialogProcessEndIcon #fIcon
Is0 @PushWFArc f2 '' #zField
Is0 f2 expr out #txt
Is0 f2 64 58 64 307 #arcP
Is0 @RichDialogInitStart f3 '' #zField
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IIntermediateEvent)</name>
        <nameStyle>25,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f3 guid 11A0C047207A26B2 #txt
Is0 f3 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f3 method start(ch.ivyteam.ivy.workflow.IIntermediateEvent) #txt
Is0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IIntermediateEvent aIntermediateEvent> param = methodEvent.getInputArguments();
' #txt
Is0 f3 inParameterMapAction 'out.intermediateEvent=param.aIntermediateEvent;
' #txt
Is0 f3 outParameterDecl '<> result;
' #txt
Is0 f3 embeddedRdInitializations '{/intermediateEventElementDisplayRDC {/fieldName "intermediateEventElementDisplayRDC"/startMethod "start(ch.ivyteam.ivy.workflow.IIntermediateEventElement)"/parameterMapping "param.aIntermediateEventElement=callParam.aIntermediateEvent.getIntermediateEventElement();\n"/initScript ""}}' #txt
Is0 f3 118 38 20 20 13 0 #rect
Is0 f3 @|RichDialogInitStartIcon #fIcon
Is0 @PushWFArc f4 '' #zField
Is0 f4 expr out #txt
Is0 f4 128 58 77 320 #arcP
Is0 f4 1 128 320 #addKink
Is0 f4 0 0.6204260892547772 0 0 #arcLabel
Is0 @RichDialogMethodStart f5 '' #zField
Is0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isInitialized()</name>
        <nameStyle>15,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f5 guid 11A0C04BAABE82A0 #txt
Is0 f5 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f5 method isInitialized() #txt
Is0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Is0 f5 outParameterDecl '<java.lang.Boolean aInitialized> result;
' #txt
Is0 f5 outParameterMapAction 'result.aInitialized=(in.#intermediateEvent != null);
' #txt
Is0 f5 270 38 20 20 13 0 #rect
Is0 f5 @|RichDialogMethodStartIcon #fIcon
Is0 @RichDialogProcessEnd f6 '' #zField
Is0 f6 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f6 267 307 26 26 14 0 #rect
Is0 f6 @|RichDialogProcessEndIcon #fIcon
Is0 @PushWFArc f7 '' #zField
Is0 f7 expr out #txt
Is0 f7 280 58 280 307 #arcP
Is0 @RichDialogMethodStart f8 '' #zField
Is0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setIntermediateEvent(IIntermediateEvent)</name>
        <nameStyle>40,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f8 guid 11A0C04D53B86EDA #txt
Is0 f8 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f8 method setIntermediateEvent(ch.ivyteam.ivy.workflow.IIntermediateEvent) #txt
Is0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IIntermediateEvent aIntermediateEvent> param = methodEvent.getInputArguments();
' #txt
Is0 f8 inParameterMapAction 'out.intermediateEvent=param.aIntermediateEvent;
' #txt
Is0 f8 outParameterDecl '<> result;
' #txt
Is0 f8 342 38 20 20 13 0 #rect
Is0 f8 @|RichDialogMethodStartIcon #fIcon
Is0 @RichDialogProcessStep f10 '' #zField
Is0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the
IntermediateEventElement</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData out;
' #txt
Is0 f10 actionTable 'out=in;
' #txt
Is0 f10 actionCode panel.intermediateEventElementDisplayRDC.setIntermediateEventElement(in.intermediateEvent.getIntermediateEventElement()); #txt
Is0 f10 type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
Is0 f10 334 124 36 24 20 -2 #rect
Is0 f10 @|RichDialogProcessStepIcon #fIcon
Is0 @PushWFArc f11 '' #zField
Is0 f11 expr out #txt
Is0 f11 352 58 352 124 #arcP
Is0 f11 0 0.520461695894279 0 0 #arcLabel
Is0 @PushWFArc f9 '' #zField
Is0 f9 expr out #txt
Is0 f9 352 148 293 320 #arcP
Is0 f9 1 352 320 #addKink
Is0 f9 0 0.7011693667552457 0 0 #arcLabel
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f4 tail #connect
Is0 f4 head f1 mainIn #connect
Is0 f5 mainOut f7 tail #connect
Is0 f7 head f6 mainIn #connect
Is0 f8 mainOut f11 tail #connect
Is0 f11 head f10 mainIn #connect
Is0 f10 mainOut f9 tail #connect
Is0 f9 head f6 mainIn #connect
>Proto Is0 Is0 IntermediateEventDisplayProcess #zField
>Proto Is0 .rdData2UIAction 'panel.eventIdentifierTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getEventIdentifier() is initialized? in.intermediateEvent.getEventIdentifier(): "n/a");
panel.eventTimestampTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getEventTimestamp() is initialized? new Date(in.intermediateEvent.getEventTimestamp()).format("medium"): "n/a");
panel.identifierTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getIdentifier() is initialized? in.intermediateEvent.getIdentifier().toString(): "n/a");
panel.resultObjectTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getResultObject() is initialized? in.intermediateEvent.getResultObject().toString(): "n/a");
panel.stateTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getState() is initialized? in.intermediateEvent.getState().name(): "n/a");
panel.timeoutActionTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getTimeoutAction() is initialized? in.intermediateEvent.getTimeoutAction().name(): "n/a");
panel.timeoutTaskStartElementIdTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getTimeoutTaskStartElementId() is initialized? in.intermediateEvent.getTimeoutTaskStartElementId(): "n/a");
panel.timeoutTimestampTextField.text=(in.#intermediateEvent is initialized && in.#intermediateEvent.getTimeoutTimestamp() is initialized? new Date(in.intermediateEvent.getTimeoutTimestamp()).format("medium") : "n/a");
' #txt
>Proto Is0 .type ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayData #txt
>Proto Is0 .processKind RICH_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
>Proto Is0 '' #fIcon
