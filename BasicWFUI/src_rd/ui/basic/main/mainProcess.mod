[Ivy]
[>Created: Fri Dec 18 16:03:05 CET 2009]
125209F6A592E2B5 3.13 #module
>Proto >Proto Collection #zClass
ms0 mainProcess Big #zClass
ms0 RD #cInfo
ms0 #process
ms0 @TextInP .xml .xml #zField
ms0 @TextInP .responsibility .responsibility #zField
ms0 @MessageFlowInP-0n messageIn messageIn #zField
ms0 @MessageFlowOutP-0n messageOut messageOut #zField
ms0 @AnnotationInP-0n ai ai #zField
ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ms0 @TextInP .resExport .resExport #zField
ms0 @TextInP .type .type #zField
ms0 @TextInP .processKind .processKind #zField
ms0 @RichDialogInitStart f0 '' #zField
ms0 @RichDialogProcessEnd f1 '' #zField
ms0 @RichDialogProcessStart f5 '' #zField
ms0 @RichDialogProcessEnd f6 '' #zField
ms0 @RichDialog f7 '' #zField
ms0 @PushWFArc f9 '' #zField
ms0 @Alternative f10 '' #zField
ms0 @PushWFArc f11 '' #zField
ms0 @RichDialogProcessStep f13 '' #zField
ms0 @PushWFArc f12 '' #zField
ms0 @PushWFArc f14 '' #zField
ms0 @PushWFArc f8 '' #zField
ms0 @RichDialogProcessStart f15 '' #zField
ms0 @RichDialogProcessEnd f16 '' #zField
ms0 @RichDialogProcessStep f18 '' #zField
ms0 @RichDialog f19 '' #zField
ms0 @Alternative f20 '' #zField
ms0 @PushWFArc f21 '' #zField
ms0 @PushWFArc f22 '' #zField
ms0 @PushWFArc f23 '' #zField
ms0 @PushWFArc f17 '' #zField
ms0 @PushWFArc f24 '' #zField
ms0 @RichDialog f2 '' #zField
ms0 @PushWFArc f4 '' #zField
ms0 @RichDialogProcessStart f28 '' #zField
ms0 @RichDialogProcessEnd f29 '' #zField
ms0 @RichDialogProcessStep f30 '' #zField
ms0 @RichDialog f31 '' #zField
ms0 @Alternative f32 '' #zField
ms0 @PushWFArc f33 '' #zField
ms0 @PushWFArc f34 '' #zField
ms0 @PushWFArc f35 '' #zField
ms0 @PushWFArc f36 '' #zField
ms0 @PushWFArc f37 '' #zField
ms0 @PushWFArc f3 '' #zField
>Proto ms0 ms0 mainProcess #zField
ms0 f0 guid 125209F6A698762C #txt
ms0 f0 type ui.basic.main.mainData #txt
ms0 f0 method start() #txt
ms0 f0 disableUIEvents true #txt
ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
ms0 f0 outParameterDecl '<> result;
' #txt
ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
ms0 f0 94 30 20 20 13 0 #rect
ms0 f0 @|RichDialogInitStartIcon #fIcon
ms0 f1 type ui.basic.main.mainData #txt
ms0 f1 94 198 20 20 13 0 #rect
ms0 f1 @|RichDialogProcessEndIcon #fIcon
ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartTaskList</name>
        <nameStyle>22,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f5 guid 12520BD7434E23AF #txt
ms0 f5 type ui.basic.main.mainData #txt
ms0 f5 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f5 actionTable 'out=in;
' #txt
ms0 f5 102 286 20 20 13 0 #rect
ms0 f5 @|RichDialogProcessStartIcon #fIcon
ms0 f6 type ui.basic.main.mainData #txt
ms0 f6 102 438 20 20 13 0 #rect
ms0 f6 @|RichDialogProcessEndIcon #fIcon
ms0 f7 targetWindow THIS #txt
ms0 f7 targetDisplay EXISTING:center_display #txt
ms0 f7 richDialogId ui.task.tasklist #txt
ms0 f7 startMethod startInPanel(ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel) #txt
ms0 f7 type ui.basic.main.mainData #txt
ms0 f7 panelName TaskList #txt
ms0 f7 requestActionDecl '<ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel parentPanel> param;' #txt
ms0 f7 requestMappingAction 'param.parentPanel=panel;
' #txt
ms0 f7 responseActionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f7 responseMappingAction 'out=in;
' #txt
ms0 f7 windowConfiguration '* ' #txt
ms0 f7 isAsynch true #txt
ms0 f7 isInnerRd true #txt
ms0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start TaskList</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f7 158 380 36 24 20 -2 #rect
ms0 f7 @|RichDialogIcon #fIcon
ms0 f9 expr out #txt
ms0 f9 162 404 119 441 #arcP
ms0 f10 type ui.basic.main.mainData #txt
ms0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already open?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f10 98 330 28 28 23 -14 #rect
ms0 f10 @|AlternativeIcon #fIcon
ms0 f11 expr out #txt
ms0 f11 112 306 112 330 #arcP
ms0 f13 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f13 actionTable 'out=in;
' #txt
ms0 f13 actionCode 'import com.ulcjava.base.application.ULCComponent;
for(int idx = 0; idx<panel.centerTabbedDisplay.getComponentCount(); idx++)
{
		ULCComponent c = panel.centerTabbedDisplay.getComponentAt(idx);
		if(c.getClass() == ui.task.tasklist.tasklistPanel.class)
		{	
			panel.centerTabbedDisplay.setSelectedIndex(idx);
			(c as ui.task.tasklist.tasklistPanel).refresh();
			ivy.log.debug(c.getName());
			break;
		}
		
}' #txt
ms0 f13 type ui.basic.main.mainData #txt
ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh &amp;
bring to front</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f13 30 380 36 24 25 -12 #rect
ms0 f13 @|RichDialogProcessStepIcon #fIcon
ms0 f12 expr out #txt
ms0 f12 62 404 104 441 #arcP
ms0 f14 expr in #txt
ms0 f14 outCond panel.centerTabbedDisplay.containsPanel("tasklistPanel") #txt
ms0 f14 104 350 64 380 #arcP
ms0 f8 expr in #txt
ms0 f8 120 350 160 380 #arcP
ms0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartProcessStartList</name>
        <nameStyle>30,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f15 guid 125213D21FF8905D #txt
