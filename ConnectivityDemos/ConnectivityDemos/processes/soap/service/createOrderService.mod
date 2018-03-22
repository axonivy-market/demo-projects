[Ivy]
162492A1649E72DF 3.23 #module
>Proto >Proto Collection #zClass
ce0 createOrderService Big #zClass
ce0 WS #cInfo
ce0 #process
ce0 @TextInP .webServiceName .webServiceName #zField
ce0 @TextInP .implementationClassName .implementationClassName #zField
ce0 @TextInP .authenticationType .authenticationType #zField
ce0 @TextInP .resExport .resExport #zField
ce0 @TextInP .type .type #zField
ce0 @TextInP .processKind .processKind #zField
ce0 @AnnotationInP-0n ai ai #zField
ce0 @MessageFlowInP-0n messageIn messageIn #zField
ce0 @MessageFlowOutP-0n messageOut messageOut #zField
ce0 @TextInP .xml .xml #zField
ce0 @TextInP .responsibility .responsibility #zField
ce0 @StartWS ws0 '' #zField
ce0 @EndWS ws1 '' #zField
ce0 @Trigger f1 '' #zField
ce0 @PushWFArc f0 '' #zField
ce0 @Alternative f3 '' #zField
ce0 @PushWFArc f4 '' #zField
ce0 @PushWFArc f2 '' #zField
ce0 @EndWS f5 '' #zField
ce0 @Trigger f6 '' #zField
ce0 @PushWFArc f7 '' #zField
ce0 @PushWFArc f8 '' #zField
>Proto ce0 ce0 createOrderService #zField
ce0 ws0 inParamDecl '<com.axonivy.connectivity.soap.service.Order order> param;' #txt
ce0 ws0 inParamTable 'out.order=param.order;
' #txt
ce0 ws0 outParamDecl '<java.lang.Long taskId> result;
' #txt
ce0 ws0 outParamTable 'result.taskId=in.createdTaskId;
' #txt
ce0 ws0 actionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
ce0 ws0 callSignature call(com.axonivy.connectivity.soap.service.Order) #txt
ce0 ws0 useUserDefinedException false #txt
ce0 ws0 taskData TaskTriggered.PRI=2 #txt
ce0 ws0 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 ws0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Order)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 ws0 @C|.responsibility Everybody #txt
ce0 ws0 57 137 30 30 -29 17 #rect
ce0 ws0 @|StartWSIcon #fIcon
ce0 ws1 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 ws1 441 73 30 30 0 15 #rect
ce0 ws1 @|EndWSIcon #fIcon
ce0 f1 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 f1 processCall soap/service/order:approveOrder(com.axonivy.connectivity.soap.service.Order,String) #txt
ce0 f1 doCall true #txt
ce0 f1 requestActionDecl '<com.axonivy.connectivity.soap.service.Order order,java.lang.String responsibleRole> param;
' #txt
ce0 f1 requestMappingAction 'param.order=in.order;
param.responsibleRole="Manager";
' #txt
ce0 f1 responseActionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
ce0 f1 responseMappingAction 'out=in;
out.createdTaskId=triggeredTask.getId();
' #txt
ce0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve
by manager</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f1 272 66 112 44 -32 -16 #rect
ce0 f1 @|TriggerIcon #fIcon
ce0 f0 expr out #txt
ce0 f0 384 88 441 88 #arcP
ce0 f3 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>price &gt; 10k</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f3 160 136 32 32 20 -8 #rect
ce0 f3 @|AlternativeIcon #fIcon
ce0 f4 expr out #txt
ce0 f4 87 152 160 152 #arcP
ce0 f2 expr in #txt
ce0 f2 outCond 'in.order.amount * in.order.unitPrice > 10000' #txt
ce0 f2 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f2 6 #arcStyle
ce0 f2 176 136 272 88 #arcP
ce0 f2 1 176 88 #addKink
ce0 f2 1 0.19155493663523251 1 9 #arcLabel
ce0 f5 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 f5 441 203 30 30 0 15 #rect
ce0 f5 @|EndWSIcon #fIcon
ce0 f6 type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
ce0 f6 processCall soap/service/order:approveOrder(com.axonivy.connectivity.soap.service.Order,String) #txt
ce0 f6 doCall true #txt
ce0 f6 requestActionDecl '<com.axonivy.connectivity.soap.service.Order order,java.lang.String responsibleRole> param;
' #txt
ce0 f6 requestMappingAction 'param.order=in.order;
param.responsibleRole="Employee";
' #txt
ce0 f6 responseActionDecl 'com.axonivy.connectivity.soap.service.CreateOrderServiceData out;
' #txt
ce0 f6 responseMappingAction 'out=in;
out.createdTaskId=triggeredTask.getId();
' #txt
ce0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve
by employee</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f6 272 196 112 44 -34 -16 #rect
ce0 f6 @|TriggerIcon #fIcon
ce0 f7 expr out #txt
ce0 f7 384 218 441 218 #arcP
ce0 f8 expr in #txt
ce0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f8 176 168 272 218 #arcP
ce0 f8 1 176 218 #addKink
ce0 f8 1 0.2097585593558301 0 -11 #arcLabel
>Proto ce0 .webServiceName com.axonivy.connectivity.createOrder #txt
>Proto ce0 .authenticationType 'None or Container' #txt
>Proto ce0 .type com.axonivy.connectivity.soap.service.CreateOrderServiceData #txt
>Proto ce0 .processKind WEB_SERVICE #txt
>Proto ce0 -8 -8 16 16 16 26 #rect
>Proto ce0 '' #fIcon
ce0 f1 mainOut f0 tail #connect
ce0 f0 head ws1 mainIn #connect
ce0 ws0 mainOut f4 tail #connect
ce0 f4 head f3 in #connect
ce0 f3 out f2 tail #connect
ce0 f2 head f1 mainIn #connect
ce0 f6 mainOut f7 tail #connect
ce0 f7 head f5 mainIn #connect
ce0 f3 out f8 tail #connect
ce0 f8 head f6 mainIn #connect
