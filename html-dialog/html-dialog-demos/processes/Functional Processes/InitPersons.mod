[Ivy]
139D97A1E15DE439 9.4.6 #module
>Proto >Proto Collection #zClass
Is0 InitPersons Big #zClass
Is0 B #cInfo
Is0 #process
Is0 @TextInP .colors .colors #zField
Is0 @TextInP color color #zField
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @StartSub f0 '' #zField
Is0 @EndSub f1 '' #zField
Is0 @GridStep f2 '' #zField
Is0 @PushWFArc f3 '' #zField
Is0 @PushWFArc f4 '' #zField
>Proto Is0 Is0 InitPersons #zField
Is0 f0 outParamDecl '<List<ch.ivyteam.htmldialog.demo.Person> persons> result;' #txt
Is0 f0 outParamTable 'result.persons=in.persons;
' #txt
Is0 f0 callSignature initPerson() #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
    </language>
</elementInfo>
' #txt
Is0 f0 81 49 30 30 -32 15 #rect
Is0 f0 -1|-1|-9671572 #nodeStyle
Is0 f1 401 49 30 30 0 15 #rect
Is0 f1 -1|-1|-9671572 #nodeStyle
Is0 f2 actionTable 'out=in;
' #txt
Is0 f2 actionCode 'import ch.ivyteam.htmldialog.demo.Person;

Person person = new Person();
person.name = "Stalder";
person.firstname = "Renato";
out.persons.add(person);

person = new Person();
person.name = "Bütler";
person.firstname = "Bruno";
out.persons.add(person);

person = new Person();
person.name = "Weiss";
person.firstname = "Reto";
out.persons.add(person);

person = new Person();
person.name = "Hürlimann";
person.firstname = "Caty";
out.persons.add(person);

person = new Person();
person.name = "Kis";
person.firstname = "Tamas";
out.persons.add(person);

person = new Person();
person.name = "Dänzer";
person.firstname = "Michael";
out.persons.add(person);' #txt
Is0 f2 192 42 112 44 58 -2 #rect
Is0 f2 -1|-1|-9671572 #nodeStyle
Is0 f3 expr out #txt
Is0 f3 111 64 192 64 #arcP
Is0 f4 expr out #txt
Is0 f4 304 64 401 64 #arcP
>Proto Is0 .type ch.ivyteam.htmldialog.demo.InitPersonsData #txt
>Proto Is0 .processKind CALLABLE_SUB #txt
>Proto Is0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Is0 0 0 32 24 18 0 #rect
>Proto Is0 @|BIcon #fIcon
Is0 f0 mainOut f3 tail #connect
Is0 f3 head f2 mainIn #connect
Is0 f2 mainOut f4 tail #connect
Is0 f4 head f1 mainIn #connect
