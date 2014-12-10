[Ivy]
[>Created: Thu Apr 12 16:44:27 CEST 2012]
1221863890AD7BFD 3.17 #module
>Proto >Proto Collection #zClass
Us0 UserInterfaceRefreshProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogProcessStart f4 '' #zField
Us0 @RichDialogProcessStart f6 '' #zField
Us0 @RichDialogProcessEnd f9 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @RichDialogProcessEnd f15 '' #zField
Us0 @RichDialogProcessStep f17 '' #zField
Us0 @PushWFArc f18 '' #zField
Us0 @PushWFArc f16 '' #zField
Us0 @Alternative f5 '' #zField
Us0 @RichDialogProcessEnd f8 '' #zField
Us0 @RichDialogProcessStep f12 '' #zField
Us0 @RichDialogUiSync f13 '' #zField
Us0 @PushWFArc f14 '' #zField
Us0 @PushWFArc f19 '' #zField
Us0 @PushWFArc f20 '' #zField
Us0 @RichDialogProcessStep f21 '' #zField
Us0 @PushWFArc f22 '' #zField
Us0 @PushWFArc f11 '' #zField
Us0 @RichDialogUiSync f23 '' #zField
Us0 @PushWFArc f24 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @RichDialogProcessStart f25 '' #zField
Us0 @RichDialog f26 '' #zField
Us0 @PushWFArc f27 '' #zField
Us0 @RichDialogProcessEnd f28 '' #zField
Us0 @PushWFArc f29 '' #zField
Us0 @RichDialogProcessStep f30 '' #zField
Us0 @PushWFArc f31 '' #zField
Us0 @PushWFArc f2 '' #zField
>Proto Us0 Us0 UserInterfaceRefreshProcess #zField
Us0 f0 guid 12218638A9168E89 #txt
Us0 f0 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f0 method start() #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/gear_refresh\";\nparam.title=\"UI Refresh Demo\";\nparam.subtitle=\"Shows how to refresh the UI by using the PollingTimerUtilities and the UI Sync element\";\n"/initScript ""/userContext * }}' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f0 70 46 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f1 67 139 26 26 14 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 guid 12218B8CC527B564 #txt
Us0 f3 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f3 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 actionCode '// initialize work counter and progress bar
out.workCount = 0;
panel.progressBar.value = 0;
panel.progressBar.string = "0 %";
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startProgress</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 254 46 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 guid 12218B8D79CAC583 #txt
Us0 f4 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f4 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f4 actionTable 'out=in;
' #txt
Us0 f4 actionCode 'import ch.ivyteam.ivy.addons.util.PollingTimerUtils;

