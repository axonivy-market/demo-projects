[Ivy]
[>Created: Wed Oct 21 17:13:00 CEST 2015]
1508AE543CAEEEC1 3.18 #module
>Proto >Proto Collection #zClass
Ct0 CancelStart Big #zClass
Ct0 B #cInfo
Ct0 #process
Bk1 BpmnSendTask Big #zClass
Bk1 BpmnSendTask #cInfo
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @EndTask f1 '' #zField
Ct0 @RichDialog f3 '' #zField
Ct0 @PushWFArc f4 '' #zField
Ct0 @EndTask f5 '' #zField
Ct0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
Ct0 @PushWFArc f6 '' #zField
Ct0 Bk1 S10 'Send 1' #zField
Ct0 @PushWFArc f7 '' #zField
Ct0 @PushWFArc f2 '' #zField
>Proto Ct0 Ct0 CancelStart #zField
Bk1 @TextInP .resExport .resExport #zField
Bk1 @TextInP .type .type #zField
Bk1 @TextInP .processKind .processKind #zField
Bk1 @AnnotationInP-0n ai ai #zField
Bk1 @MessageFlowInP-0n messageIn messageIn #zField
Bk1 @MessageFlowOutP-0n messageOut messageOut #zField
Bk1 @TextInP .xml .xml #zField
Bk1 @TextInP .responsibility .responsibility #zField
Bk1 @PushTrueWFInG-01 g0 '' #zField
Bk1 @PushTrueWFOutG-01 g1 '' #zField
Bk1 @PushWFArc f0 '' #zField
>Proto Bk1 Bk0 BpmnSendTask #zField
Ct0 f0 outLink start.ivp #txt
Ct0 f0 type misc.CancelStartData #txt
Ct0 f0 inParamDecl '<> param;' #txt
Ct0 f0 actionDecl 'misc.CancelStartData out;
' #txt
Ct0 f0 guid 1508AE543CDBE13A #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled false #txt
Ct0 f0 callSignature start() #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 49 30 30 -23 17 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f1 type misc.CancelStartData #txt
Ct0 f1 529 49 30 30 0 15 #rect
Ct0 f1 @|EndIcon #fIcon
Ct0 f3 targetWindow NEW:card: #txt
Ct0 f3 targetDisplay TOP #txt
Ct0 f3 richDialogId error.handling.demo.misc.CancelStart #txt
Ct0 f3 startMethod start(String) #txt
Ct0 f3 type misc.CancelStartData #txt
Ct0 f3 requestActionDecl '<String email> param;' #txt
Ct0 f3 requestMappingAction 'param.email=in.email;
' #txt
Ct0 f3 responseActionDecl 'misc.CancelStartData out;
' #txt
Ct0 f3 responseMappingAction 'out=in;
out.email=result.email;
' #txt
Ct0 f3 windowConfiguration '* ' #txt
Ct0 f3 isAsynch false #txt
Ct0 f3 isInnerRd false #txt
Ct0 f3 userContext '* ' #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get email</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f3 168 42 112 44 -27 -7 #rect
Ct0 f3 @|RichDialogIcon #fIcon
Ct0 f4 expr out #txt
Ct0 f4 111 64 168 64 #arcP
Ct0 f5 type misc.CancelStartData #txt
Ct0 f5 529 145 30 30 0 15 #rect
Ct0 f5 @|EndIcon #fIcon
Ct0 Et0 actionDecl 'misc.CancelStartData out;
' #txt
Ct0 Et0 actionTable 'out=in;
' #txt
Ct0 Et0 type misc.CancelStartData #txt
Ct0 Et0 errorCode start:cancelled #txt
Ct0 Et0 attachedToRef 1508AE543CAEEEC1-f3 #txt
Ct0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start:cancelled</name>
    </language>
</elementInfo>
' #txt
Ct0 Et0 241 81 30 30 19 8 #rect
Ct0 Et0 @|ErrorBoundaryEventIcon #fIcon
Ct0 f6 expr out #txt
Ct0 f6 256 111 529 160 #arcP
Ct0 f6 1 256 160 #addKink
Ct0 f6 1 0.1570028297149824 0 0 #arcLabel
Ct0 S10 .resExport export #txt
Ct0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Send penny
stock spam</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 S10 344 42 112 44 -33 -15 #rect
Ct0 S10 @|BpmnSendTaskIcon #fIcon
Ct0 f7 expr out #txt
Ct0 f7 280 64 344 64 #arcP
Ct0 f2 456 64 529 64 #arcP
>Proto Ct0 .type misc.CancelStartData #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Bk1 g0 51 243 26 26 0 5 #rect
Bk1 g0 @|MIGIcon #fIcon
Bk1 g1 563 243 26 26 0 5 #rect
Bk1 g1 @|MOGIcon #fIcon
Bk1 f0 77 256 563 256 #arcP
>Proto Bk0 0 0 32 24 18 0 #rect
>Proto Bk0 @|BpmnSendTaskIcon #fIcon
Ct0 f0 mainOut f4 tail #connect
Ct0 f4 head f3 mainIn #connect
Ct0 Et0 mainOut f6 tail #connect
Ct0 f6 head f5 mainIn #connect
Ct0 f3 mainOut f7 tail #connect
Ct0 f7 head S10 g0 #connect
Ct0 S10 g1 f2 tail #connect
Ct0 f2 head f1 mainIn #connect
Bk1 g0 m f0 tail #connect
Bk1 f0 head g1 m #connect
Bk1 0 0 640 512 0 #ivRect
