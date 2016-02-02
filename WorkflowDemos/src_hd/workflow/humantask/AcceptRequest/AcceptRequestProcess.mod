[Ivy]
[>Created: Tue Feb 02 16:32:28 CET 2016]
15254DF1CAEC5132 3.18 #module
>Proto >Proto Collection #zClass
As0 AcceptRequestProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogEnd f4 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @GridStep f6 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogProcessStart f8 '' #zField
As0 @RichDialogProcessStart f14 '' #zField
As0 @PushWFArc f11 '' #zField
As0 @PushWFArc f10 '' #zField
>Proto As0 As0 AcceptRequestProcess #zField
As0 f0 guid 14FAE0B7D586F3B8 #txt
As0 f0 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f0 method start(workflow.humantask.ProcurementRequest) #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<workflow.humantask.ProcurementRequest procurementRequest> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.procurementRequest=param.procurementRequest;
' #txt
As0 f0 outParameterDecl '<java.lang.Boolean accepted,workflow.humantask.LogEntry logEntry> result;
' #txt
As0 f0 outParameterMapAction 'result.accepted=in.ok;
result.logEntry=in.logEntry;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f1 339 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f4 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f4 guid 14FAE0B7D7479234 #txt
As0 f4 339 147 26 26 0 12 #rect
As0 f4 @|RichDialogEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 109 64 339 64 #arcP
As0 f6 actionDecl 'workflow.humantask.AcceptRequest.AcceptRequestData out;
' #txt
As0 f6 actionTable 'out=in;
out.logEntry.activity=ivy.cms.co("/Dialogs/procurementRequest/acceptedBy");
out.logEntry.timestamp=new DateTime();
out.logEntry.user.fullName=ivy.session.getSessionUser().fullName;
' #txt
As0 f6 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init LogEntry</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 168 138 112 44 -33 -8 #rect
As0 f6 @|StepIcon #fIcon
As0 f5 expr out #txt
As0 f5 280 160 339 160 #arcP
As0 f8 guid 152A1ACC7D858AA0 #txt
As0 f8 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f8 actionDecl 'workflow.humantask.AcceptRequest.AcceptRequestData out;
' #txt
As0 f8 actionTable 'out=in;
out.ok=true;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f8 83 147 26 26 -18 15 #rect
As0 f8 @|RichDialogProcessStartIcon #fIcon
As0 f14 guid 152A1ACDDE1813E7 #txt
As0 f14 type workflow.humantask.AcceptRequest.AcceptRequestData #txt
As0 f14 actionDecl 'workflow.humantask.AcceptRequest.AcceptRequestData out;
' #txt
As0 f14 actionTable 'out=in;
out.ok=false;
' #txt
As0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>decline</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f14 83 211 26 26 -20 15 #rect
As0 f14 @|RichDialogProcessStartIcon #fIcon
As0 f11 expr out #txt
As0 f11 109 160 168 160 #arcP
As0 f10 expr out #txt
As0 f10 109 224 224 182 #arcP
As0 f10 1 224 224 #addKink
As0 f10 0 0.7790205099142654 0 0 #arcLabel
>Proto As0 .type workflow.humantask.AcceptRequest.AcceptRequestData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f6 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f8 mainOut f11 tail #connect
As0 f11 head f6 mainIn #connect
As0 f14 mainOut f10 tail #connect
As0 f10 head f6 mainIn #connect
