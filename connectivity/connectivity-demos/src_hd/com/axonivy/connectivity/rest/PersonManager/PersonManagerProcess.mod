[Ivy]
15470DE765DF45FC 9.3.1 #module
>Proto >Proto Collection #zClass
Ps0 PersonManagerProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @UdMethod f6 '' #zField
Ps0 @UdProcessEnd f7 '' #zField
Ps0 @PushWFArc f8 '' #zField
Ps0 @UdEvent f9 '' #zField
Ps0 @UdProcessEnd f10 '' #zField
Ps0 @UdEvent f14 '' #zField
Ps0 @UdProcessEnd f15 '' #zField
Ps0 @UdMethod f19 '' #zField
Ps0 @UdProcessEnd f21 '' #zField
Ps0 @UdMethod f22 '' #zField
Ps0 @UdProcessEnd f23 '' #zField
Ps0 @RestClientCall f25 '' #zField
Ps0 @PushWFArc f26 '' #zField
Ps0 @PushWFArc f13 '' #zField
Ps0 @RestClientCall f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @RestClientCall f27 '' #zField
Ps0 @PushWFArc f28 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RestClientCall f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @PushWFArc f24 '' #zField
>Proto Ps0 Ps0 PersonManagerProcess #zField
Ps0 f0 guid 15470DE767CB62E5 #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 inActionCode 'out.editPerson; //init' #txt
Ps0 f0 outParameterDecl '<> result;' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -16 15 #rect
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f2 expr out #txt
Ps0 f2 109 64 211 64 #arcP
Ps0 f3 guid 15470DE7696A313C #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 179 26 26 -15 12 #rect
Ps0 f4 211 179 26 26 0 12 #rect
Ps0 f5 expr out #txt
Ps0 f5 109 192 211 192 #arcP
Ps0 f6 guid 154714B11193C26B #txt
Ps0 f6 method edit(com.axonivy.connectivity.Person) #txt
Ps0 f6 inParameterDecl '<com.axonivy.connectivity.Person person> param;' #txt
Ps0 f6 inParameterMapAction 'out.editPerson=param.person;
' #txt
Ps0 f6 outParameterDecl '<> result;' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit(Person)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 83 115 26 26 -34 15 #rect
Ps0 f7 211 115 26 26 0 12 #rect
Ps0 f8 109 128 211 128 #arcP
Ps0 f9 guid 1547568524C22385 #txt
Ps0 f9 actionTable 'out=in;
' #txt
Ps0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f9 83 339 26 26 -10 15 #rect
Ps0 f10 339 339 26 26 0 12 #rect
Ps0 f14 guid 154756D22FAF47CA #txt
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 83 403 26 26 -19 15 #rect
Ps0 f15 339 403 26 26 0 12 #rect
Ps0 f19 guid 154756E891F20C23 #txt
Ps0 f19 method update() #txt
Ps0 f19 inParameterDecl '<> param;' #txt
Ps0 f19 outParameterDecl '<> result;' #txt
Ps0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f19 83 275 26 26 -36 15 #rect
Ps0 f21 339 275 26 26 0 12 #rect
Ps0 f22 guid 154996947DF8D2D2 #txt
Ps0 f22 method delete(java.util.UUID) #txt
Ps0 f22 inParameterDecl '<java.util.UUID id> param;' #txt
Ps0 f22 inParameterMapAction 'out.editPerson.id=param.id;
' #txt
Ps0 f22 outParameterDecl '<> result;' #txt
Ps0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete(UUID)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f22 83 467 26 26 -36 15 #rect
Ps0 f23 339 467 26 26 0 12 #rect
Ps0 f25 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
Ps0 f25 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
Ps0 f25 method PUT #txt
Ps0 f25 bodyInputType FORM #txt
Ps0 f25 bodyForm 'firstname=in.firstName;
lastname=in.lastName;
' #txt
Ps0 f25 responseMapping 'out.response=response;
' #txt
Ps0 f25 clientErrorCode ivy:error:rest:client #txt
Ps0 f25 statusErrorCode ivy:error:rest:client #txt
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonService.PUT</name>
    </language>
</elementInfo>
' #txt
Ps0 f25 152 330 144 44 -58 -7 #rect
Ps0 f26 expr out #txt
Ps0 f26 109 352 152 352 #arcP
Ps0 f13 296 352 339 352 #arcP
Ps0 f11 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
Ps0 f11 resultType java.util.List<com.axonivy.connectivity.Person> #txt
Ps0 f11 responseMapping 'out.persons=result;
' #txt
Ps0 f11 clientErrorCode ivy:error:rest:client #txt
Ps0 f11 statusErrorCode ivy:error:rest:client #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonService.GET</name>
    </language>
</elementInfo>
' #txt
Ps0 f11 152 266 144 44 -58 -7 #rect
Ps0 f12 expr out #txt
Ps0 f12 109 288 152 288 #arcP
Ps0 f20 296 288 339 288 #arcP
Ps0 f27 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
Ps0 f27 path {person.id} #txt
Ps0 f27 templateParams 'person.id=in.editPerson.id;
' #txt
Ps0 f27 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
Ps0 f27 method POST #txt
Ps0 f27 bodyInputType ENTITY #txt
Ps0 f27 bodyObjectType com.axonivy.connectivity.Person #txt
Ps0 f27 bodyObjectMapping 'param=in.editPerson;
' #txt
Ps0 f27 responseMapping 'out.response=response;
' #txt
Ps0 f27 clientErrorCode ivy:error:rest:client #txt
Ps0 f27 statusErrorCode ivy:error:rest:client #txt
Ps0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonService.POST</name>
    </language>
</elementInfo>
' #txt
Ps0 f27 152 394 144 44 -62 -7 #rect
Ps0 f28 expr out #txt
Ps0 f28 109 416 152 416 #arcP
Ps0 f16 296 416 339 416 #arcP
Ps0 f17 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
Ps0 f17 path {person.id} #txt
Ps0 f17 templateParams 'person.id=in.editPerson.id;
' #txt
Ps0 f17 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
Ps0 f17 method DELETE #txt
Ps0 f17 bodyInputType ENTITY #txt
Ps0 f17 bodyObjectCode 'param = in.editPerson;' #txt
Ps0 f17 responseMapping 'out.response=response;
' #txt
Ps0 f17 clientErrorCode ivy:error:rest:client #txt
Ps0 f17 statusErrorCode ivy:error:rest:client #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonService.DELETE</name>
    </language>
</elementInfo>
' #txt
Ps0 f17 153 458 144 44 -69 -7 #rect
Ps0 f18 expr out #txt
Ps0 f18 109 480 153 480 #arcP
Ps0 f24 297 480 339 480 #arcP
>Proto Ps0 .type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Invokes REST client calls</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>288</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>248</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f6 mainOut f8 tail #connect
Ps0 f8 head f7 mainIn #connect
Ps0 f9 mainOut f26 tail #connect
Ps0 f26 head f25 mainIn #connect
Ps0 f25 mainOut f13 tail #connect
Ps0 f13 head f10 mainIn #connect
Ps0 f19 mainOut f12 tail #connect
Ps0 f12 head f11 mainIn #connect
Ps0 f11 mainOut f20 tail #connect
Ps0 f20 head f21 mainIn #connect
Ps0 f14 mainOut f28 tail #connect
Ps0 f28 head f27 mainIn #connect
Ps0 f27 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f22 mainOut f18 tail #connect
Ps0 f18 head f17 mainIn #connect
Ps0 f17 mainOut f24 tail #connect
Ps0 f24 head f23 mainIn #connect
