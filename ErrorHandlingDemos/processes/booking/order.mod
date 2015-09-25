[Ivy]
[>Created: Fri Sep 25 15:19:33 CEST 2015]
150047A1589EB0D8 3.18 #module
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
or0 @RichDialog f3 '' #zField
or0 @PushWFArc f4 '' #zField
or0 @CallSub f5 '' #zField
or0 @PushWFArc f6 '' #zField
or0 @CallSub f7 '' #zField
or0 @PushWFArc f8 '' #zField
or0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
or0 @ErrorBoundaryEvent Et1 ErrorBoundaryEvent #zField
or0 @EndRequest f9 '' #zField
or0 @PushWFArc f10 '' #zField
or0 @CallSub f11 '' #zField
or0 @PushWFArc f12 '' #zField
or0 @PushWFArc f13 '' #zField
or0 @EndRequest f14 '' #zField
or0 @EMail f1 '' #zField
or0 @PushWFArc f2 '' #zField
or0 @PushWFArc f15 '' #zField
>Proto or0 or0 order #zField
or0 f0 outLink start.ivp #txt
or0 f0 type booking.BookingData #txt
or0 f0 inParamDecl '<> param;' #txt
or0 f0 inParamTable 'out.customer.firstname="John";
out.customer.lastname="Smith";
' #txt
or0 f0 actionDecl 'booking.BookingData out;
' #txt
or0 f0 guid 150047A159BBFF10 #txt
or0 f0 requestEnabled true #txt
or0 f0 triggerEnabled false #txt
or0 f0 callSignature start() #txt
or0 f0 persist false #txt
or0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
or0 f0 showInStartList 1 #txt
or0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
or0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f0 @C|.responsibility Everybody #txt
or0 f0 33 41 30 30 -21 17 #rect
or0 f0 @|StartRequestIcon #fIcon
or0 f3 targetWindow NEW:card: #txt
or0 f3 targetDisplay TOP #txt
or0 f3 richDialogId booking.SelectOptions #txt
or0 f3 startMethod start(booking.Customer) #txt
or0 f3 type booking.BookingData #txt
or0 f3 requestActionDecl '<booking.Customer customer> param;' #txt
or0 f3 requestMappingAction 'param.customer=in.customer;
' #txt
or0 f3 responseActionDecl 'booking.BookingData out;
' #txt
or0 f3 responseMappingAction 'out=in;
out.carSize=result.carSize;
out.flight=result.flight;
' #txt
or0 f3 windowConfiguration '* ' #txt
or0 f3 isAsynch false #txt
or0 f3 isInnerRd false #txt
or0 f3 userContext '* ' #txt
or0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select
flight &amp; car</name>
        <nameStyle>7,7
