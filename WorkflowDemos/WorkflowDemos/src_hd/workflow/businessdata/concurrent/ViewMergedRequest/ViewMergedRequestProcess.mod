[Ivy]
[>Created: Wed Aug 31 08:55:23 CEST 2016]
156DBAA5DDFCA84E 3.18 #module
>Proto >Proto Collection #zClass
Vs0 ViewMergedRequestProcess Big #zClass
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
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @RichDialogProcessStart f3 '' #zField
Vs0 @RichDialogEnd f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @RichDialogInitStart f6 '' #zField
Vs0 @GridStep f2 '' #zField
Vs0 @PushWFArc f7 '' #zField
Vs0 @PushWFArc f0 '' #zField
>Proto Vs0 Vs0 ViewMergedRequestProcess #zField
Vs0 f1 type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
Vs0 f1 339 51 26 26 0 12 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f3 guid 156DBAA5E03CA2BA #txt
Vs0 f3 type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
Vs0 f3 actionDecl 'workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData out;
' #txt
Vs0 f3 actionTable 'out=in;
' #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Vs0 f3 83 147 26 26 -14 12 #rect
Vs0 f3 @|RichDialogProcessStartIcon #fIcon
Vs0 f4 type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
Vs0 f4 guid 156DBAA5E046C99F #txt
Vs0 f4 211 147 26 26 0 12 #rect
Vs0 f4 @|RichDialogEndIcon #fIcon
Vs0 f5 expr out #txt
Vs0 f5 109 160 211 160 #arcP
Vs0 f6 guid 156DF607CBBFB119 #txt
Vs0 f6 type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
Vs0 f6 method start(String) #txt
Vs0 f6 disableUIEvents true #txt
Vs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String requestId> param = methodEvent.getInputArguments();
' #txt
Vs0 f6 inParameterMapAction 'out.requestId=param.requestId;
' #txt
Vs0 f6 outParameterDecl '<> result;
' #txt
Vs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f6 83 51 26 26 -33 15 #rect
Vs0 f6 @|RichDialogInitStartIcon #fIcon
Vs0 f2 actionDecl 'workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData out;
' #txt
Vs0 f2 actionTable 'out=in;
' #txt
Vs0 f2 actionCode 'import workflow.businessdata.concurrent.Request;

in.request = ivy.repo.find(in.requestId, Request.class) as Request;' #txt
Vs0 f2 type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
Vs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Request</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f2 168 42 112 44 -39 -7 #rect
Vs0 f2 @|StepIcon #fIcon
Vs0 f7 expr out #txt
Vs0 f7 109 64 168 64 #arcP
Vs0 f0 expr out #txt
Vs0 f0 280 64 339 64 #arcP
>Proto Vs0 .type workflow.businessdata.concurrent.ViewMergedRequest.ViewMergedRequestData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f4 mainIn #connect
Vs0 f6 mainOut f7 tail #connect
Vs0 f7 head f2 mainIn #connect
Vs0 f2 mainOut f0 tail #connect
Vs0 f0 head f1 mainIn #connect
