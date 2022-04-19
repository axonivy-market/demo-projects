[Ivy]
15254DF1CAEC5132 9.4.8 #module
>Proto >Proto Collection #zClass
As0 AcceptRequestProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .colors .colors #zField
As0 @TextInP color color #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @UdExitEnd f4 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @GridStep f6 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @UdEvent f8 '' #zField
As0 @UdEvent f14 '' #zField
As0 @PushWFArc f11 '' #zField
As0 @UdExitEnd f3 '' #zField
As0 @GridStep f10 '' #zField
As0 @PushWFArc f9 '' #zField
As0 @PushWFArc f7 '' #zField
>Proto As0 As0 AcceptRequestProcess #zField
As0 f0 guid 14FAE0B7D586F3B8 #txt
As0 f0 method start(workflow.humantask.ProcurementRequest) #txt
As0 f0 inParameterDecl '<workflow.humantask.ProcurementRequest procurementRequest> param;' #txt
As0 f0 inParameterMapAction 'out.procurementRequest=param.procurementRequest;
' #txt
As0 f0 outParameterDecl '<Boolean accepted,workflow.humantask.LogEntry logEntry> result;' #txt
As0 f0 outParameterMapAction 'result.accepted=in.ok;
result.logEntry=in.logEntry;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f1 339 51 26 26 0 12 #rect
As0 f4 339 147 26 26 0 12 #rect
As0 f2 expr out #txt
As0 f2 109 64 339 64 #arcP
As0 f6 actionTable 'out=in;
out.logEntry.activity=ivy.cms.co("/Dialogs/procurementRequest/acceptedBy");
out.logEntry.timestamp=new DateTime();
out.logEntry.user.fullName=ivy.session.getSessionUser().fullName;
out.logEntry.user.role=ivy.task.activator.getMemberName();
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init LogEntry</name>
    </language>
</elementInfo>
' #txt
As0 f6 168 138 112 44 -33 -8 #rect
As0 f5 expr out #txt
As0 f5 280 160 339 160 #arcP
As0 f8 guid 152A1ACC7D858AA0 #txt
As0 f8 actionTable 'out=in;
out.ok=true;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
    </language>
</elementInfo>
' #txt
As0 f8 83 147 26 26 -18 15 #rect
As0 f14 guid 152A1ACDDE1813E7 #txt
As0 f14 actionTable 'out=in;
out.ok=false;
' #txt
As0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>decline</name>
    </language>
</elementInfo>
' #txt
As0 f14 83 211 26 26 -20 15 #rect
As0 f11 expr out #txt
As0 f11 109 160 168 160 #arcP
As0 f3 347 211 26 26 0 12 #rect
As0 f10 actionTable 'out=in;
out.logEntry.activity=ivy.cms.co("/Dialogs/procurementRequest/declinedBy");
out.logEntry.timestamp=new DateTime();
out.logEntry.user.fullName=ivy.session.getSessionUser().fullName;
out.logEntry.user.role=ivy.task.activator.getMemberName();
' #txt
As0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init LogEntry</name>
    </language>
</elementInfo>
' #txt
As0 f10 168 202 112 44 -33 -8 #rect
As0 f9 expr out #txt
As0 f9 109 224 168 224 #arcP
As0 f9 0 0.5706201187270097 0 0 #arcLabel
As0 f7 expr out #txt
As0 f7 280 224 347 224 #arcP
As0 f7 0 0.5706201187270097 0 0 #arcLabel
>Proto As0 .type workflow.humantask.AcceptRequest.AcceptRequestData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f6 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f8 mainOut f11 tail #connect
As0 f11 head f6 mainIn #connect
As0 f14 mainOut f9 tail #connect
As0 f9 head f10 mainIn #connect
As0 f10 mainOut f7 tail #connect
As0 f7 head f3 mainIn #connect