if (! (in.#autoRefresher is initialized))
{
	// create a polling timer for the hidden refresh button
	// this button will be clicked every second (1000ms) until it is stopped
	out.autoRefresher = PollingTimerUtils.clickForever(1000, panel.doRefreshButton);
}

if (panel.doAutoRefreshCheckBox.selected)
{
	// auto refresh has been selected
	out.autoRefresher.start();
}
else
{
	// auto refresh has been deselected
	out.autoRefresher.stop();
}' #txt
Us0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleAutoRefresh
(Activate/deactivate polling timer utils, 
to click a hidden button every second)</name>
        <nameStyle>17,2,5,7,9
82,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f4 534 46 20 20 26 -13 #rect
Us0 f4 @|RichDialogProcessStartIcon #fIcon
Us0 f6 guid 12218B8F3136743C #txt
Us0 f6 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f6 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode '// just add another random number
out.listData.add(in.rand.nextInt(1000000));' #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doRefreshList
(invoked by hidden button on UI)</name>
        <nameStyle>13,2,5,7,9
33,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 534 190 20 20 22 -8 #rect
Us0 f6 @|RichDialogProcessStartIcon #fIcon
Us0 f9 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f9 531 99 26 26 14 0 #rect
Us0 f9 @|RichDialogProcessEndIcon #fIcon
Us0 f10 expr out #txt
Us0 f10 544 66 544 99 #arcP
Us0 f15 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f15 531 299 26 26 14 0 #rect
Us0 f15 @|RichDialogProcessEndIcon #fIcon
Us0 f17 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f17 actionTable 'out=in;
' #txt
Us0 f17 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add another number</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f17 526 244 36 24 20 -2 #rect
Us0 f17 @|RichDialogProcessStepIcon #fIcon
Us0 f18 expr out #txt
Us0 f18 544 210 544 244 #arcP
Us0 f16 expr out #txt
Us0 f16 544 268 544 299 #arcP
Us0 f5 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>done?</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f5 250 138 28 28 -48 -25 #rect
Us0 f5 @|AlternativeIcon #fIcon
Us0 f8 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f8 254 270 20 20 13 0 #rect
Us0 f8 @|RichDialogProcessEndIcon #fIcon
Us0 f12 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f12 actionTable 'out=in;
' #txt
Us0 f12 actionCode 'Thread.sleep(500); // sleep for 0.1 sec

out.workCount = Math.min(in.workCount + in.rand.nextInt(10), 100);

panel.progressBar.string = "" + out.workCount + " %";
panel.progressBar.value = out.workCount;
' #txt
Us0 f12 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do work</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f12 382 196 36 24 23 -9 #rect
Us0 f12 @|RichDialogProcessStepIcon #fIcon
Us0 f13 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f13 guid 12AF1C0BF75A2D47 #txt
Us0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update UI</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f13 387 267 26 26 17 -10 #rect
Us0 f13 @|RichDialogUiSyncIcon #fIcon
Us0 f14 expr in #txt
Us0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f14 278 152 400 196 #arcP
Us0 f14 1 400 152 #addKink
Us0 f14 0 0.4888888888888889 0 -8 #arcLabel
Us0 f19 expr out #txt
Us0 f19 400 220 400 267 #arcP
Us0 f20 expr out #txt
Us0 f20 387 280 270 160 #arcP
Us0 f20 1 360 280 #addKink
Us0 f20 1 0.2764940395934803 0 0 #arcLabel
Us0 f21 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f21 actionTable 'out=in;
' #txt
Us0 f21 actionCode 'panel.progressBar.string = "Work finished";' #txt
Us0 f21 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write &quot;done&quot;
message</name>
        <nameStyle>13,7
7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f21 246 212 36 24 -97 -16 #rect
Us0 f21 @|RichDialogProcessStepIcon #fIcon
Us0 f22 expr in #txt
Us0 f22 outCond 'in.workCount >= 100' #txt
Us0 f22 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f22 264 166 264 212 #arcP
Us0 f22 0 0.2608695652173913 -14 0 #arcLabel
Us0 f11 expr out #txt
Us0 f11 264 236 264 270 #arcP
Us0 f23 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f23 guid 12AF1C624FBFF418 #txt
Us0 f23 251 91 26 26 13 0 #rect
Us0 f23 @|RichDialogUiSyncIcon #fIcon
Us0 f24 expr out #txt
Us0 f24 264 66 264 91 #arcP
Us0 f7 expr out #txt
Us0 f7 264 117 264 138 #arcP
Us0 f25 guid 12AF1DBBD1A62FD7 #txt
Us0 f25 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f25 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f25 actionTable 'out=in;
' #txt
Us0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>run_progress_dialog</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f25 254 350 20 20 13 0 #rect
Us0 f25 @|RichDialogProcessStartIcon #fIcon
Us0 f26 targetWindow NEW:card: #txt
Us0 f26 targetDisplay TOP #txt
Us0 f26 richDialogId ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog #txt
Us0 f26 startMethod start(Number) #txt
Us0 f26 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f26 requestActionDecl '<Number amountOfWork> param;' #txt
Us0 f26 requestMappingAction 'param.amountOfWork=panel.workTextField.valueAsNumber;
' #txt
Us0 f26 responseActionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f26 responseMappingAction 'out=in;
' #txt
Us0 f26 windowConfiguration '{/title "Progress Dialog"/width 400 /height 100 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
Us0 f26 isAsynch false #txt
Us0 f26 isInnerRd true #txt
Us0 f26 userContext '* ' #txt
Us0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open modal 
progress dialog</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f26 246 404 36 24 27 -18 #rect
Us0 f26 @|RichDialogIcon #fIcon
Us0 f27 expr out #txt
Us0 f27 264 370 264 404 #arcP
Us0 f28 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f28 254 454 20 20 13 0 #rect
Us0 f28 @|RichDialogProcessEndIcon #fIcon
Us0 f29 expr out #txt
Us0 f29 264 428 264 454 #arcP
Us0 f30 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f30 actionTable 'out=in;
' #txt
Us0 f30 actionCode panel.startWorkButton.setEnabler(panel.workTextField); #txt
Us0 f30 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f30 62 92 36 24 20 -2 #rect
Us0 f30 @|RichDialogProcessStepIcon #fIcon
Us0 f31 expr out #txt
Us0 f31 80 66 80 92 #arcP
Us0 f2 expr out #txt
Us0 f2 80 116 80 139 #arcP
>Proto Us0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Init</swimlaneLabel>
        <swimlaneLabel>Progress Bar Demo</swimlaneLabel>
        <swimlaneLabel>Auto-Refresh Demo</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>334</swimlaneSize>
    <swimlaneSize>304</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-3342388</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Us0 .type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
>Proto Us0 .rdData2UIAction 'panel.doRefreshButton.visible=false;
panel.invisibleButtonsPane.visible=false;
panel.updateProgressButton.visible=false;
panel.list.listData=in.listData;
' #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f4 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f6 mainOut f18 tail #connect
Us0 f18 head f17 mainIn #connect
Us0 f17 mainOut f16 tail #connect
Us0 f16 head f15 mainIn #connect
Us0 f14 head f12 mainIn #connect
Us0 f12 mainOut f19 tail #connect
Us0 f19 head f13 mainIn #connect
Us0 f13 mainOut f20 tail #connect
Us0 f20 head f5 in #connect
Us0 f5 out f22 tail #connect
Us0 f22 head f21 mainIn #connect
Us0 f5 out f14 tail #connect
Us0 f21 mainOut f11 tail #connect
Us0 f11 head f8 mainIn #connect
Us0 f3 mainOut f24 tail #connect
Us0 f24 head f23 mainIn #connect
Us0 f23 mainOut f7 tail #connect
Us0 f7 head f5 in #connect
Us0 f25 mainOut f27 tail #connect
Us0 f27 head f26 mainIn #connect
Us0 f26 mainOut f29 tail #connect
Us0 f29 head f28 mainIn #connect
Us0 f0 mainOut f31 tail #connect
Us0 f31 head f30 mainIn #connect
Us0 f30 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