ms0 f15 type ui.basic.main.mainData #txt
ms0 f15 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f15 actionTable 'out=in;
' #txt
ms0 f15 390 294 20 20 13 0 #rect
ms0 f15 @|RichDialogProcessStartIcon #fIcon
ms0 f16 type ui.basic.main.mainData #txt
ms0 f16 390 438 20 20 13 0 #rect
ms0 f16 @|RichDialogProcessEndIcon #fIcon
ms0 f18 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f18 actionTable 'out=in;
' #txt
ms0 f18 actionCode 'import com.ulcjava.base.application.ULCComponent;
for(int idx = 0; idx<panel.centerTabbedDisplay.getComponentCount(); idx++)
{
		ULCComponent c = panel.centerTabbedDisplay.getComponentAt(idx);
		if(c.getClass() == ui.process.ProcessStartList.ProcessStartListPanel.class)
		{	
			panel.centerTabbedDisplay.setSelectedIndex(idx);
			(c as ui.process.ProcessStartList.ProcessStartListPanel).refresh();
			break;
		}
		
}' #txt
ms0 f18 type ui.basic.main.mainData #txt
ms0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh &amp;
bring to front</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f18 318 388 36 24 25 -12 #rect
ms0 f18 @|RichDialogProcessStepIcon #fIcon
ms0 f19 targetWindow THIS #txt
ms0 f19 targetDisplay EXISTING:center_display #txt
ms0 f19 richDialogId ui.process.ProcessStartList #txt
ms0 f19 startMethod startInPanel(ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel) #txt
ms0 f19 type ui.basic.main.mainData #txt
ms0 f19 panelName Processes #txt
ms0 f19 requestActionDecl '<ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel parentPanel> param;' #txt
ms0 f19 requestMappingAction 'param.parentPanel=panel;
' #txt
ms0 f19 responseActionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f19 responseMappingAction 'out=in;
' #txt
ms0 f19 windowConfiguration '* ' #txt
ms0 f19 isAsynch true #txt
ms0 f19 isInnerRd true #txt
ms0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start ProcessStartList</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f19 446 388 36 24 20 -2 #rect
ms0 f19 @|RichDialogIcon #fIcon
ms0 f20 type ui.basic.main.mainData #txt
ms0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already open?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f20 386 338 28 28 21 -9 #rect
ms0 f20 @|AlternativeIcon #fIcon
ms0 f21 expr in #txt
ms0 f21 outCond panel.centerTabbedDisplay.containsPanel("ProcessStartListPanel") #txt
ms0 f21 392 358 352 388 #arcP
ms0 f22 expr in #txt
ms0 f22 408 358 448 388 #arcP
ms0 f23 expr out #txt
ms0 f23 400 314 400 338 #arcP
ms0 f17 expr out #txt
ms0 f17 352 412 391 442 #arcP
ms0 f24 expr out #txt
ms0 f24 448 412 408 442 #arcP
ms0 f2 targetWindow THIS #txt
ms0 f2 targetDisplay EXISTING:center_display #txt
ms0 f2 richDialogId ui.basic.login #txt
ms0 f2 startMethod start() #txt
ms0 f2 type ui.basic.main.mainData #txt
ms0 f2 panelName Login #txt
ms0 f2 requestActionDecl '<> param;' #txt
ms0 f2 responseActionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f2 responseMappingAction 'out=in;
' #txt
ms0 f2 windowConfiguration '* ' #txt
ms0 f2 isAsynch true #txt
ms0 f2 isInnerRd true #txt
ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login Dialog</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f2 86 116 36 24 25 -8 #rect
ms0 f2 @|RichDialogIcon #fIcon
ms0 f4 expr out #txt
ms0 f4 104 140 104 198 #arcP
ms0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartLogin</name>
        <nameStyle>19,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f28 guid 1252180F5FBAC34A #txt
