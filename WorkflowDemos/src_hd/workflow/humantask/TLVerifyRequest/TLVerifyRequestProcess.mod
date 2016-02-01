[Ivy]
[>Created: Mon Jan 18 14:19:46 CET 2016]
15254DFB88F34DCF 3.18 #module
>Proto >Proto Collection #zClass
Vs0 TLVerifyRequestProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @RichDialogProcessStart f3 '' #zField
Vs0 @RichDialogEnd f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @PushWFArc f2 '' #zField
>Proto Vs0 Vs0 TLVerifyRequestProcess #zField
Vs0 f0 guid 14FAE07217F2117A #txt
Vs0 f0 type workflow.humantask.TLVerifyRequest.TLVerifyRequestData #txt
Vs0 f0 method start(workflow.humantask.ProcurementRequest) #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<workflow.humantask.ProcurementRequest procurementRequestData> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 inParameterMapAction 'out.procurementRequestData=param.procurementRequestData;
' #txt
Vs0 f0 outParameterDecl '<workflow.humantask.ProcurementRequest procurementRequestData> result;
' #txt
Vs0 f0 outParameterMapAction 'result.procurementRequestData=in.procurementRequestData;
' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ProcurementRequestData)</name>
        <nameStyle>29,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f0 83 51 26 26 -88 15 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type workflow.humantask.TLVerifyRequest.TLVerifyRequestData #txt
Vs0 f1 339 51 26 26 0 12 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f3 guid 14FAE0721B1EC7B7 #txt
Vs0 f3 type workflow.humantask.TLVerifyRequest.TLVerifyRequestData #txt
Vs0 f3 actionDecl 'workflow.humantask.TLVerifyRequest.TLVerifyRequestData out;
' #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Vs0 f3 83 147 26 26 -15 12 #rect
Vs0 f3 @|RichDialogProcessStartIcon #fIcon
Vs0 f4 type workflow.humantask.TLVerifyRequest.TLVerifyRequestData #txt
Vs0 f4 guid 14FAE0721B237A55 #txt
Vs0 f4 211 147 26 26 0 12 #rect
Vs0 f4 @|RichDialogEndIcon #fIcon
Vs0 f5 expr out #txt
Vs0 f5 109 160 211 160 #arcP
Vs0 f2 expr out #txt
Vs0 f2 109 64 339 64 #arcP
>Proto Vs0 .type workflow.humantask.TLVerifyRequest.TLVerifyRequestData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f4 mainIn #connect
Vs0 f0 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
