[Ivy]
[>Created: Mon Dec 03 17:04:03 CET 2012]
13AB4E041EC565BE 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ChartsDemoProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @InfoButton f3 '' #zField
Cs0 @AnnotationArc f4 '' #zField
>Proto Cs0 Cs0 ChartsDemoProcess #zField
Cs0 f0 guid 13AB4E0421B1C955 #txt
Cs0 f0 type ch.ivyteam.ivy.demo.charts.ChartsDemo.ChartsDemoData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inActionCode 'import ch.ivyteam.ivy.demo.charts.ChartDataGenerator;
ChartDataGenerator.generateData(out.data);' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/pieChartProgrammingLanguagePanel {/fieldName "pieChartProgrammingLanguagePanel"/startMethod "start(List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity>)"/parameterMapping "param.data=in.data;\n"/initScript ""/userContext * }/barChartProgrammingLanguagesPanel {/fieldName "barChartProgrammingLanguagesPanel"/startMethod "start(List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity>)"/parameterMapping "param.data=in.data;\n"/initScript ""/userContext * }/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/charts\";\nparam.title=\"Charts Demo\";\nparam.subtitle=\"Shows how to create and update charts in ivy. \";\n"/initScript ""/userContext * }}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.demo.charts.ChartsDemo.ChartsDemoData #txt
Cs0 f1 86 198 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 96 74 96 198 #arcP
Cs0 f2 0 0.49999999999999994 0 0 #arcLabel
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This is the main dialog that glues the demo together. 
It only contains a tab display and loads
two embedded panels, one with a bar 
chart and one with a pie chart widget.

Furthermore the data for the demo is generated 
from here. For more information see the Java class 
ch.ivyteam.ivy.demo.charts.ChartDataGenerator
</name>
        <nameStyle>319,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 362 131 301 154 -145 -72 #rect
Cs0 f3 @|IBIcon #fIcon
Cs0 f3 -1|-1|-16777216 #nodeStyle
Cs0 f4 361 208 96 136 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.demo.charts.ChartsDemo.ChartsDemoData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 ao f4 tail #connect
Cs0 f4 head f2 ai #connect
