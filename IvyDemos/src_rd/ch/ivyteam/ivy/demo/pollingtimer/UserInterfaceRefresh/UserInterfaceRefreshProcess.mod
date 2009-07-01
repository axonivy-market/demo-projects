[Ivy]
[>Created: Thu Jun 25 21:33:14 CEST 2009]
1221863890AD7BFD 3.12 #module
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
Us0 @RichDialogProcessStart f5 '' #zField
Us0 @RichDialogProcessStart f6 '' #zField
Us0 @RichDialogProcessEnd f7 '' #zField
Us0 @PushWFArc f8 '' #zField
Us0 @RichDialogProcessEnd f9 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @RichDialogProcessEnd f11 '' #zField
Us0 @RichDialogProcessStep f12 '' #zField
Us0 @PushWFArc f13 '' #zField
Us0 @PushWFArc f14 '' #zField
Us0 @RichDialogProcessEnd f15 '' #zField
Us0 @RichDialogProcessStep f17 '' #zField
Us0 @PushWFArc f18 '' #zField
Us0 @PushWFArc f16 '' #zField
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
Us0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/gear_refresh\";\nparam.title=\"UI Refresh Demo\";\nparam.subtitle=\"Shows how to refresh the UI by using the PollingTimerUtilities\";\n"/initScript ""}}' #txt
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
Us0 f1 67 99 26 26 14 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startProgress</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 guid 12218B8CC527B564 #txt
Us0 f3 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f3 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 actionCode 'import ch.ivyteam.ivy.addons.util.PollingTimerUtils;

if (! (in.#progressUpdate is initialized))
{
	// create a polling timer for the hidden update progress button
	out.progressUpdate = PollingTimerUtils.clickOnce(panel.updateProgressButton);
}

// initialize work counter and progress bar
out.workCount = 0;
panel.progressBar.value = 0;

// request roundtrip
out.progressUpdate.start();
' #txt
Us0 f3 222 46 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleAutoRefresh</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
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
Us0 f4 414 46 20 20 13 0 #rect
Us0 f4 @|RichDialogProcessStartIcon #fIcon
Us0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doWorkPart</name>
        <nameStyle>10,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f5 guid 12218B8EA888EEEF #txt
Us0 f5 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f5 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f5 actionTable 'out=in;
' #txt
Us0 f5 222 190 20 20 13 0 #rect
Us0 f5 @|RichDialogProcessStartIcon #fIcon
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doRefreshList</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 guid 12218B8F3136743C #txt
Us0 f6 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f6 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode '// just add another random number
out.listData.add(in.rand.nextInt(1000000));' #txt
Us0 f6 414 190 20 20 13 0 #rect
Us0 f6 @|RichDialogProcessStartIcon #fIcon
Us0 f7 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f7 219 99 26 26 14 0 #rect
Us0 f7 @|RichDialogProcessEndIcon #fIcon
Us0 f8 expr out #txt
Us0 f8 232 66 232 99 #arcP
Us0 f9 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f9 411 99 26 26 14 0 #rect
Us0 f9 @|RichDialogProcessEndIcon #fIcon
Us0 f10 expr out #txt
Us0 f10 424 66 424 99 #arcP
Us0 f11 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f11 219 299 26 26 14 0 #rect
Us0 f11 @|RichDialogProcessEndIcon #fIcon
Us0 f12 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData out;
' #txt
Us0 f12 actionTable 'out=in;
' #txt
Us0 f12 actionCode 'if (out.workCount < 100)
{
	// do a piece of work here
	// ...
	
	// then increase and update the progress (according to work performed)
	// by default, a progress bar goes from 0..100%, we increase by 1%
	out.workCount++;
	panel.progressBar.value = out.workCount;
	
	// there''s still work to do, so trigger roundtrip again
	out.progressUpdate.start();
}' #txt
Us0 f12 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do some work</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f12 214 244 36 24 20 -2 #rect
Us0 f12 @|RichDialogProcessStepIcon #fIcon
Us0 f13 expr out #txt
Us0 f13 232 210 232 244 #arcP
Us0 f14 expr out #txt
Us0 f14 232 268 232 299 #arcP
Us0 f15 type ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh.UserInterfaceRefreshData #txt
Us0 f15 411 299 26 26 14 0 #rect
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
Us0 f17 406 244 36 24 20 -2 #rect
Us0 f17 @|RichDialogProcessStepIcon #fIcon
Us0 f18 expr out #txt
Us0 f18 424 210 424 244 #arcP
Us0 f16 expr out #txt
Us0 f16 424 268 424 299 #arcP
Us0 f2 expr out #txt
Us0 f2 80 66 80 99 #arcP
>Proto Us0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Init</swimlaneLabel>
        <swimlaneLabel>Progress Bar Demo</swimlaneLabel>
        <swimlaneLabel>Auto-Refresh Demo</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>207</swimlaneSize>
    <swimlaneSize>230</swimlaneSize>
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
Us0 f3 mainOut f8 tail #connect
Us0 f8 head f7 mainIn #connect
Us0 f4 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f5 mainOut f13 tail #connect
Us0 f13 head f12 mainIn #connect
Us0 f12 mainOut f14 tail #connect
Us0 f14 head f11 mainIn #connect
Us0 f6 mainOut f18 tail #connect
Us0 f18 head f17 mainIn #connect
Us0 f17 mainOut f16 tail #connect
Us0 f16 head f15 mainIn #connect
Us0 f0 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
