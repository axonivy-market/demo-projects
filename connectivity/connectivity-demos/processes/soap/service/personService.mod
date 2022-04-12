[Ivy]
16150E1D07E8CA18 9.4.7 #module
>Proto >Proto Collection #zClass
pe0 personService Big #zClass
pe0 WS #cInfo
pe0 #process
pe0 @TextInP .colors .colors #zField
pe0 @TextInP color color #zField
pe0 @TextInP .webServiceName .webServiceName #zField
pe0 @TextInP .implementationClassName .implementationClassName #zField
pe0 @TextInP .authenticationType .authenticationType #zField
pe0 @TextInP .type .type #zField
pe0 @TextInP .processKind .processKind #zField
pe0 @AnnotationInP-0n ai ai #zField
pe0 @MessageFlowInP-0n messageIn messageIn #zField
pe0 @MessageFlowOutP-0n messageOut messageOut #zField
pe0 @TextInP .xml .xml #zField
pe0 @TextInP .responsibility .responsibility #zField
pe0 @StartWS ws0 '' #zField
pe0 @EndWS ws1 '' #zField
pe0 @StartWS f1 '' #zField
pe0 @StartWS f2 '' #zField
pe0 @EndWS f3 '' #zField
pe0 @EndWS f4 '' #zField
pe0 @GridStep f0 '' #zField
pe0 @PushWFArc f7 '' #zField
pe0 @PushWFArc f8 '' #zField
pe0 @GridStep f9 '' #zField
pe0 @PushWFArc f10 '' #zField
pe0 @PushWFArc f5 '' #zField
pe0 @GridStep f11 '' #zField
pe0 @PushWFArc f12 '' #zField
pe0 @PushWFArc f6 '' #zField
pe0 @InfoButton f13 '' #zField
>Proto pe0 pe0 personService #zField
pe0 ws0 inParamDecl '<> param;' #txt
pe0 ws0 outParamDecl '<java.util.List<com.axonivy.connectivity.Person> persons> result;' #txt
pe0 ws0 outParamTable 'result.persons=in.persons;
' #txt
pe0 ws0 actionDecl 'com.axonivy.connectivity.soap.service.PersonServiceData out;
' #txt
pe0 ws0 callSignature getPersons() #txt
pe0 ws0 useUserDefinedException false #txt
pe0 ws0 taskData TaskTriggered.PRI=2 #txt
pe0 ws0 type com.axonivy.connectivity.soap.service.PersonServiceData #txt
pe0 ws0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getPersons()</name>
    </language>
</elementInfo>
' #txt
pe0 ws0 @C|.responsibility Everybody #txt
pe0 ws0 73 113 30 30 -36 17 #rect
pe0 ws1 417 113 30 30 0 15 #rect
pe0 f1 inParamDecl '<com.axonivy.connectivity.Person person> param;' #txt
pe0 f1 inParamTable 'out.person=param.person;
' #txt
pe0 f1 outParamDecl '<com.axonivy.connectivity.Person created> result;' #txt
pe0 f1 outParamTable 'result.created=in.person;
' #txt
pe0 f1 actionDecl 'com.axonivy.connectivity.soap.service.PersonServiceData out;
' #txt
pe0 f1 callSignature addPerson(com.axonivy.connectivity.Person) #txt
pe0 f1 useUserDefinedException false #txt
pe0 f1 taskData TaskTriggered.PRI=2 #txt
pe0 f1 type com.axonivy.connectivity.soap.service.PersonServiceData #txt
pe0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addPerson(Person)</name>
    </language>
</elementInfo>
' #txt
pe0 f1 @C|.responsibility Everybody #txt
pe0 f1 73 193 30 30 -50 17 #rect
pe0 f2 inParamDecl '<com.axonivy.connectivity.Person person> param;' #txt
pe0 f2 inParamTable 'out.person=param.person;
' #txt
pe0 f2 outParamDecl '<com.axonivy.connectivity.Person deleted> result;' #txt
pe0 f2 outParamTable 'result.deleted=in.person;
' #txt
pe0 f2 actionDecl 'com.axonivy.connectivity.soap.service.PersonServiceData out;
' #txt
pe0 f2 callSignature deletePerson(com.axonivy.connectivity.Person) #txt
pe0 f2 useUserDefinedException false #txt
pe0 f2 taskData TaskTriggered.PRI=2 #txt
pe0 f2 type com.axonivy.connectivity.soap.service.PersonServiceData #txt
pe0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deletePerson(Person)</name>
    </language>
</elementInfo>
' #txt
pe0 f2 @C|.responsibility Everybody #txt
pe0 f2 73 273 30 30 -57 17 #rect
pe0 f3 417 193 30 30 0 15 #rect
pe0 f4 417 273 30 30 0 15 #rect
pe0 f0 actionTable 'out=in;
' #txt
pe0 f0 actionCode 'import com.axonivy.connectivity.soap.service.PersonRepository;

in.persons = PersonRepository.getInstance().findAll();
' #txt
pe0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find all persons</name>
    </language>
</elementInfo>
' #txt
pe0 f0 216 106 112 44 -42 -8 #rect
pe0 f7 expr out #txt
pe0 f7 103 128 216 128 #arcP
pe0 f8 expr out #txt
pe0 f8 328 128 417 128 #arcP
pe0 f9 actionTable 'out=in;
' #txt
pe0 f9 actionCode 'import com.axonivy.connectivity.soap.service.PersonRepository;

out.person = PersonRepository.getInstance().addPerson(in.person);
' #txt
pe0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add person</name>
    </language>
</elementInfo>
' #txt
pe0 f9 216 186 112 44 -31 -8 #rect
pe0 f10 expr out #txt
pe0 f10 103 208 216 208 #arcP
pe0 f5 expr out #txt
pe0 f5 328 208 417 208 #arcP
pe0 f11 actionTable 'out=in;
' #txt
pe0 f11 actionCode 'import com.axonivy.connectivity.soap.service.PersonRepository;

out.person = PersonRepository.getInstance().delete(in.person);
' #txt
pe0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete person</name>
    </language>
</elementInfo>
' #txt
pe0 f11 216 266 112 44 -38 -8 #rect
pe0 f12 expr out #txt
pe0 f12 103 288 216 288 #arcP
pe0 f6 expr out #txt
pe0 f6 328 288 417 288 #arcP
pe0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This web service provides an interface to create, load and delete people.
All accesses are protected by HTTP_BASIC.</name>
    </language>
</elementInfo>
' #txt
pe0 f13 56 26 400 44 -197 -16 #rect
>Proto pe0 .webServiceName com.axonivy.connectivity.soap.service.PersonService #txt
>Proto pe0 .authenticationType HTTP_BASIC #txt
>Proto pe0 .type com.axonivy.connectivity.soap.service.PersonServiceData #txt
>Proto pe0 .processKind WEB_SERVICE #txt
>Proto pe0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto pe0 -8 -8 16 16 16 26 #rect
pe0 ws0 mainOut f7 tail #connect
pe0 f7 head f0 mainIn #connect
pe0 f0 mainOut f8 tail #connect
pe0 f8 head ws1 mainIn #connect
pe0 f1 mainOut f10 tail #connect
pe0 f10 head f9 mainIn #connect
pe0 f9 mainOut f5 tail #connect
pe0 f5 head f3 mainIn #connect
pe0 f2 mainOut f12 tail #connect
pe0 f12 head f11 mainIn #connect
pe0 f11 mainOut f6 tail #connect
pe0 f6 head f4 mainIn #connect
