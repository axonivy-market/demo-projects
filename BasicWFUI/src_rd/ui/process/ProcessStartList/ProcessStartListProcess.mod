[Ivy]
[>Created: Thu Feb 25 10:54:46 CET 2010]
125211004EB75BAE 3.13 #module
>Proto >Proto Collection #zClass
Ps0 PendenzenListeProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogProcessStep f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f7 '' #zField
Ps0 @RichDialogProcessEnd f8 '' #zField
Ps0 @RichDialogProcessStart f14 '' #zField
Ps0 @RichDialogEnd f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RichDialogMethodStart f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @RichDialogBroadcastStart f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @RichDialogProcessStart f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @RichDialogProcessStart f19 '' #zField
Ps0 @RichDialogProcessEnd f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @RichDialogProcessStep f20 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
>Proto Ps0 Ps0 PendenzenListeProcess #zField
Ps0 f0 guid 124FC8F48B7ED55A #txt
Ps0 f0 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f0 method startInPanel(ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel) #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel parentPanel> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.parentPanel=param.parentPanel;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startIn</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 94 30 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ps0 f1 94 134 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'out.starts = ivy.session.getStartableProcessStarts();


' #txt
Ps0 f3 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init ProcesstartList</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 86 76 36 24 20 -2 #rect
Ps0 f3 @|RichDialogProcessStepIcon #fIcon
Ps0 f4 expr out #txt
Ps0 f4 104 50 104 76 #arcP
Ps0 f2 expr out #txt
Ps0 f2 104 100 104 134 #arcP
Ps0 f7 guid 124FCB0D83131C5D #txt
Ps0 f7 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f7 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f7 actionTable 'out=in;
' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartProcess</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 94 214 20 20 18 -7 #rect
Ps0 f7 @|RichDialogProcessStartIcon #fIcon
Ps0 f8 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f8 94 366 20 20 13 0 #rect
Ps0 f8 @|RichDialogProcessEndIcon #fIcon
Ps0 f14 guid 124FD30175EE0477 #txt
Ps0 f14 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f14 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Exit</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 542 30 20 20 13 0 #rect
Ps0 f14 @|RichDialogProcessStartIcon #fIcon
Ps0 f15 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f15 guid 124FD306DE2A6524 #txt
Ps0 f15 542 134 20 20 13 0 #rect
Ps0 f15 @|RichDialogEndIcon #fIcon
Ps0 f16 expr out #txt
Ps0 f16 552 50 552 134 #arcP
Ps0 f5 guid 125A24ADC49D402A #txt
Ps0 f5 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f5 method refresh() #txt
Ps0 f5 disableUIEvents false #txt
Ps0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f5 outParameterDecl '<> result;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>9,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 198 30 20 20 13 0 #rect
Ps0 f5 @|RichDialogMethodStartIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 198 44 122 80 #arcP
Ps0 f11 guid 125BC0C71D77E44F #txt
Ps0 f11 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f11 broadcast wfUserChanged #txt
Ps0 f11 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f11 actionTable 'out=in;
' #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wfUserChanged</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f11 286 30 20 20 13 0 #rect
Ps0 f11 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f12 expr out #txt
Ps0 f12 286 42 122 84 #arcP
Ps0 f17 guid 125BC160E4F20554 #txt
Ps0 f17 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f17 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f17 actionTable 'out=in;
' #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Refresh</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 414 30 20 20 13 0 #rect
Ps0 f17 @|RichDialogProcessStartIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 414 41 122 85 #arcP
Ps0 f19 guid 126F61BA7DC33213 #txt
Ps0 f19 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f19 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f19 actionTable 'out=in;
' #txt
Ps0 f19 actionCode '
if(panel.Table.getSelectedRow() >=0 && panel.Table.getSelectedListEntry() !=null)
{
	out.selectedStart= panel.Table.selectedListEntry as ch.ivyteam.ivy.workflow.IProcessStart;
}
else
{
	out.selectedStart=null;	
}' #txt
Ps0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_ListSelected</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f19 350 213 20 22 16 -9 #rect
Ps0 f19 @|RichDialogProcessStartIcon #fIcon
Ps0 f21 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f21 350 366 20 20 13 0 #rect
Ps0 f21 @|RichDialogProcessEndIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 360 235 360 366 #arcP
Ps0 f20 actionDecl 'ui.process.ProcessStartList.ProcessStartListData out;
' #txt
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 actionCode 'import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.application.DisplayConfigurationFactory;
import ch.ivyteam.ivy.richdialog.exec.application.IDisplayConfiguration;

ch.ivyteam.ivy.workflow.IProcessStart selectedStart  = panel.Table.getSelectedListEntry() as ch.ivyteam.ivy.workflow.IProcessStart;
if(selectedStart !=null)
{

		IDisplayConfiguration displayConfig;
		ProcessStartConfiguration processStartConfig;

		displayConfig = DisplayConfigurationFactory.createForThisWindow("center_display", in.parentPanel);
		processStartConfig = new ProcessStartConfiguration(selectedStart, displayConfig);

		ivy.rd.startProcess(processStartConfig);

}' #txt
Ps0 f20 type ui.process.ProcessStartList.ProcessStartListData #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startProcess</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f20 86 292 36 24 25 -10 #rect
Ps0 f20 @|RichDialogProcessStepIcon #fIcon
Ps0 f9 expr out #txt
Ps0 f9 104 234 104 292 #arcP
Ps0 f10 expr out #txt
Ps0 f10 104 316 104 366 #arcP
>Proto Ps0 .type ui.process.ProcessStartList.ProcessStartListData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .rdData2UIAction 'panel.startButton.enabled=in.selectedStart != null;
panel.Table.listData=in.starts;
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f14 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f5 mainOut f6 tail #connect
Ps0 f6 head f3 mainIn #connect
Ps0 f11 mainOut f12 tail #connect
Ps0 f12 head f3 mainIn #connect
Ps0 f17 mainOut f18 tail #connect
Ps0 f18 head f3 mainIn #connect
Ps0 f19 mainOut f22 tail #connect
Ps0 f22 head f21 mainIn #connect
Ps0 f7 mainOut f9 tail #connect
Ps0 f9 head f20 mainIn #connect
Ps0 f20 mainOut f10 tail #connect
Ps0 f10 head f8 mainIn #connect
