[Ivy]
[>Created: Fri Jun 17 14:52:18 CEST 2011]
13078B15247E7E2E 3.17 #module
>Proto >Proto Collection #zClass
Us0 UserDisplayListProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @RichDialogProcessStep f3 '' #zField
Us0 @PushWFArc f4 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @RichDialogProcessStart f5 '' #zField
Us0 @RichDialogProcessEnd f6 '' #zField
Us0 @RichDialogFireEvent f8 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @Alternative f10 '' #zField
Us0 @PushWFArc f11 '' #zField
Us0 @PushWFArc f9 '' #zField
Us0 @PushWFArc f12 '' #zField
Us0 @RichDialogProcessStart f13 '' #zField
Us0 @RichDialogProcessEnd f14 '' #zField
Us0 @PushWFArc f15 '' #zField
>Proto Us0 Us0 UserDisplayListProcess #zField
Us0 f0 guid 13078B1526379D30 #txt
Us0 f0 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f0 method start() #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Us0 f0 90 40 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f1 90 246 20 20 13 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;

out.userList = WorkflowUIAccessPermissionHandler.getWfHumanUsersAsSystemUser();

// build the default filtered list
out.filteredUserList.clear();
out.filteredUserList.addAll(out.userList);

// set the search user text
in.nameCriteria = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/findUsersByNameShortDesc");
' #txt
Us0 f3 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get the list of users</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 82 140 36 24 20 -2 #rect
Us0 f3 @|RichDialogProcessStepIcon #fIcon
Us0 f4 expr out #txt
Us0 f4 100 60 100 140 #arcP
Us0 f2 expr out #txt
Us0 f2 100 164 100 246 #arcP
Us0 f5 guid 13078C47833B037B #txt
Us0 f5 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData out;
' #txt
Us0 f5 actionTable 'out=in;
' #txt
Us0 f5 actionCode 'import ch.ivyteam.ivy.security.IUser;

if (panel.userTable.getSelectedListEntry() is initialized)
{
	out.selectedUser = panel.userTable.getSelectedListEntry() as IUser;	
}' #txt
Us0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>userSelected</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f5 350 38 20 20 13 0 #rect
Us0 f5 @|RichDialogProcessStartIcon #fIcon
Us0 f6 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f6 350 254 20 20 13 0 #rect
Us0 f6 @|RichDialogProcessEndIcon #fIcon
Us0 f8 actionDecl 'ch.ivyteam.ivy.security.IUser user;
' #txt
Us0 f8 actionTable 'user=in.selectedUser;
' #txt
Us0 f8 actionCode panel.fireUserSelected(user); #txt
Us0 f8 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f8 fireEvent userSelected(ch.ivyteam.ivy.security.IUser) #txt
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the
userSelected event</name>
        <nameStyle>9,7
18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 342 148 36 24 20 -2 #rect
Us0 f8 @|RichDialogFireEventIcon #fIcon
Us0 f7 expr out #txt
Us0 f7 360 172 360 254 #arcP
Us0 f10 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection is ok?</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f10 346 82 28 28 14 0 #rect
Us0 f10 @|AlternativeIcon #fIcon
Us0 f11 expr out #txt
Us0 f11 360 58 360 82 #arcP
Us0 f9 expr in #txt
Us0 f9 outCond 'in.#selectedUser is initialized' #txt
Us0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f9 360 110 360 148 #arcP
Us0 f12 expr in #txt
Us0 f12 374 96 369 262 #arcP
Us0 f12 1 504 96 #addKink
Us0 f12 2 504 240 #addKink
Us0 f12 1 0.3175241286267392 0 0 #arcLabel
Us0 f13 guid 13078CC8C99C7806 #txt
Us0 f13 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData out;
' #txt
Us0 f13 actionTable 'out=in;
' #txt
Us0 f13 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
WorkflowUIAccessPermissionHandler.filterUserList(in.userList, in.filteredUserList, in.nameCriteria);' #txt
Us0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findUsers</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f13 574 38 20 20 13 0 #rect
Us0 f13 @|RichDialogProcessStartIcon #fIcon
Us0 f14 type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
Us0 f14 574 246 20 20 13 0 #rect
Us0 f14 @|RichDialogProcessEndIcon #fIcon
Us0 f15 expr out #txt
Us0 f15 584 58 584 246 #arcP
>Proto Us0 .ui2RdDataAction 'out.nameCriteria=panel.userNameCriteriaTextField.valueAsString;
' #txt
>Proto Us0 .rdData2UIAction 'panel.userNameCriteriaTextField.valueAsString=in.nameCriteria;
panel.userTable.listData=in.filteredUserList;
' #txt
>Proto Us0 .type ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f0 mainOut f4 tail #connect
Us0 f4 head f3 mainIn #connect
Us0 f3 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f8 mainOut f7 tail #connect
Us0 f7 head f6 mainIn #connect
Us0 f5 mainOut f11 tail #connect
Us0 f11 head f10 in #connect
Us0 f10 out f9 tail #connect
Us0 f9 head f8 mainIn #connect
Us0 f10 out f12 tail #connect
Us0 f12 head f6 mainIn #connect
Us0 f13 mainOut f15 tail #connect
Us0 f15 head f14 mainIn #connect
