[Ivy]
16249376A44F1F8E 3.23 #module
>Proto >Proto Collection #zClass
or0 order Big #zClass
or0 B #cInfo
or0 #process
or0 @TextInP .resExport .resExport #zField
or0 @TextInP .type .type #zField
or0 @TextInP .processKind .processKind #zField
or0 @AnnotationInP-0n ai ai #zField
or0 @MessageFlowInP-0n messageIn messageIn #zField
or0 @MessageFlowOutP-0n messageOut messageOut #zField
or0 @TextInP .xml .xml #zField
or0 @TextInP .responsibility .responsibility #zField
or0 @StartRequest f0 '' #zField
or0 @EndTask f1 '' #zField
or0 @RichDialog f3 '' #zField
or0 @PushWFArc f4 '' #zField
or0 @ErrorBoundaryEvent f5 '' #zField
or0 @EndTask f7 '' #zField
or0 @EMail f6 '' #zField
or0 @PushWFArc f9 '' #zField
or0 @PushWFArc f8 '' #zField
or0 @GridStep f10 '' #zField
or0 @PushWFArc f11 '' #zField
or0 @PushWFArc f2 '' #zField
>Proto or0 or0 order #zField
or0 f0 outLink approveOrder.ivp #txt
or0 f0 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f0 inParamDecl '<com.axonivy.connectivity.soap.service.Order order,java.lang.String responsibleRole> param;' #txt
or0 f0 inParamTable 'out.order=param.order;
' #txt
or0 f0 actionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
or0 f0 guid 16249376A497F34B #txt
or0 f0 requestEnabled false #txt
or0 f0 triggerEnabled true #txt
or0 f0 callSignature approveOrder(com.axonivy.connectivity.soap.service.Order,String) #txt
or0 f0 persist false #txt
or0 f0 startName 'New Order' #txt
or0 f0 taskData 'TaskTriggered.ROL=param.responsibleRole
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=2
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=Approve Order of <%\=param.order.requester%>' #txt
or0 f0 caseData businessCase.attach=true #txt
or0 f0 showInStartList 0 #txt
or0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approveOrder(Order,String)</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f0 @C|.responsibility Employee #txt
or0 f0 81 49 30 30 -74 17 #rect
or0 f0 @|StartRequestIcon #fIcon
or0 f1 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f1 545 49 30 30 0 15 #rect
or0 f1 @|EndIcon #fIcon
or0 f3 targetWindow NEW #txt
or0 f3 targetDisplay TOP #txt
or0 f3 richDialogId com.axonivy.connectivity.soap.AcceptOrder #txt
or0 f3 startMethod start(com.axonivy.connectivity.soap.service.Order) #txt
or0 f3 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f3 requestActionDecl '<com.axonivy.connectivity.soap.service.Order order> param;' #txt
or0 f3 requestMappingAction 'param.order=in.order;
' #txt
or0 f3 responseActionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
or0 f3 responseMappingAction 'out=in;
' #txt
or0 f3 isAsynch false #txt
or0 f3 isInnerRd false #txt
or0 f3 userContext '* ' #txt
or0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Approve Order</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f3 208 42 112 44 -39 -8 #rect
or0 f3 @|RichDialogIcon #fIcon
or0 f4 expr out #txt
or0 f4 111 64 208 64 #arcP
or0 f5 actionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
or0 f5 actionTable 'out=in;
' #txt
or0 f5 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f5 errorCode order:declined #txt
or0 f5 attachedToRef 16249376A44F1F8E-f3 #txt
or0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order:declined</name>
    </language>
</elementInfo>
' #txt
or0 f5 281 81 30 30 2 16 #rect
or0 f5 @|ErrorBoundaryEventIcon #fIcon
or0 f7 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f7 545 177 30 30 0 15 #rect
or0 f7 @|EndIcon #fIcon
or0 f6 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
or0 f6 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f6 timeout 0 #txt
or0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform requester</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f6 384 170 112 44 -45 -8 #rect
or0 f6 @|EMailIcon #fIcon
or0 f9 296 111 384 192 #arcP
or0 f9 1 296 192 #addKink
or0 f9 1 0.20613465094963362 0 0 #arcLabel
or0 f8 expr out #txt
or0 f8 496 192 545 192 #arcP
or0 f8 0 0.20613465094963362 0 0 #arcLabel
or0 f10 actionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
or0 f10 actionTable 'out=in;
' #txt
or0 f10 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
or0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Request Order&#xD;
from Manufacturer</name>
    </language>
</elementInfo>
' #txt
or0 f10 376 42 128 44 -44 -16 #rect
or0 f10 @|StepIcon #fIcon
or0 f11 expr out #txt
or0 f11 320 64 376 64 #arcP
or0 f2 expr out #txt
or0 f2 504 64 545 64 #arcP
>Proto or0 .type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
>Proto or0 .processKind NORMAL #txt
>Proto or0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto or0 0 0 32 24 18 0 #rect
>Proto or0 @|BIcon #fIcon
or0 f0 mainOut f4 tail #connect
or0 f4 head f3 mainIn #connect
or0 f5 mainOut f9 tail #connect
or0 f9 head f6 mainIn #connect
or0 f6 mainOut f8 tail #connect
or0 f8 head f7 mainIn #connect
or0 f3 mainOut f11 tail #connect
or0 f11 head f10 mainIn #connect
or0 f10 mainOut f2 tail #connect
or0 f2 head f1 mainIn #connect
