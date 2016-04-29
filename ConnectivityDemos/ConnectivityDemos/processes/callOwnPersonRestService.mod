[Ivy]
[>Created: Fri Apr 29 14:56:25 CEST 2016]
154616078A1D629D 3.18 #module
>Proto >Proto Collection #zClass
ce0 callOwnPersonRestService Big #zClass
ce0 B #cInfo
ce0 #process
ce0 @TextInP .resExport .resExport #zField
ce0 @TextInP .type .type #zField
ce0 @TextInP .processKind .processKind #zField
ce0 @AnnotationInP-0n ai ai #zField
ce0 @MessageFlowInP-0n messageIn messageIn #zField
ce0 @MessageFlowOutP-0n messageOut messageOut #zField
ce0 @TextInP .xml .xml #zField
ce0 @TextInP .responsibility .responsibility #zField
ce0 @StartRequest f0 '' #zField
ce0 @EndTask f1 '' #zField
ce0 @GridStep f3 '' #zField
ce0 @PushWFArc f4 '' #zField
ce0 @PushWFArc f2 '' #zField
>Proto ce0 ce0 callOwnPersonRestService #zField
ce0 f0 outLink start.ivp #txt
ce0 f0 type com.axonivy.connectivity.Data #txt
ce0 f0 inParamDecl '<> param;' #txt
ce0 f0 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
ce0 f0 guid 154616078B31F8AD #txt
ce0 f0 requestEnabled true #txt
ce0 f0 triggerEnabled false #txt
ce0 f0 callSignature start() #txt
ce0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
ce0 f0 @C|.responsibility Everybody #txt
ce0 f0 81 49 30 30 -21 17 #rect
ce0 f0 @|StartRequestIcon #fIcon
ce0 f1 type com.axonivy.connectivity.Data #txt
ce0 f1 337 49 30 30 0 15 #rect
ce0 f1 @|EndIcon #fIcon
ce0 f3 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
ce0 f3 actionTable 'out=in;
' #txt
ce0 f3 actionCode 'import com.axonivy.connectivity.Person;
import ch.ivyteam.ivy.rest.client.GenericTypes;

List<Person> persons = ivy.rest.client("personService").resolveTemplate("operation","list").request().get(GenericTypes.listOf(Person.class)) as List<Person>;
ivy.log.info(persons);' #txt
ce0 f3 type com.axonivy.connectivity.Data #txt
ce0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call PersonService</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f3 168 42 112 44 -52 -8 #rect
ce0 f3 @|StepIcon #fIcon
ce0 f4 expr out #txt
ce0 f4 111 64 168 64 #arcP
ce0 f2 expr out #txt
ce0 f2 280 64 337 64 #arcP
>Proto ce0 .type com.axonivy.connectivity.Data #txt
>Proto ce0 .processKind NORMAL #txt
>Proto ce0 0 0 32 24 18 0 #rect
>Proto ce0 @|BIcon #fIcon
ce0 f0 mainOut f4 tail #connect
ce0 f4 head f3 mainIn #connect
ce0 f3 mainOut f2 tail #connect
ce0 f2 head f1 mainIn #connect
