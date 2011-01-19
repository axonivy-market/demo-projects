[Ivy]
[>Created: Wed Jan 19 09:53:20 CET 2011]
12A196714EFC9E34 3.15 #module
>Proto >Proto Collection #zClass
As0 AbsenceManagementProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStep f3 '' #zField
As0 @PushWFArc f4 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStart f5 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @RichDialogProcessStart f9 '' #zField
As0 @RichDialogProcessEnd f10 '' #zField
As0 @RichDialogProcessStart f12 '' #zField
As0 @RichDialogEnd f17 '' #zField
As0 @RichDialogProcessStart f18 '' #zField
As0 @PushWFArc f19 '' #zField
As0 @RichDialogProcessStart f21 '' #zField
As0 @RichDialogProcessStep f22 '' #zField
As0 @PushWFArc f24 '' #zField
As0 @PushWFArc f25 '' #zField
As0 @RichDialogProcessEnd f26 '' #zField
As0 @PushWFArc f27 '' #zField
As0 @PushWFArc f13 '' #zField
As0 @Alternative f11 '' #zField
As0 @PushWFArc f20 '' #zField
As0 @PushWFArc f23 '' #zField
As0 @RichDialogProcessStart f28 '' #zField
As0 @RichDialogProcessEnd f29 '' #zField
As0 @PushWFArc f30 '' #zField
As0 @RichDialogProcessStep f31 '' #zField
As0 @PushWFArc f32 '' #zField
As0 @PushWFArc f8 '' #zField
>Proto As0 As0 AbsenceManagementProcess #zField
As0 f0 guid 1198ABD3DECFDD60 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents false #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.end=new Date().add(new Duration(0,0,2,0,0,0));
out.start=new Date().add(new Duration(0,0,1,0,0,0));
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/administration/images/absence48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceLongDesc\");\n"/userContext * }}' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 38 46 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f1 35 203 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode 'import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTabbedPane;


out.errorMessage = "";//Reset Error
if(!ivy.session.isSessionUserUnknown()){
	
	out.absenceList.clear();
	out.absenceList.addAll(ivy.session.getSessionUser().getAbsences());
} else {
	out.errorMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/enduser/messages/notLoggedIn")	;

}
panel.addCollapsiblePane.setCollapsed(true);
panel.deleteButton.enabled = false;


// update the bullet on tab
ULCContainer parent = panel.getParent();

if (parent instanceof ULCTabbedPane && (parent as ULCTabbedPane).getSelectedComponent().equals(panel))
{
	int index = (parent as ULCTabbedPane).getSelectedIndex();
	(parent as ULCTabbedPane).setTitleAt(index, 
																				ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc") + 
																				(ivy.session.getSessionUser().getAbsences().isEmpty()? "": " \u2022"));
	
}' #txt
As0 f3 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get absences of user
try to update the tab''s bullet</name>
        <nameStyle>51,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 30 132 36 24 20 -2 #rect
As0 f3 @|RichDialogProcessStepIcon #fIcon
As0 f4 expr out #txt
As0 f4 48 66 48 132 #arcP
As0 f2 expr out #txt
As0 f2 48 156 48 203 #arcP
As0 f5 guid 1198AC930B34DDE8 #txt
As0 f5 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f5 actionTable 'out=in;
' #txt
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Absence</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f5 318 46 20 20 13 0 #rect
As0 f5 @|RichDialogProcessStartIcon #fIcon
As0 f6 guid 1198ADADD5CB5C0C #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;

// delete the selected absences
List userAbsences = panel.absenceTable.getSelectedListEntries();


for (Object userAbsence: userAbsences)
{

	if(userAbsence instanceof IUserAbsence)
	{
			ivy.session.getSessionUser().deleteAbsence(userAbsence as IUserAbsence);
	}
	
}' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Absence</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 174 46 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f7 expr out #txt
As0 f7 184 66 66 141 #arcP
As0 f7 1 184 120 #addKink
As0 f7 1 0.354074536532317 0 0 #arcLabel
As0 f9 guid 1198AE1D23E153E4 #txt
As0 f9 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode '
' #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleCollapse</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 502 46 20 20 13 0 #rect
As0 f9 @|RichDialogProcessStartIcon #fIcon
As0 f10 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f10 499 211 26 26 14 0 #rect
As0 f10 @|RichDialogProcessEndIcon #fIcon
As0 f12 guid 1198AE6A9324CDF0 #txt
As0 f12 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f12 actionTable 'out=in;
' #txt
As0 f12 actionCode 'if(panel.absenceTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.security.IUserAbsence){
	panel.deleteButton.enabled = true;
	}' #txt
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enableDelete</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f12 838 46 20 20 13 0 #rect
As0 f12 @|RichDialogProcessStartIcon #fIcon
As0 f17 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f17 guid 12061AD5D7A35B2D #txt
As0 f17 939 211 26 26 14 0 #rect
As0 f17 @|RichDialogEndIcon #fIcon
As0 f18 guid 12061AD988EAC0E3 #txt
As0 f18 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f18 actionTable 'out=in;
' #txt
As0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f18 942 46 20 20 13 0 #rect
As0 f18 @|RichDialogProcessStartIcon #fIcon
As0 f19 expr out #txt
As0 f19 952 66 952 211 #arcP
As0 f21 guid 12A333B1D13C3420 #txt
As0 f21 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f21 actionTable 'out=in;
' #txt
As0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f21 606 46 20 20 13 0 #rect
As0 f21 @|RichDialogProcessStartIcon #fIcon
As0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f22 actionTable 'out=in;
' #txt
As0 f22 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;' #txt
As0 f22 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleCollapse</name>
        <nameStyle>14,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f22 494 140 36 24 20 -2 #rect
