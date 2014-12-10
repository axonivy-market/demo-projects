[Ivy]
[>Created: Mon Dec 03 16:01:02 CET 2012]
13AB52021028C798 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PieChartProgrammingLanguageProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogProcessStep f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @InfoButton f5 '' #zField
Ps0 @AnnotationArc f6 '' #zField
>Proto Ps0 Ps0 PieChartProgrammingLanguageProcess #zField
Ps0 f0 guid 13AB5202111422FC #txt
Ps0 f0 type ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguageData #txt
Ps0 f0 method start(List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity>) #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity> data> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(List&lt;ProgrammingLanguagePoularity&gt;)</name>
        <nameStyle>41,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguageData #txt
Ps0 f1 86 214 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 actionDecl 'ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguageData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode panel.loadDataIntoChart(out.data); #txt
Ps0 f3 type ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguageData #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set data 
into chart</name>
        <nameStyle>10,7
10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 78 132 36 24 20 -2 #rect
Ps0 f3 @|RichDialogProcessStepIcon #fIcon
Ps0 f4 expr out #txt
Ps0 f4 96 74 96 132 #arcP
Ps0 f2 expr out #txt
Ps0 f2 96 156 96 214 #arcP
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Although the chart widgets can mostly be configured 
with the properties view of the Visual Editor (in the 
Rich Dialog perspective), some things can only be used 
with Java code.

Therefore, for more information about how this pie chart 
widget works, go to the Java source code of the panel of
this Rich Dialog.</name>
        <nameStyle>99,7
214,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 297 115 318 138 -154 -64 #rect
Ps0 f5 @|IBIcon #fIcon
Ps0 f5 -1|-1|-16777216 #nodeStyle
Ps0 f6 297 184 96 103 #arcP
>Proto Ps0 .type ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguageData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f5 ao f6 tail #connect
Ps0 f6 head f4 ai #connect
