[Ivy]
[>Created: Fri May 22 00:20:54 CEST 2009]
11999C6F2931E28A 3.11 #module
>Proto >Proto Collection #zClass
Ms0 ManyClientStresserProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogProcessStep f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @RichDialogProcessEnd f6 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @RichDialogProcessStart f8 '' #zField
Ms0 @RichDialogProcessStep f9 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @RichDialogProcessEnd f11 '' #zField
Ms0 @PushWFArc f12 '' #zField
Ms0 @RichDialogProcessStart f13 '' #zField
Ms0 @RichDialogProcessStep f14 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @RichDialogProcessEnd f16 '' #zField
Ms0 @PushWFArc f17 '' #zField
Ms0 @InfoButton f23 '' #zField
>Proto Ms0 Ms0 ManyClientStresserProcess #zField
Ms0 f0 guid 11994EA94E4B34A4 #txt
Ms0 f0 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f0 method start() #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 inParameterMapAction 'out.interval=1000;
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/clock\";\nparam.title=\"Clock\";\nparam.subtitle=\"Shows how to use ULCPollingTimer to update UI continuously.\";\n"/initScript ""}}' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 62 30 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f1 59 115 26 26 14 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 72 50 72 115 #arcP
Ms0 f3 guid 11999D042697DF05 #txt
Ms0 f3 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f3 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartTimer</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 166 30 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startTimer</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f4 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f4 actionTable 'out=in;
' #txt
Ms0 f4 actionCode 'panel.getTimer().setRepeats(panel.CheckBox.selected);
panel.getTimer().setDelay(in.interval);
panel.getTimer().start();' #txt
Ms0 f4 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f4 158 108 36 24 20 -2 #rect
Ms0 f4 @|RichDialogProcessStepIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 176 50 176 108 #arcP
Ms0 f6 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f6 163 179 26 26 14 0 #rect
Ms0 f6 @|RichDialogProcessEndIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 176 132 176 179 #arcP
Ms0 f8 guid 11999D1373A229E9 #txt
Ms0 f8 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f8 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StopTimer</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 358 30 20 20 13 0 #rect
Ms0 f8 @|RichDialogProcessStartIcon #fIcon
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>stopTimer</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f9 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 actionCode panel.getTimer().stop(); #txt
Ms0 f9 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f9 350 108 36 24 20 -2 #rect
Ms0 f9 @|RichDialogProcessStepIcon #fIcon
Ms0 f10 expr out #txt
Ms0 f10 368 50 368 108 #arcP
Ms0 f11 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f11 355 179 26 26 14 0 #rect
Ms0 f11 @|RichDialogProcessEndIcon #fIcon
Ms0 f12 expr out #txt
Ms0 f12 368 132 368 179 #arcP
Ms0 f13 guid 1199E75E4DF1754A #txt
Ms0 f13 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f13 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f13 actionTable 'out=in;
' #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_ChangeRepeat</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f13 526 30 20 20 13 0 #rect
Ms0 f13 @|RichDialogProcessStartIcon #fIcon
Ms0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changeRepeatState</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f14 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData out;
' #txt
Ms0 f14 actionTable 'out=in;
' #txt
Ms0 f14 actionCode 'panel.getTimer().setRepeats(panel.CheckBox.selected);
panel.getTimer().start();' #txt
Ms0 f14 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f14 518 108 36 24 20 -2 #rect
Ms0 f14 @|RichDialogProcessStepIcon #fIcon
Ms0 f15 expr out #txt
Ms0 f15 536 50 536 108 #arcP
Ms0 f16 type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
Ms0 f16 523 179 26 26 14 0 #rect
Ms0 f16 @|RichDialogProcessEndIcon #fIcon
Ms0 f17 expr out #txt
Ms0 f17 536 132 536 179 #arcP
Ms0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Please see the getTimer() method in the 
source of the RD (source tab in Visual Editor). 
At the time, this is the right way to use timer 
events in Xpert.ivy. Do not use other timer 
(such as Java''s built in Timer and TimerTask 
classes), as they are not synchronized with
 the RD UI thread.

Please be aware, that a decent Timer 
probably widget will be delivered in future.</name>
        <nameStyle>376,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f23 376 285 273 199 -129 -93 #rect
Ms0 f23 @|IBIcon #fIcon
Ms0 f23 -7484683|-1|-16777216 #nodeStyle
>Proto Ms0 .type ch.ivyteam.ivy.demo.pollingtimer.Clock.ClockData #txt
>Proto Ms0 .processKind RICH_DIALOG #txt
>Proto Ms0 .ui2RdDataAction 'out.interval=panel.TextField.valueAsNumber;
' #txt
>Proto Ms0 .rdData2UIAction 'panel.TextField.valueAsNumber=in.interval;
' #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f4 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
Ms0 f8 mainOut f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f9 mainOut f12 tail #connect
Ms0 f12 head f11 mainIn #connect
Ms0 f13 mainOut f15 tail #connect
Ms0 f15 head f14 mainIn #connect
Ms0 f14 mainOut f17 tail #connect
Ms0 f17 head f16 mainIn #connect
