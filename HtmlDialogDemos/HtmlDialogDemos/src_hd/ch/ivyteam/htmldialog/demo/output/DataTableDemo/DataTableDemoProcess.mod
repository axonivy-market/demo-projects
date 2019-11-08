[Ivy]
153D1CC01F460F8B 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 DataTableDemoProcess Big #zClass
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
Ds0 @UdProcessEnd f9 '' #zField
Ds0 @GridStep f11 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @UdEvent f8 '' #zField
Ds0 @UdEvent f13 '' #zField
Ds0 @UdProcessEnd f14 '' #zField
Ds0 @PushWFArc f15 '' #zField
>Proto Ds0 Ds0 DataTableDemoProcess #zField
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
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
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
Ds0 f3 @|UdEventIcon #fIcon
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|UdExitEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ch.ivyteam.htmldialog.demo.Score;

// init list with some items
// init the score date with an ivy-Date which has no time. Important for the date filter in the DataTable
out.scores.add((new Score()).setId(100).setName("Beni").setPoints(2563).setDate(new Date()));
out.scores.add((new Score()).setId(110).setName("Achmed").setPoints(346).setDate(new Date()));
out.scores.add((new Score()).setId(221).setName("Cyril").setPoints(4654).setDate(new Date()));
out.scores.add((new Score()).setId(238).setName("Birgit").setPoints(6666).setDate(new Date()));
out.scores.add((new Score()).setId(340).setName("Maurice").setPoints(324).setDate(new Date()));
out.scores.add((new Score()).setId(450).setName("Daisy").setPoints(2679).setDate(new Date()));
out.scores.add((new Score()).setId(455).setName("Yvonne").setPoints(1324).setDate(new Date()));
out.scores.add((new Score()).setId(550).setName("Nadia").setPoints(2639).setDate(new Date()));
out.scores.add((new Score()).setId(634).setName("Mike").setPoints(9324).setDate(new Date()));
out.scores.add((new Score()).setId(650).setName("Peter").setPoints(2479).setDate(new Date()));
out.scores.add((new Score()).setId(700).setName("Charly").setPoints(3424).setDate(new Date()));
out.scores.add((new Score()).setId(850).setName("Tim").setPoints(2889).setDate(new Date()));

// init list of names
for(Score scr : out.scores)
{
	out.names.add(scr.name);	
}' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Data</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -26 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
Ds0 f9 339 243 26 26 0 12 #rect
Ds0 f9 @|UdProcessEndIcon #fIcon
Ds0 f11 actionTable 'out=in;
' #txt
Ds0 f11 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

Boolean errmessage = FacesContext.getCurrentInstance().getMessageList().size() >= 1 ? true : false;

if(!errmessage)
{
	ivy.log.debug("Item updated: {0}", in.selectedScore);
}' #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 168 234 112 44 -10 -8 #rect
Ds0 f11 @|StepIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 280 256 339 256 #arcP
Ds0 f12 expr out #txt
Ds0 f12 109 256 168 256 #arcP
Ds0 f8 guid 153D21AB2BFC4D05 #txt
Ds0 f8 actionTable 'out=in;
' #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f8 83 243 26 26 -13 15 #rect
Ds0 f8 @|UdEventIcon #fIcon
Ds0 f13 guid 16E46363FE229050 #txt
Ds0 f13 actionTable 'out=in;
' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Ds0 f13 83 339 26 26 -14 15 #rect
Ds0 f13 @|UdEventIcon #fIcon
Ds0 f14 339 339 26 26 0 12 #rect
Ds0 f14 @|UdProcessEndIcon #fIcon
Ds0 f15 109 352 339 352 #arcP
>Proto Ds0 .type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f8 mainOut f12 tail #connect
Ds0 f12 head f11 mainIn #connect
Ds0 f11 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
Ds0 f13 mainOut f15 tail #connect
Ds0 f15 head f14 mainIn #connect
