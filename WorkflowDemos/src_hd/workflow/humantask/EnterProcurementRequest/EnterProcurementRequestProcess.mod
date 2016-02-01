[Ivy]
[>Created: Wed Jan 20 15:30:13 CET 2016]
15254DF5837F8B00 3.18 #module
>Proto >Proto Collection #zClass
Es0 EnterProcurementRequestProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @RichDialogProcessStart f3 '' #zField
Es0 @RichDialogEnd f4 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @GridStep f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 EnterProcurementRequestProcess #zField
Es0 f0 guid 14FADF4C8E9956A6 #txt
Es0 f0 type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 outParameterDecl '<workflow.humantask.ProcurementRequest procurementRequestData> result;
' #txt
Es0 f0 outParameterMapAction 'result.procurementRequestData=in.procurementRequestData;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 83 51 26 26 -16 15 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
Es0 f1 339 51 26 26 0 12 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 guid 14FADF4C908E8C33 #txt
Es0 f3 type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
Es0 f3 actionDecl 'workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData out;
' #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Es0 f3 83 147 26 26 -15 12 #rect
Es0 f3 @|RichDialogProcessStartIcon #fIcon
Es0 f4 type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
Es0 f4 guid 14FADF4C908290E6 #txt
Es0 f4 211 147 26 26 0 12 #rect
Es0 f4 @|RichDialogEndIcon #fIcon
Es0 f5 expr out #txt
Es0 f5 109 160 211 160 #arcP
Es0 f6 actionDecl 'workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData out;
' #txt
Es0 f6 actionTable 'out=in;
out.procurementRequestData=new workflow.humantask.ProcurementRequest();
out.procurementRequestData.user.email=ivy.session.getSessionUser().eMailAddress;
out.procurementRequestData.user.fullname=ivy.session.getSessionUser().fullName;
' #txt
Es0 f6 type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init data</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 168 42 112 44 -21 -8 #rect
Es0 f6 @|StepIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 109 64 168 64 #arcP
Es0 f2 expr out #txt
Es0 f2 280 64 339 64 #arcP
>Proto Es0 .type workflow.humantask.EnterProcurementRequest.EnterProcurementRequestData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f3 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
Es0 f0 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f6 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
