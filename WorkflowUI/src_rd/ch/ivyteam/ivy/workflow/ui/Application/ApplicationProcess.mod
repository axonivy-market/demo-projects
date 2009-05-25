[Ivy]
[>Created: Tue Apr 28 16:58:15 CEST 2009]
117CB5CD6E5F88C6 3.11 #module
>Proto >Proto Collection #zClass
As0 ApplicationDynamicWayProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStart f10 '' #zField
As0 @RichDialogProcessEnd f11 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @RichDialog f13 '' #zField
As0 @PushWFArc f4 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @RichDialogEnd f2 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @RichDialogProcessEnd f7 '' #zField
As0 @RichDialogProcessStep f9 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @PushWFArc f8 '' #zField
>Proto As0 As0 ApplicationDynamicWayProcess #zField
As0 f0 guid 117CB6042DDA3F70 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f0 method start() #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 54 46 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f1 51 315 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f10 guid 11865D6ABF73D83D #txt
As0 f10 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f10 actionTable 'out=in;
' #txt
As0 f10 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;


if (panel.centerTabbedDisplay.#selectedComponent != null)
{
	IRichDialogPanel currentPanel = panel.centerTabbedDisplay.#selectedComponent as IRichDialogPanel;
	currentPanel.getPanelAPI().unload();
}' #txt
As0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>closeCurrentTabOnCenterDisplay</name>
        <nameStyle>30,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f10 214 46 20 20 13 0 #rect
As0 f10 @|RichDialogProcessStartIcon #fIcon
As0 f11 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f11 211 315 26 26 14 0 #rect
As0 f11 @|RichDialogProcessEndIcon #fIcon
As0 f12 expr out #txt
As0 f12 224 66 224 315 #arcP
As0 f13 targetWindow THIS #txt
As0 f13 targetDisplay workflowUiWestDisplay #txt
As0 f13 richDialogId ch.ivyteam.ivy.workflow.ui.UserMenu #txt
As0 f13 startMethod start(ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay) #txt
As0 f13 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f13 panelName 'Workflow UI menu' #txt
As0 f13 requestActionDecl '<ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aDestinationDisplay> param;' #txt
As0 f13 requestMappingAction 'param.aDestinationDisplay=panel.centerTabbedDisplay;
' #txt
As0 f13 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f13 responseMappingAction 'out=in;
' #txt
As0 f13 windowConfiguration '#Fri Jul 18 17:58:21 CEST 2008
use_default=true
' #txt
As0 f13 isAsynch true #txt
As0 f13 isInnerRd true #txt
As0 f13 isDialog false #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the User Menu
on westDisplay</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f13 46 196 36 24 20 -2 #rect
As0 f13 @|RichDialogIcon #fIcon
As0 f4 expr out #txt
As0 f4 64 220 64 315 #arcP
As0 f16 expr out #txt
As0 f16 64 66 64 196 #arcP
As0 f2 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f2 guid 119E91A712C9C2ED #txt
As0 f2 379 315 26 26 14 0 #rect
As0 f2 @|RichDialogEndIcon #fIcon
As0 f3 guid 119E91A82DA720BA #txt
As0 f3 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode ivy.session.logoutSessionUser(); #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logoutSessionUser</name>
        <nameStyle>17,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 382 46 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f5 expr out #txt
As0 f5 392 66 392 315 #arcP
As0 f6 guid 120E4EC0AE555B10 #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayWorkflowUiUserGuide</name>
        <nameStyle>26,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 526 46 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f7 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f7 523 315 26 26 14 0 #rect
As0 f7 @|RichDialogProcessEndIcon #fIcon
As0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.FileChoserReturn;
import ch.ivyteam.ivy.workflow.ui.utils.FileChoserHelper;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import com.ulcjava.base.application.ClientContext;


IContentObjectValue userGuideObjectContentValue = ivy.cms.getContentObjectValue("/ch/ivyteam/ivy/workflow/ui/help/userGuide", java.util.Locale.ENGLISH, false);

//Search the type of browser
String userAgent = ivy.request.getParameter("User-Agent").toString();
if (userAgent.length() < 1)
{
	userAgent = "MSIE";	
}

Binary binaryFile = userGuideObjectContentValue.getContentAsByteArray();

String fileName = "WorkflowUiUserGuide.pdf"; 
String dialogTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/help/plainStrings/fileSaveDialogTitle");

String titleSuccess = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/help/plainStrings/fileSaveOperation");
String detailSuccess = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/help/plainStrings/fileSaveSuccessful");

String titleError = titleSuccess;
String detailError = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/help/plainStrings/fileSaveFailed");

String titleCancel = titleSuccess;
String detailCancel = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/help/plainStrings/fileSaveCanceled");

String textOkButton = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok");

String endUserSelectedFilePath = "";
			

try{
	// CREATE THE DIALOG SAVE AS
	in.userGuideFileChoserReturn = FileChoserHelper.storeStream(userAgent, panel, binaryFile, fileName, dialogTitle,
			 titleSuccess,  detailSuccess,
			 titleError,  detailError,
			 titleCancel,  detailCancel,
			 textOkButton);

	endUserSelectedFilePath = in.userGuideFileChoserReturn.getFilePath();

} catch(Exception ex){	
	ivy.log.debug("error during file store/show on client side: " + ex.getMessage());
	endUserSelectedFilePath = "";
}' #txt
As0 f9 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>choose the folder
and save the user guide pdf file</name>
        <nameStyle>50,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 518 172 36 24 20 -2 #rect
As0 f9 @|RichDialogProcessStepIcon #fIcon
As0 f14 expr out #txt
As0 f14 536 66 536 172 #arcP
As0 f8 expr out #txt
As0 f8 536 196 536 315 #arcP
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f10 mainOut f12 tail #connect
As0 f12 head f11 mainIn #connect
As0 f13 mainOut f4 tail #connect
As0 f4 head f1 mainIn #connect
As0 f0 mainOut f16 tail #connect
As0 f16 head f13 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f2 mainIn #connect
As0 f6 mainOut f14 tail #connect
As0 f14 head f9 mainIn #connect
As0 f9 mainOut f8 tail #connect
As0 f8 head f7 mainIn #connect
