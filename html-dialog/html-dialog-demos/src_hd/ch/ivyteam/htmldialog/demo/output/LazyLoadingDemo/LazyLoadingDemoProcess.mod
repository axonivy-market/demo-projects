[Ivy]
15AEFE76879218F9 9.3.0 #module
>Proto >Proto Collection #zClass
Ds0 LazyLoadingDemoProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @UdExitEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 LazyLoadingDemoProcess #zField
Ds0 f0 guid 153D1CC021F1C2E7 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f3 guid 153D1CC0233591EA #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ch.ivyteam.htmldialog.demo.data.*;
import ch.ivyteam.htmldialog.demo.component.PersonLazyDataModel;
import ch.ivyteam.htmldialog.demo.Person;

DataSource source = new DataSource(123456);
out.lazyModel = new PersonLazyDataModel(source);' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>generate Data</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -39 -8 #rect
Ds0 f7 expr out #txt
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
>Proto Ds0 .type ch.ivyteam.htmldialog.demo.output.LazyLoadingDemo.LazyLoadingDemoData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
