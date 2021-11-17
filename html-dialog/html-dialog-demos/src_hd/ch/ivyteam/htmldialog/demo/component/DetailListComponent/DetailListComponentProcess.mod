[Ivy]
13EF084DCC4BDEAE 9.3.1 #module
>Proto >Proto Collection #zClass
Ds0 DetailListComponentProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DetailListComponentProcess #zField
Ds0 f0 guid 13EF084DCD4FB354 #txt
Ds0 f0 method start(java.util.List<ch.ivyteam.htmldialog.demo.Person>) #txt
Ds0 f0 inParameterDecl '<java.util.List<ch.ivyteam.htmldialog.demo.Person> persons> param;' #txt
Ds0 f0 inActionCode 'import ch.ivyteam.htmldialog.demo.component.PersonListDataModel;
out.persons = new PersonListDataModel(param.persons);' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(persons)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -39 12 #rect
Ds0 f0 -1|-1|-9671572 #nodeStyle
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f1 -1|-1|-9671572 #nodeStyle
Ds0 f2 expr out #txt
Ds0 f2 109 64 211 64 #arcP
>Proto Ds0 .type ch.ivyteam.htmldialog.demo.component.DetailListComponent.DetailListComponentData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
