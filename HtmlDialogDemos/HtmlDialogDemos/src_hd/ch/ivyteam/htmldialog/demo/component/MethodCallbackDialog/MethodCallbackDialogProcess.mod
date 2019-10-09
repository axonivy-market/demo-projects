[Ivy]
13EF083D130E971B 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MethodCallbackDialogProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdInit f0 '' #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @UdProcessEnd f4 '' #zField
Ms0 @GridStep f6 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdProcessEnd f5 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @UdEvent f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
>Proto Ms0 Ms0 MethodCallbackDialogProcess #zField
Ms0 f0 guid 13EF083D17E22CE7 #txt
Ms0 f0 method start() #txt
Ms0 f0 inParameterDecl '<> param;' #txt
Ms0 f0 outParameterDecl '<> result;' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -16 12 #rect
Ms0 f0 @|UdInitIcon #fIcon
Ms0 f0 -1|-1|-9671572 #nodeStyle
Ms0 f1 411 51 26 26 0 12 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f1 -1|-1|-9671572 #nodeStyle
Ms0 f4 211 147 26 26 0 12 #rect
Ms0 f4 @|UdProcessEndIcon #fIcon
Ms0 f4 -1|-1|-9671572 #nodeStyle
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import ch.ivyteam.htmldialog.demo.Person;

Person reguel = new Person();
reguel.name = "Wermelinger";
reguel.firstname = "Reguel";
in.persons.add(reguel);

Person peter = new Person();
peter.name = "Stöckli";
peter.firstname = "Peter";
out.persons.add(peter);

Person christian = new Person();
christian.name = "Strebel";
christian.firstname = "Christian";
out.persons.add(christian);

Person bruno = new Person();
bruno.name = "Bütler";
bruno.firstname = "Bruno";
out.persons.add(bruno);' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load demo data:
create persons</name>
        <nameStyle>30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 200 42 128 44 -42 -16 #rect
Ms0 f6 @|StepIcon #fIcon
Ms0 f6 -1|-1|-9671572 #nodeStyle
Ms0 f7 expr out #txt
Ms0 f7 109 64 200 64 #arcP
Ms0 f2 expr out #txt
Ms0 f2 328 64 411 64 #arcP
Ms0 f3 guid 13EFAD0DB9C9F626 #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 actionCode 'import javax.faces.component.UICommand;

UICommand commandButton = event.getSource() as UICommand;
ivy.log.info("Received click event from component button [{0}]", commandButton.value);

// create message for pop-up (p:growl)
javax.faces.context.FacesContext.getCurrentInstance().addMessage(null,
	new javax.faces.application.FacesMessage(
	"Button clicked ["+commandButton.value+"]", 
	"Received click event from component "+commandButton
));' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>componentButtonClicked</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 243 26 26 -69 12 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f3 -1|-1|-9671572 #nodeStyle
Ms0 f5 211 243 26 26 0 12 #rect
Ms0 f5 @|UdProcessEndIcon #fIcon
Ms0 f5 -1|-1|-9671572 #nodeStyle
Ms0 f10 expr out #txt
Ms0 f10 109 256 211 256 #arcP
Ms0 f8 guid 14E2B119984107D7 #txt
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 actionCode 'import org.primefaces.event.SelectEvent;
import javax.faces.context.FacesContext;
import ch.ivyteam.htmldialog.demo.Person;

SelectEvent selectEvent = event as SelectEvent;
Person selectedPerson = selectEvent.getObject() as Person;
ivy.log.info("Component item selected: "+selectedPerson);

// create message for pop-up (p:growl)
FacesContext.getCurrentInstance().addMessage(null,
	new javax.faces.application.FacesMessage(
	"Person selected", 
	"Selection: "+selectedPerson + " \n" +
	"Component:" +selectEvent.getComponent()
));' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>componentTableRowSelected</name>
        <nameStyle>25,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 83 147 26 26 -83 15 #rect
Ms0 f8 @|UdEventIcon #fIcon
Ms0 f9 expr out #txt
Ms0 f9 109 160 211 160 #arcP
>Proto Ms0 .type ch.ivyteam.htmldialog.demo.component.MethodCallbackDialog.MethodCallbackDialogData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
Ms0 f6 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f10 tail #connect
Ms0 f10 head f5 mainIn #connect
Ms0 f8 mainOut f9 tail #connect
Ms0 f9 head f4 mainIn #connect