As0 f22 @|RichDialogProcessStepIcon #fIcon
As0 f24 expr out #txt
As0 f24 512 164 512 211 #arcP
As0 f25 expr out #txt
As0 f25 616 66 530 149 #arcP
As0 f25 1 616 136 #addKink
As0 f25 1 0.09143200660011759 0 0 #arcLabel
As0 f26 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f26 838 214 20 20 13 0 #rect
As0 f26 @|RichDialogProcessEndIcon #fIcon
As0 f27 expr out #txt
As0 f27 848 66 848 214 #arcP
As0 f13 expr out #txt
As0 f13 512 66 512 140 #arcP
As0 f11 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description
is set?</name>
        <nameStyle>12,7,9
7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f11 314 82 28 28 14 0 #rect
As0 f11 @|AlternativeIcon #fIcon
As0 f20 expr out #txt
As0 f20 328 66 328 82 #arcP
As0 f23 expr in #txt
As0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f23 342 96 60 215 #arcP
As0 f23 1 432 96 #addKink
As0 f23 2 432 192 #addKink
As0 f23 1 0.7692554606649319 0 0 #arcLabel
As0 f28 guid 12A37D2E575B0F5A #txt
As0 f28 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f28 actionTable 'out=in;
' #txt
As0 f28 actionCode 'out.end = in.start;' #txt
As0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>incrementEndDate</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f28 686 46 20 20 13 0 #rect
As0 f28 @|RichDialogProcessStartIcon #fIcon
As0 f29 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f29 686 214 20 20 13 0 #rect
As0 f29 @|RichDialogProcessEndIcon #fIcon
As0 f30 expr out #txt
As0 f30 696 66 696 214 #arcP
As0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f31 actionTable 'out=in;
' #txt
As0 f31 actionCode '//Create absence for logged user
if (!ivy.session.isSessionUserUnknown() && in.description.length() > 0){
	ivy.session.getSessionUser().createAbsence(in.start,in.end,in.description);
	in.description = "";
}' #txt
As0 f31 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create 
absence</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f31 310 132 36 24 20 -2 #rect
As0 f31 @|RichDialogProcessStepIcon #fIcon
As0 f32 expr in #txt
As0 f32 outCond 'in.description.length() > 0' #txt
As0 f32 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f32 328 110 328 132 #arcP
As0 f32 0 0.45454545454545453 0 0 #arcLabel
As0 f8 expr out #txt
As0 f8 310 144 66 144 #arcP
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>868</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 .ui2RdDataAction 'out.description=panel.descTextField.text;
out.end=panel.endDatePicker.valueAsDate;
out.start=panel.startDatePicker.valueAsDate;
' #txt
>Proto As0 .rdData2UIAction 'panel.absenceTable.listData=in.absenceList;
panel.descTextField.text=in.description;
panel.endDatePicker.valueAsDate=in.end;
panel.errorMessageLabel.text=in.errorMessage;
panel.errorMessageLabel.visible=in.errorMessage.length() > 0;
panel.startDatePicker.valueAsDate=in.start;
' #txt
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f4 tail #connect
As0 f4 head f3 mainIn #connect
As0 f3 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f6 mainOut f7 tail #connect
As0 f7 head f3 mainIn #connect
As0 f18 mainOut f19 tail #connect
As0 f19 head f17 mainIn #connect
As0 f22 mainOut f24 tail #connect
As0 f24 head f10 mainIn #connect
As0 f21 mainOut f25 tail #connect
As0 f25 head f22 mainIn #connect
As0 f12 mainOut f27 tail #connect
As0 f27 head f26 mainIn #connect
As0 f9 mainOut f13 tail #connect
As0 f13 head f22 mainIn #connect
As0 f5 mainOut f20 tail #connect
As0 f20 head f11 in #connect
As0 f23 head f1 mainIn #connect
As0 f28 mainOut f30 tail #connect
As0 f30 head f29 mainIn #connect
As0 f11 out f32 tail #connect
As0 f32 head f31 mainIn #connect
As0 f11 out f23 tail #connect
As0 f31 mainOut f8 tail #connect
As0 f8 head f3 mainIn #connect