ms0 f28 type ui.basic.main.mainData #txt
ms0 f28 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f28 actionTable 'out=in;
' #txt
ms0 f28 750 286 20 20 13 0 #rect
ms0 f28 @|RichDialogProcessStartIcon #fIcon
ms0 f29 type ui.basic.main.mainData #txt
ms0 f29 750 422 20 20 13 0 #rect
ms0 f29 @|RichDialogProcessEndIcon #fIcon
ms0 f30 actionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f30 actionTable 'out=in;
' #txt
ms0 f30 actionCode 'import com.ulcjava.base.application.ULCComponent;
for(int idx = 0; idx<panel.centerTabbedDisplay.getComponentCount(); idx++)
{
		ULCComponent c = panel.centerTabbedDisplay.getComponentAt(idx);
		if(c.getClass() == ui.basic.login.loginPanel.class)
		{	
			panel.centerTabbedDisplay.setSelectedIndex(idx);
			break;
		}
		
}' #txt
ms0 f30 type ui.basic.main.mainData #txt
ms0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>bring to front</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f30 678 380 36 24 25 -12 #rect
ms0 f30 @|RichDialogProcessStepIcon #fIcon
ms0 f31 targetWindow THIS #txt
ms0 f31 targetDisplay EXISTING:center_display #txt
ms0 f31 richDialogId ui.basic.login #txt
ms0 f31 startMethod start() #txt
ms0 f31 type ui.basic.main.mainData #txt
ms0 f31 panelName 'WF User Login' #txt
ms0 f31 requestActionDecl '<> param;' #txt
ms0 f31 responseActionDecl 'ui.basic.main.mainData out;
' #txt
ms0 f31 responseMappingAction 'out=in;
' #txt
ms0 f31 windowConfiguration '* ' #txt
ms0 f31 isAsynch true #txt
ms0 f31 isInnerRd true #txt
ms0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start LoginPanel</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f31 806 380 36 24 20 -2 #rect
ms0 f31 @|RichDialogIcon #fIcon
ms0 f32 type ui.basic.main.mainData #txt
ms0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already open?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ms0 f32 746 330 28 28 21 -9 #rect
ms0 f32 @|AlternativeIcon #fIcon
ms0 f33 expr in #txt
ms0 f33 outCond panel.centerTabbedDisplay.containsPanel("loginPanel") #txt
ms0 f33 752 350 712 380 #arcP
ms0 f34 expr in #txt
ms0 f34 768 350 808 380 #arcP
ms0 f35 expr out #txt
ms0 f35 760 306 760 330 #arcP
ms0 f36 expr out #txt
ms0 f36 714 403 751 426 #arcP
ms0 f37 expr out #txt
ms0 f37 806 403 768 426 #arcP
ms0 f3 expr out #txt
ms0 f3 104 50 104 116 #arcP
>Proto ms0 .type ui.basic.main.mainData #txt
>Proto ms0 .processKind RICH_DIALOG #txt
>Proto ms0 -8 -8 16 16 16 26 #rect
>Proto ms0 '' #fIcon
ms0 f7 mainOut f9 tail #connect
ms0 f9 head f6 mainIn #connect
ms0 f5 mainOut f11 tail #connect
ms0 f11 head f10 in #connect
ms0 f13 mainOut f12 tail #connect
ms0 f12 head f6 mainIn #connect
ms0 f10 out f14 tail #connect
ms0 f14 head f13 mainIn #connect
ms0 f10 out f8 tail #connect
ms0 f8 head f7 mainIn #connect
ms0 f20 out f21 tail #connect
ms0 f21 head f18 mainIn #connect
ms0 f20 out f22 tail #connect
ms0 f22 head f19 mainIn #connect
ms0 f15 mainOut f23 tail #connect
ms0 f23 head f20 in #connect
ms0 f18 mainOut f17 tail #connect
ms0 f17 head f16 mainIn #connect
ms0 f19 mainOut f24 tail #connect
ms0 f24 head f16 mainIn #connect
ms0 f2 mainOut f4 tail #connect
ms0 f4 head f1 mainIn #connect
ms0 f32 out f33 tail #connect
ms0 f33 head f30 mainIn #connect
ms0 f32 out f34 tail #connect
ms0 f34 head f31 mainIn #connect
ms0 f28 mainOut f35 tail #connect
ms0 f35 head f32 in #connect
ms0 f30 mainOut f36 tail #connect
ms0 f36 head f29 mainIn #connect
ms0 f31 mainOut f37 tail #connect
ms0 f37 head f29 mainIn #connect
ms0 f0 mainOut f3 tail #connect
ms0 f3 head f2 mainIn #connect