12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f3 112 34 112 44 -28 -16 #rect
or0 f3 @|RichDialogIcon #fIcon
or0 f4 expr out #txt
or0 f4 63 56 112 56 #arcP
or0 f5 type booking.BookingData #txt
or0 f5 processCall booking/service/easyjet:bookFlight(booking.Flight,booking.Customer) #txt
or0 f5 doCall true #txt
or0 f5 requestActionDecl '<booking.Flight flight,booking.Customer customer> param;
' #txt
or0 f5 responseActionDecl 'booking.BookingData out;
' #txt
or0 f5 responseMappingAction 'out=in;
' #txt
or0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>book flight</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f5 264 34 112 44 -28 -8 #rect
or0 f5 @|CallSubIcon #fIcon
or0 f6 expr out #txt
or0 f6 224 56 264 56 #arcP
or0 f7 type booking.BookingData #txt
or0 f7 processCall booking/service/hertz:bookCar(String) #txt
or0 f7 doCall true #txt
or0 f7 requestActionDecl '<java.lang.String size> param;
' #txt
or0 f7 responseActionDecl 'booking.BookingData out;
' #txt
or0 f7 responseMappingAction 'out=in;
' #txt
or0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>book car</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f7 424 34 112 44 -23 -8 #rect
or0 f7 @|CallSubIcon #fIcon
or0 f8 expr out #txt
or0 f8 376 56 424 56 #arcP
or0 Et0 actionDecl 'booking.BookingData out;
' #txt
or0 Et0 actionTable 'out=in;
' #txt
or0 Et0 type booking.BookingData #txt
or0 Et0 errorCode booking:easyjet #txt
or0 Et0 attachedToRef 150047A1589EB0D8-f5 #txt
or0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>easyjet</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 Et0 337 73 30 30 17 -6 #rect
or0 Et0 @|ErrorBoundaryEventIcon #fIcon
or0 Et1 actionDecl 'booking.BookingData out;
' #txt
or0 Et1 actionTable 'out=in;
' #txt
or0 Et1 type booking.BookingData #txt
or0 Et1 errorCode booking:hertz #txt
or0 Et1 attachedToRef 150047A1589EB0D8-f7 #txt
or0 Et1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>hertz</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 Et1 497 73 30 30 19 -5 #rect
or0 Et1 @|ErrorBoundaryEventIcon #fIcon
or0 f9 type booking.BookingData #txt
or0 f9 template "" #txt
or0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>booking failed</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f9 737 217 30 30 -38 17 #rect
or0 f9 @|EndRequestIcon #fIcon
or0 f10 352 103 737 232 #arcP
or0 f10 1 352 232 #addKink
or0 f10 1 0.30904127690867544 0 0 #arcLabel
or0 f11 type booking.BookingData #txt
or0 f11 processCall booking/service/easyjet:cancelFlight(booking.Flight,booking.Customer) #txt
or0 f11 doCall true #txt
or0 f11 requestActionDecl '<booking.Flight flight,booking.Customer customer> param;
' #txt
or0 f11 responseActionDecl 'booking.BookingData out;
' #txt
or0 f11 responseMappingAction 'out=in;
' #txt
or0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel flight
booking</name>
        <nameStyle>7,7
14,7
</nameStyle>
        <desc>compensate already booked flight</desc>
    </language>
</elementInfo>
' #txt
or0 f11 456 138 112 44 -32 -20 #rect
or0 f11 @|CallSubIcon #fIcon
or0 f12 512 103 512 138 #arcP
or0 f13 expr out #txt
or0 f13 568 160 752 217 #arcP
or0 f13 1 752 160 #addKink
or0 f13 0 0.8265723266538095 0 0 #arcLabel
or0 f14 type booking.BookingData #txt
or0 f14 template "" #txt
or0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>booking 
successful</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f14 737 41 30 30 -26 18 #rect
or0 f14 @|EndRequestIcon #fIcon
or0 f1 beanConfig '"{/emailSubject ""Booking confirmation""/emailFrom """"/emailReplyTo """"/emailTo ""<%=in.customer.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""...""/emailAttachments * }"' #txt
or0 f1 type booking.BookingData #txt
or0 f1 timeout 0 #txt
or0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmation
mail</name>
        <nameStyle>13,7
4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
or0 f1 576 34 112 44 -34 -16 #rect
or0 f1 @|EMailIcon #fIcon
or0 f2 expr out #txt
or0 f2 536 56 576 56 #arcP
or0 f15 expr out #txt
or0 f15 688 56 737 56 #arcP
>Proto or0 .type booking.BookingData #txt
>Proto or0 .processKind NORMAL #txt
>Proto or0 0 0 32 24 18 0 #rect
>Proto or0 @|BIcon #fIcon
or0 f0 mainOut f4 tail #connect
or0 f4 head f3 mainIn #connect
or0 f3 mainOut f6 tail #connect
or0 f6 head f5 mainIn #connect
or0 f5 mainOut f8 tail #connect
or0 f8 head f7 mainIn #connect
or0 Et0 mainOut f10 tail #connect
or0 f10 head f9 mainIn #connect
or0 Et1 mainOut f12 tail #connect
or0 f12 head f11 mainIn #connect
or0 f11 mainOut f13 tail #connect
or0 f13 head f9 mainIn #connect
or0 f7 mainOut f2 tail #connect
or0 f2 head f1 mainIn #connect
or0 f1 mainOut f15 tail #connect
or0 f15 head f14 mainIn #connect
