[Ivy]
[>Created: Wed Apr 01 14:36:04 CEST 2009]
1198AB03C9455C62 3.11 #module
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
As0 @PushWFArc f8 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @RichDialogProcessStart f9 '' #zField
As0 @RichDialogProcessEnd f10 '' #zField
As0 @PushWFArc f11 '' #zField
As0 @RichDialogProcessStart f12 '' #zField
As0 @PushWFArc f13 '' #zField
As0 @RichDialogProcessStart f14 '' #zField
As0 @RichDialogProcessEnd f15 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @RichDialogEnd f17 '' #zField
As0 @RichDialogProcessStart f18 '' #zField
As0 @PushWFArc f19 '' #zField
>Proto As0 As0 AbsenceManagementProcess #zField
As0 f0 guid 1198ABD3DECFDD60 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f0 method start() #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.end=new Date();
out.start=new Date();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/common/images/absence48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceLongDesc\");"}}' #txt
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
As0 f1 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f1 35 203 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode 'out.errorMessage = "";//Reset Error
if(!ivy.session.isSessionUserUnknown()){
	
	// remplaced by cms entry
	// panel.header.title = "Manage Absences for " + ivy.session.getSessionUserName();
	
	out.absenceList.clear();
	out.absenceList.addAll(ivy.session.getSessionUser().getAbsences());
} else {
	out.errorMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/enduser/messages/notLoggedIn")	;

}
panel.addCollapsiblePane.setCollapsed(true);
panel.deleteButton.enabled = false;


' #txt
As0 f3 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get absences of user</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 30 124 36 24 20 -2 #rect
As0 f3 @|RichDialogProcessStepIcon #fIcon
As0 f4 expr out #txt
As0 f4 48 66 48 124 #arcP
As0 f2 expr out #txt
As0 f2 48 148 48 203 #arcP
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Absence</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f5 guid 1198AC930B34DDE8 #txt
As0 f5 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f5 actionTable 'out=in;
' #txt
As0 f5 actionCode '//Create absence for logged user
if (!ivy.session.isSessionUserUnknown() && in.description.length() > 0){
	ivy.session.getSessionUser().createAbsence(in.start,in.end,in.description);
}' #txt
As0 f5 118 46 20 20 13 0 #rect
As0 f5 @|RichDialogProcessStartIcon #fIcon
As0 f8 expr out #txt
As0 f8 120 63 60 124 #arcP
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Absence</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 guid 1198ADADD5CB5C0C #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'if(panel.absenceTable.getSelectedListEntry() 
	instanceof ch.ivyteam.ivy.security.IUserAbsence){
		ivy.session.getSessionUser().deleteAbsence(panel.absenceTable.getSelectedListEntry() as ch.ivyteam.ivy.security.IUserAbsence);
	}' #txt
As0 f6 230 46 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f7 expr out #txt
As0 f7 230 59 66 129 #arcP
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleCollapse</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 guid 1198AE1D23E153E4 #txt
As0 f9 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;
' #txt
As0 f9 38 294 20 20 13 0 #rect
As0 f9 @|RichDialogProcessStartIcon #fIcon
As0 f10 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f10 35 347 26 26 14 0 #rect
As0 f10 @|RichDialogProcessEndIcon #fIcon
As0 f11 expr out #txt
As0 f11 48 314 48 347 #arcP
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enableDelete</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f12 guid 1198AE6A9324CDF0 #txt
As0 f12 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f12 actionTable 'out=in;
' #txt
As0 f12 actionCode 'if(panel.absenceTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.security.IUserAbsence){
	panel.deleteButton.enabled = true;
	}' #txt
As0 f12 150 294 20 20 13 0 #rect
As0 f12 @|RichDialogProcessStartIcon #fIcon
As0 f13 expr out #txt
As0 f13 151 308 59 354 #arcP
As0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f14 guid 11DD86320D46FF8A #txt
As0 f14 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f14 actionTable 'out=in;
' #txt
As0 f14 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


if (panel.addGridBagLayoutPane.getBorder() instanceof ULCTitledBorder)
{
	(panel.addGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addAbsence"));
}


if (panel.absenceScrollPane.getBorder() instanceof ULCTitledBorder)
{
	(panel.absenceScrollPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/listOfYoursAbsences"));
}



' #txt
As0 f14 382 54 20 20 13 0 #rect
As0 f14 @|RichDialogProcessStartIcon #fIcon
As0 f15 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f15 379 219 26 26 14 0 #rect
As0 f15 @|RichDialogProcessEndIcon #fIcon
As0 f16 expr out #txt
As0 f16 392 74 392 219 #arcP
As0 f17 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f17 guid 12061AD5D7A35B2D #txt
As0 f17 507 219 26 26 14 0 #rect
As0 f17 @|RichDialogEndIcon #fIcon
As0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f18 guid 12061AD988EAC0E3 #txt
As0 f18 type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
As0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData out;
' #txt
As0 f18 actionTable 'out=in;
' #txt
As0 f18 510 54 20 20 13 0 #rect
As0 f18 @|RichDialogProcessStartIcon #fIcon
As0 f19 expr out #txt
As0 f19 520 74 520 219 #arcP
>Proto As0 .ui2RdDataAction 'out.description=panel.descTextField.text;
out.end=panel.endDatePicker.date;
out.start=panel.startDatePicker.date;
' #txt
>Proto As0 .rdData2UIAction 'panel.absenceTable.listData=in.absenceList;
panel.descTextField.text=in.description;
panel.endDatePicker.date=in.end;
panel.errorMessageLabel.text=in.errorMessage;
panel.startDatePicker.date=in.start;
panel.errorMessageLabel.visible=in.errorMessage.length() > 0;
' #txt
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f4 tail #connect
As0 f4 head f3 mainIn #connect
As0 f3 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f5 mainOut f8 tail #connect
As0 f8 head f3 mainIn #connect
As0 f6 mainOut f7 tail #connect
As0 f7 head f3 mainIn #connect
As0 f9 mainOut f11 tail #connect
As0 f11 head f10 mainIn #connect
As0 f12 mainOut f13 tail #connect
As0 f13 head f10 mainIn #connect
As0 f14 mainOut f16 tail #connect
As0 f16 head f15 mainIn #connect
As0 f18 mainOut f19 tail #connect
As0 f19 head f17 mainIn #connect
