[Ivy]
13B69F6612D62493 3.28 #module
>Proto >Proto Collection #zClass
Ps0 PersonComponentProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 PersonComponentProcess #zField
Ps0 f0 guid 13B69F6613C66357 #txt
Ps0 f0 method start(ch.ivyteam.htmldialog.demo.Person) #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.htmldialog.demo.Person person> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.person=param.person;
' #txt
Ps0 f0 outParameterDecl '<ch.ivyteam.htmldialog.demo.Person person> result;
' #txt
Ps0 f0 outParameterMapAction 'result.person=in.person;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Person)</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -36 12 #rect
Ps0 f0 @|UdInitIcon #fIcon
Ps0 f0 -1|-1|-9671572 #nodeStyle
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f1 @|UdProcessEndIcon #fIcon
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f2 expr out #txt
Ps0 f2 109 64 211 64 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.demo.component.PersonComponent.PersonComponentData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
