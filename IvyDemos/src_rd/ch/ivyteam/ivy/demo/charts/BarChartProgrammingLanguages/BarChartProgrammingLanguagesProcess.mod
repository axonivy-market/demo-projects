[Ivy]
[>Created: Mon Dec 03 16:29:09 CET 2012]
13AB518DA1F837E7 3.17 #module
>Proto >Proto Collection #zClass
Bs0 BarChartProgrammingLanguagesProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Bs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Bs0 @TextInP .resExport .resExport #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @RichDialogInitStart f0 '' #zField
Bs0 @RichDialogProcessEnd f2 '' #zField
Bs0 @RichDialogProcessStep f4 '' #zField
Bs0 @RichDialogMethodStart f8 '' #zField
Bs0 @RichDialogProcessStep f9 '' #zField
Bs0 @RichDialogProcessEnd f11 '' #zField
Bs0 @PushWFArc f12 '' #zField
Bs0 @RichDialog f13 '' #zField
Bs0 @PushWFArc f14 '' #zField
Bs0 @PushWFArc f10 '' #zField
Bs0 @PushWFArc f1 '' #zField
Bs0 @PushWFArc f3 '' #zField
Bs0 @InfoButton f5 '' #zField
Bs0 @AnnotationArc f6 '' #zField
Bs0 @InfoButton f7 '' #zField
Bs0 @AnnotationArc f15 '' #zField
>Proto Bs0 Bs0 BarChartProgrammingLanguagesProcess #zField
Bs0 f0 guid 13AB518DA6D4DDA2 #txt
Bs0 f0 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f0 method start(List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity>) #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity> data> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 inParameterMapAction 'out.chartTitle="Usage of Programming Languages";
out.data=param.data;
' #txt
Bs0 f0 outParameterDecl '<> result;
' #txt
Bs0 f0 embeddedRdInitializations '* ' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(List&lt;ProgrammingLanguagePopularity&gt;)</name>
        <nameStyle>42,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f0 86 54 20 20 13 0 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f2 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f2 86 190 20 20 13 0 #rect
Bs0 f2 @|RichDialogProcessEndIcon #fIcon
Bs0 f4 actionDecl 'ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData out;
' #txt
Bs0 f4 actionTable 'out=in;
' #txt
Bs0 f4 actionCode panel.loadDataIntoChart(in.data); #txt
Bs0 f4 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load data
into chart</name>
        <nameStyle>10,7
10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f4 78 140 36 24 20 -2 #rect
Bs0 f4 @|RichDialogProcessStepIcon #fIcon
Bs0 f8 guid 13B47C8DCAEF08EC #txt
Bs0 f8 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f8 method updateBar(ch.ivyteam.ulc.vwidget.chart.server.model.DataSeries,Number) #txt
Bs0 f8 disableUIEvents false #txt
Bs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ulc.vwidget.chart.server.model.DataSeries dataSeries,java.lang.Number index> param = methodEvent.getInputArguments();
' #txt
Bs0 f8 inParameterMapAction 'out.dataSeries=param.dataSeries;
out.index=param.index;
' #txt
Bs0 f8 outParameterDecl '<> result;
' #txt
Bs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateBar</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f8 94 278 20 20 13 0 #rect
Bs0 f8 @|RichDialogMethodStartIcon #fIcon
Bs0 f9 actionDecl 'ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData out;
' #txt
Bs0 f9 actionTable 'out=in;
' #txt
Bs0 f9 actionCode 'panel.progLangBarChart.updateValue(in.dataSeries, in.index, in.newValue);' #txt
Bs0 f9 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updates 
bar chart</name>
        <nameStyle>9,7
9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f9 86 380 36 24 20 -2 #rect
Bs0 f9 @|RichDialogProcessStepIcon #fIcon
Bs0 f11 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f11 94 430 20 20 13 0 #rect
Bs0 f11 @|RichDialogProcessEndIcon #fIcon
Bs0 f12 expr out #txt
Bs0 f12 104 404 104 430 #arcP
Bs0 f13 targetWindow NEW:card: #txt
Bs0 f13 targetDisplay TOP #txt
Bs0 f13 richDialogId ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog #txt
Bs0 f13 startMethod askInput(String,String,List<String>) #txt
Bs0 f13 type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
Bs0 f13 requestActionDecl '<String question, String defaultValue, List<String> buttons> param;' #txt
Bs0 f13 requestMappingAction 'param.question="Please set the new value for the bar that you clicked on";
param.buttons=["ok"];
' #txt
Bs0 f13 responseActionDecl 'ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData out;
' #txt
Bs0 f13 responseMappingAction 'out=in;
out.newValue=result.inputString.toNumber();
' #txt
Bs0 f13 windowConfiguration '{/title "Select Value"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Bs0 f13 isAsynch false #txt
Bs0 f13 isInnerRd true #txt
Bs0 f13 userContext '* ' #txt
Bs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ask for 
new value</name>
        <nameStyle>9,7
9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f13 86 332 36 24 20 -2 #rect
Bs0 f13 @|RichDialogIcon #fIcon
Bs0 f14 expr out #txt
Bs0 f14 104 298 104 332 #arcP
Bs0 f10 expr out #txt
Bs0 f10 104 356 104 380 #arcP
Bs0 f1 expr out #txt
Bs0 f1 96 74 96 140 #arcP
Bs0 f3 expr out #txt
Bs0 f3 96 164 96 190 #arcP
Bs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Although the chart widgets can mostly be configured 
with the properties view of the Visual Editor (in the 
Rich Dialog perspective), some things can only be used 
with Java code.

Therefore, for more information about how this bar chart 
widget works, go to the Java source code of the panel of
this Rich Dialog.

</name>
        <nameStyle>314,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f5 281 91 318 170 -154 -80 #rect
Bs0 f5 @|IBIcon #fIcon
Bs0 f5 -1|-1|-16777216 #nodeStyle
Bs0 f6 281 176 96 107 #arcP
Bs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If you need to show a rich dialog after the user 
clicked on a bar, then implement a Rich Dialog 
method (don''t forget to define the method in 
the Rich Dialog interface) that makes the call
to your Rich Dialog. 

See the java source code for this Rich Dialog 
for information about how to invoke this method.</name>
        <nameStyle>63,7
246,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f7 281 315 271 138 -130 -64 #rect
Bs0 f7 @|IBIcon #fIcon
Bs0 f7 -1|-1|-16777216 #nodeStyle
Bs0 f15 280 384 104 315 #arcP
>Proto Bs0 .rdData2UIAction 'panel.progLangBarChart.title=in.chartTitle;
' #txt
>Proto Bs0 .type ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesData #txt
>Proto Bs0 .processKind RICH_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f9 mainOut f12 tail #connect
Bs0 f12 head f11 mainIn #connect
Bs0 f8 mainOut f14 tail #connect
Bs0 f14 head f13 mainIn #connect
Bs0 f13 mainOut f10 tail #connect
Bs0 f10 head f9 mainIn #connect
Bs0 f0 mainOut f1 tail #connect
Bs0 f1 head f4 mainIn #connect
Bs0 f4 mainOut f3 tail #connect
Bs0 f3 head f2 mainIn #connect
Bs0 f5 ao f6 tail #connect
Bs0 f6 head f1 ai #connect
Bs0 f7 ao f15 tail #connect
Bs0 f15 head f14 ai #connect
