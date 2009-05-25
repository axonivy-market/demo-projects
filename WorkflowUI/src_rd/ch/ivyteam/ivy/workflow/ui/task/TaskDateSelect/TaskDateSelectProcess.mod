[Ivy]
[>Created: Fri Aug 01 19:40:57 CEST 2008]
11A06DBD8844C2E5 3.10 #module
>Proto >Proto Collection #zClass
Ts0 TaskDateSelectProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 f0 guid 11A06DBD8E913E13 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f0 method start() #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript ""}}' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 90 40 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f1 91 323 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f2 '' #zField
Ts0 f2 expr out #txt
Ts0 f2 100 59 103 323 #arcP
Ts0 @RichDialogProcessStart f3 '' #zField
Ts0 f3 guid 11A06E56322B7235 #txt
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'out.selectedDate = panel.taskDatePicker.getDate();' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>dateSelected</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 454 38 20 20 13 0 #rect
Ts0 f3 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f4 '' #zField
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f4 451 323 26 26 14 0 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f5 '' #zField
Ts0 f5 expr out #txt
Ts0 f5 464 58 464 323 #arcP
Ts0 @RichDialogInitStart f6 '' #zField
Ts0 f6 guid 11A06F3C8BEACC43 #txt
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f6 method selectTaskBlockingDelayDate(String,String) #txt
Ts0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String aTitle,java.lang.String aText> param = methodEvent.getInputArguments();
' #txt
Ts0 f6 inParameterMapAction 'out.dateToSelect=1;
out.text=param.aText;
out.title=param.aTitle;
' #txt
Ts0 f6 outParameterDecl '<java.lang.String aPressedButton,java.lang.Boolean aDisabledDateSelection,java.util.Date aSelectedDate> result;
' #txt
Ts0 f6 outParameterMapAction 'result.aPressedButton=in.pressedButton;
result.aDisabledDateSelection=in.disabledSelectionDate;
result.aSelectedDate=in.selectedDate;
' #txt
Ts0 f6 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.title=callParam.aTitle;\nparam.text=callParam.aText;\n"/initScript ""}}' #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectTaskBlockingDelayDate(String,String)</name>
        <nameStyle>42,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 246 94 20 20 13 0 #rect
Ts0 f6 @|RichDialogInitStartIcon #fIcon
Ts0 @PushWFArc f7 '' #zField
Ts0 f7 expr out #txt
Ts0 f7 256 114 117 336 #arcP
Ts0 f7 1 256 336 #addKink
Ts0 f7 0 0.6295381122771786 0 0 #arcLabel
Ts0 @RichDialogInitStart f8 '' #zField
Ts0 f8 guid 11A06F58D4520529 #txt
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f8 method selectTaskExpiryDate(String,String) #txt
Ts0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String aTitle,java.lang.String aText> param = methodEvent.getInputArguments();
' #txt
Ts0 f8 inParameterMapAction 'out.dateToSelect=0;
out.text=param.aText;
out.title=param.aTitle;
' #txt
Ts0 f8 outParameterDecl '<java.lang.String aPressedButton,java.lang.Boolean aDisabledDateSelection,java.util.Date aSelectedDate> result;
' #txt
Ts0 f8 outParameterMapAction 'result.aPressedButton=in.pressedButton;
result.aDisabledDateSelection=in.disabledSelectionDate;
result.aSelectedDate=in.selectedDate;
' #txt
Ts0 f8 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.title=callParam.aTitle;\nparam.text=callParam.aText;\n"/initScript ""}}' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectTaskExpiryDate(String,String)</name>
        <nameStyle>35,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 166 46 20 20 13 0 #rect
Ts0 f8 @|RichDialogInitStartIcon #fIcon
Ts0 @PushWFArc f9 '' #zField
Ts0 f9 expr out #txt
Ts0 f9 176 66 117 336 #arcP
Ts0 f9 1 176 336 #addKink
Ts0 f9 0 0.6295381122771786 0 0 #arcLabel
Ts0 @RichDialogProcessStart f10 '' #zField
Ts0 f10 guid 11A06F6BBEE16F63 #txt
Ts0 f10 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode 'out.pressedButton = "ok";' #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 606 102 20 20 13 0 #rect
Ts0 f10 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessStart f11 '' #zField
Ts0 f11 guid 11A06F6C61088FEB #txt
Ts0 f11 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData out;
' #txt
Ts0 f11 actionTable 'out=in;
' #txt
Ts0 f11 actionCode 'out.pressedButton = "cancel";' #txt
Ts0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f11 646 150 20 20 13 0 #rect
Ts0 f11 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogEnd f12 '' #zField
Ts0 f12 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f12 guid 11A06F77926EC1ED #txt
Ts0 f12 603 323 26 26 14 0 #rect
Ts0 f12 @|RichDialogEndIcon #fIcon
Ts0 @PushWFArc f13 '' #zField
Ts0 f13 expr out #txt
Ts0 f13 616 122 616 323 #arcP
Ts0 @PushWFArc f14 '' #zField
Ts0 f14 expr out #txt
Ts0 f14 656 170 629 336 #arcP
Ts0 f14 1 656 336 #addKink
Ts0 f14 0 0.6233030324100044 0 0 #arcLabel
Ts0 @RichDialogProcessStart f15 '' #zField
Ts0 f15 guid 11A06F93833B541A #txt
Ts0 f15 type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
Ts0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode 'panel.taskDatePicker.enabled = !panel.taskDatePicker.enabled;' #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>disableSelectionDate</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 494 78 20 20 13 0 #rect
Ts0 f15 @|RichDialogProcessStartIcon #fIcon
Ts0 @PushWFArc f16 '' #zField
Ts0 f16 expr out #txt
Ts0 f16 504 98 477 336 #arcP
Ts0 f16 1 504 336 #addKink
Ts0 f16 0 0.5663777774729974 0 0 #arcLabel
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f5 tail #connect
Ts0 f5 head f4 mainIn #connect
Ts0 f6 mainOut f7 tail #connect
Ts0 f7 head f1 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f1 mainIn #connect
Ts0 f10 mainOut f13 tail #connect
Ts0 f13 head f12 mainIn #connect
Ts0 f11 mainOut f14 tail #connect
Ts0 f14 head f12 mainIn #connect
Ts0 f15 mainOut f16 tail #connect
Ts0 f16 head f4 mainIn #connect
>Proto Ts0 Ts0 TaskDateSelectProcess #zField
>Proto Ts0 .ui2RdDataAction 'out.disabledSelectionDate=panel.disableDateSettingCheckBox.selected;
' #txt
>Proto Ts0 .rdData2UIAction 'panel.disableDateSettingCheckBox.text="<html><b>" + 
ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/disable") + " " + in.title.toLowerCase() + "</b>" + 
"</html>";
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect.TaskDateSelectData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
