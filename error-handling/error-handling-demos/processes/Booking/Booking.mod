[Ivy]
150047A1589EB0D8 9.4.7 #module
>Proto >Proto Collection #zClass
or0 Booking Big #zClass
or0 B #cInfo
or0 #process
or0 @TextInP .colors .colors #zField
or0 @TextInP color color #zField
or0 @TextInP .type .type #zField
or0 @TextInP .processKind .processKind #zField
or0 @AnnotationInP-0n ai ai #zField
or0 @MessageFlowInP-0n messageIn messageIn #zField
or0 @MessageFlowOutP-0n messageOut messageOut #zField
or0 @TextInP .xml .xml #zField
or0 @TextInP .responsibility .responsibility #zField
or0 @StartRequest f0 '' #zField
or0 @UserDialog f3 '' #zField
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
or0 @EMail f1 '' #zField
or0 @PushWFArc f2 '' #zField
or0 @InfoButton f16 '' #zField
or0 @EndRequest f14 '' #zField
or0 @PushWFArc f15 '' #zField
>Proto or0 or0 Booking #zField
or0 f0 outLink start.ivp #txt
or0 f0 inParamDecl '<> param;' #txt
or0 f0 inParamTable 'out.customer.firstname="John";
out.customer.lastname="Smith";
' #txt
or0 f0 requestEnabled true #txt
or0 f0 triggerEnabled false #txt
or0 f0 callSignature start() #txt
or0 f0 persist false #txt
or0 f0 startName 'Business Error interrupts the happy path and calls rollback activities' #txt
or0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
or0 f0 showInStartList true #txt
or0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
or0 f0 @C|.responsibility Everybody #txt
or0 f0 33 113 30 30 -21 17 #rect
or0 f3 dialogId error.handling.demo.SelectOptions #txt
or0 f3 startMethod start(booking.Customer) #txt
or0 f3 requestActionDecl '<booking.Customer customer> param;' #txt
or0 f3 requestMappingAction 'param.customer=in.customer;
' #txt
or0 f3 responseActionDecl 'booking.BookingData out;
' #txt
or0 f3 responseMappingAction 'out=in;
out.carSize=result.carSize;
out.flight=result.flight;
' #txt
or0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select
flight &amp; car</name>
    </language>
</elementInfo>
' #txt
or0 f3 112 106 112 44 -28 -16 #rect
or0 f4 expr out #txt
or0 f4 63 128 112 128 #arcP
or0 f5 processCall Booking/Service/Flight:bookFlight(booking.Flight,booking.Customer) #txt
or0 f5 requestActionDecl '<booking.Flight flight,booking.Customer customer> param;' #txt
or0 f5 responseActionDecl 'booking.BookingData out;
' #txt
or0 f5 responseMappingAction 'out=in;
' #txt
or0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>book flight</name>
    </language>
</elementInfo>
' #txt
or0 f5 264 106 112 44 -28 -8 #rect
or0 f6 expr out #txt
or0 f6 224 128 264 128 #arcP
or0 f7 processCall Booking/Service/Car:bookCar(String) #txt
or0 f7 requestActionDecl '<String size> param;' #txt
or0 f7 responseActionDecl 'booking.BookingData out;
' #txt
or0 f7 responseMappingAction 'out=in;
' #txt
or0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>book car</name>
    </language>
</elementInfo>
' #txt
or0 f7 424 106 112 44 -23 -8 #rect
or0 f8 expr out #txt
or0 f8 376 128 424 128 #arcP
or0 Et0 actionTable 'out=in;
' #txt
or0 Et0 errorCode booking:flight:failed #txt
or0 Et0 attachedToRef 150047A1589EB0D8-f5 #txt
or0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>failed</name>
    </language>
</elementInfo>
' #txt
or0 Et0 337 145 30 30 19 0 #rect
or0 Et1 actionTable 'out=in;
' #txt
or0 Et1 errorCode booking:car:failed #txt
or0 Et1 attachedToRef 150047A1589EB0D8-f7 #txt
or0 Et1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>failed</name>
    </language>
</elementInfo>
' #txt
or0 Et1 497 145 30 30 18 1 #rect
or0 f9 template "view/booking-failed.xhtml" #txt
or0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>booking failed</name>
    </language>
</elementInfo>
' #txt
or0 f9 737 273 30 30 -38 17 #rect
or0 f10 352 175 737 288 #arcP
or0 f10 1 352 288 #addKink
or0 f10 1 0.30904127690867544 0 0 #arcLabel
or0 f11 processCall Booking/Service/Flight:cancelFlight(booking.Flight,booking.Customer) #txt
or0 f11 requestActionDecl '<booking.Flight flight,booking.Customer customer> param;' #txt
or0 f11 responseActionDecl 'booking.BookingData out;
' #txt
or0 f11 responseMappingAction 'out=in;
' #txt
or0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel flight
booking</name>
        <desc>compensate already booked flight</desc>
    </language>
</elementInfo>
' #txt
or0 f11 456 210 112 44 -32 -20 #rect
or0 f12 512 175 512 210 #arcP
or0 f13 expr out #txt
or0 f13 568 232 752 273 #arcP
or0 f13 1 752 232 #addKink
or0 f13 0 0.8265723266538095 0 0 #arcLabel
or0 f1 beanConfig '"{/emailSubject ""Booking confirmation""/emailFrom """"/emailReplyTo """"/emailTo ""<%=in.customer.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""...""/emailAttachments * }"' #txt
or0 f1 type booking.BookingData #txt
or0 f1 timeout 0 #txt
or0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmation
mail</name>
    </language>
</elementInfo>
' #txt
or0 f1 576 106 112 44 -34 -16 #rect
or0 f2 expr out #txt
or0 f2 536 128 576 128 #arcP
or0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates the handling of Business Errors
The Happy Path is interrupted and 
 rollback activities are called. </name>
    </language>
</elementInfo>
' #txt
or0 f16 @C|color NodeStyle3 #txt
or0 f16 64 18 336 60 -158 -26 #rect
or0 f14 template "view/booking-success.xhtml" #txt
or0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>booking 
successful</name>
    </language>
</elementInfo>
' #txt
or0 f14 737 113 30 30 -26 18 #rect
or0 f15 expr out #txt
or0 f15 688 128 737 128 #arcP
>Proto or0 .colors 'NodeStyle3=rgb(255, 0, 0);
' #txt
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
