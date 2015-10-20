[Ivy]
[>Created: Tue Oct 20 12:41:50 CEST 2015]
14ED3A421F7C081D 3.18 #module
>Proto >Proto Collection #zClass
As0 ApproveProcess Big #zClass
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
As0 @PushWFArc f2 '' #zField
As0 @RichDialogEnd f4 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @RichDialogProcessStart f9 '' #zField
As0 @PushWFArc f3 '' #zField
As0 @ErrorEnd f7 '' #zField
As0 @PushWFArc f8 '' #zField
>Proto As0 As0 ApproveProcess #zField
As0 f0 guid 14ED3A4221040CCF #txt
As0 f0 type error.handling.demo.Approve.ApproveData #txt
As0 f0 method start(String,Number) #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String requestDescription,java.lang.Number cost> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.cost=param.cost;
out.requestDescription=param.requestDescription;
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,Number)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -56 15 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type error.handling.demo.Approve.ApproveData #txt
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f4 type error.handling.demo.Approve.ApproveData #txt
As0 f4 guid 14ED3A4222BC935B #txt
As0 f4 211 147 26 26 0 12 #rect
As0 f4 @|RichDialogEndIcon #fIcon
As0 f6 guid 14ED3AB0EB92D523 #txt
As0 f6 type error.handling.demo.Approve.ApproveData #txt
As0 f6 actionDecl 'error.handling.demo.Approve.ApproveData out;
' #txt
As0 f6 actionTable 'out=in;
out.approved=true;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 83 147 26 26 -22 15 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f9 guid 14ED3AB1639B0692 #txt
As0 f9 type error.handling.demo.Approve.ApproveData #txt
As0 f9 actionDecl 'error.handling.demo.Approve.ApproveData out;
' #txt
As0 f9 actionTable 'out=in;
out.approved=false;
' #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>decline</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 83 243 26 26 -20 15 #rect
As0 f9 @|RichDialogProcessStartIcon #fIcon
As0 f3 expr out #txt
As0 f3 109 160 211 160 #arcP
As0 f7 errorCode approval:declined #txt
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approval:declined</name>
    </language>
</elementInfo>
' #txt
As0 f7 209 241 30 30 -48 17 #rect
As0 f7 @|ErrorEndIcon #fIcon
As0 f8 expr out #txt
As0 f8 109 256 209 256 #arcP
>Proto As0 .type error.handling.demo.Approve.ApproveData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f6 mainOut f3 tail #connect
As0 f3 head f4 mainIn #connect
As0 f9 mainOut f8 tail #connect
As0 f8 head f7 mainIn #connect
