[Ivy]
[>Created: Fri Jun 06 11:43:21 CEST 2008]
011951CBE518463E 3.10 #module
>Proto >Proto Collection #zClass
Fs0 FinishedTasksDisplayListProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 guid 11951E6446A47A0F #txt
Fs0 f0 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f0 method start() #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.findWorkedOnTasksMode=true;
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/images/taskStateDONE48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/plainStrings/finishedTasksTitle\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/plainStrings/finishedTasksText\\\")%>\";\n"/initScript ""}}' #txt
Fs0 f0 102 70 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 f1 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f1 99 387 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 @RichDialogProcessStep f3 '' #zField
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find the tasks
with the state DONE</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode 'import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.IPropertyFilter;


IQueryResult queryResult;


//    startIndex - the index of the first case of all cases found that will be returned
int startIndex = 0;

//    count - how many cases should be returned. -1 for all.
int count = -1;


//    taskEndTimestampFilter - task end timestamp filter. Can be null if filter should be deactivated. Tasks returned have end timestamps that are equal or earlier
java.util.Date taskEndTimestampFilter = null;


// findWorkedOnTasks(IPropertyFilter filter, List order, int startIndex, int count, boolean returnAllCount) 
// findWorkedOnTasksByRole(List roles, IPropertyFilter filter, List order, int startIndex, int count, boolean returnAllCount) 

queryResult = (in.findWorkedOnTasksMode? 
								ivy.session.findWorkedOnTasks(null, null, startIndex, count, true): 
								ivy.session.findWorkedOnTasksByRole(ivy.session.getSessionUser().getRoles(), null, null, startIndex, count, true));
								



out.tasks.clear();
out.tasks.addAll(queryResult.getResultList());


// inform the user about the found result
out.footerMessage = "Found " + in.tasks.size() + " task" + (in.tasks.size() > 1? "s": "");' #txt
Fs0 f3 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f3 94 212 36 24 20 -2 #rect
Fs0 f3 @|RichDialogProcessStepIcon #fIcon
Fs0 @PushWFArc f4 '' #zField
Fs0 f4 expr out #txt
Fs0 f4 112 90 112 212 #arcP
Fs0 @PushWFArc f2 '' #zField
Fs0 f2 expr out #txt
Fs0 f2 112 236 112 387 #arcP
Fs0 @RichDialogMethodStart f5 '' #zField
Fs0 f5 guid 11951F3988DCD10F #txt
Fs0 f5 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f5 method refresh() #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Fs0 f5 174 70 20 20 13 0 #rect
Fs0 f5 @|RichDialogMethodStartIcon #fIcon
Fs0 @PushWFArc f6 '' #zField
Fs0 f6 expr out #txt
Fs0 f6 184 90 130 224 #arcP
Fs0 f6 1 184 224 #addKink
Fs0 f6 0 0.771800663482469 0 0 #arcLabel
Fs0 @RichDialogProcessStart f7 '' #zField
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f7 guid 119526C327C277A1 #txt
Fs0 f7 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f7 actionTable 'out=in;
' #txt
Fs0 f7 238 70 20 20 13 0 #rect
Fs0 f7 @|RichDialogProcessStartIcon #fIcon
Fs0 @PushWFArc f8 '' #zField
Fs0 f8 expr out #txt
Fs0 f8 248 90 130 224 #arcP
Fs0 f8 1 248 224 #addKink
Fs0 f8 1 0.052552175397144914 0 0 #arcLabel
Fs0 @RichDialogEnd f9 '' #zField
Fs0 f9 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f9 guid 119528CE8A7EB7E4 #txt
Fs0 f9 635 403 26 26 14 0 #rect
Fs0 f9 @|RichDialogEndIcon #fIcon
Fs0 @RichDialogMethodStart f10 '' #zField
Fs0 f10 guid 119528CFBC537D23 #txt
Fs0 f10 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f10 method close() #txt
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Fs0 f10 638 70 20 20 13 0 #rect
Fs0 f10 @|RichDialogMethodStartIcon #fIcon
Fs0 @PushWFArc f11 '' #zField
Fs0 f11 expr out #txt
Fs0 f11 648 90 648 403 #arcP
Fs0 @RichDialogProcessStart f12 '' #zField
Fs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f12 guid 1195292F246A2F84 #txt
Fs0 f12 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f12 actionTable 'out=in;
' #txt
Fs0 f12 678 102 20 20 13 0 #rect
Fs0 f12 @|RichDialogProcessStartIcon #fIcon
Fs0 @PushWFArc f13 '' #zField
Fs0 f13 expr out #txt
Fs0 f13 688 122 661 416 #arcP
Fs0 f13 1 688 416 #addKink
Fs0 f13 0 0.5696757031148276 0 0 #arcLabel
Fs0 @RichDialogProcessStart f14 '' #zField
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findWorkedOnTasksModeSelected</name>
        <nameStyle>29,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 guid 11A02B49A2B4178E #txt
Fs0 f14 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f14 actionTable 'out=in;
out.findWorkedOnTasksMode=true;
' #txt
Fs0 f14 334 78 20 20 13 0 #rect
Fs0 f14 @|RichDialogProcessStartIcon #fIcon
Fs0 @RichDialogProcessStart f15 '' #zField
Fs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findWorkedOnTasksByRoleModeSelected</name>
        <nameStyle>35,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f15 guid 11A02B4A501229BD #txt
Fs0 f15 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f15 actionTable 'out=in;
out.findWorkedOnTasksMode=false;
' #txt
Fs0 f15 398 110 20 20 13 0 #rect
Fs0 f15 @|RichDialogProcessStartIcon #fIcon
Fs0 @PushWFArc f16 '' #zField
Fs0 f16 expr out #txt
Fs0 f16 344 98 130 224 #arcP
Fs0 f16 1 344 224 #addKink
Fs0 f16 1 0.20231432942736405 0 0 #arcLabel
Fs0 @Alternative f18 '' #zField
Fs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f18 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f18 394 162 28 28 14 0 #rect
Fs0 f18 @|AlternativeIcon #fIcon
Fs0 @PushWFArc f19 '' #zField
Fs0 f19 expr out #txt
Fs0 f19 408 130 408 162 #arcP
Fs0 f19 0 0.515508988859608 0 0 #arcLabel
Fs0 @PushWFArc f17 '' #zField
Fs0 f17 expr in #txt
Fs0 f17 outCond 'ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.ROLE_TREE_NAVIGATION)' #txt
Fs0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has 
permission</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f17 408 190 130 224 #arcP
Fs0 f17 1 408 224 #addKink
Fs0 f17 0 0.47058823529411764 6 0 #arcLabel
Fs0 @RichDialog f21 '' #zField
Fs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform user
denied permission</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f21 targetWindow NEW #txt
Fs0 f21 targetDisplay TOP #txt
Fs0 f21 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Fs0 f21 startMethod showMessageWithTitle(String,String) #txt
Fs0 f21 type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
Fs0 f21 panelName 'Permission denied' #txt
Fs0 f21 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Fs0 f21 requestMappingAction 'param.aMessageTitle="Permission denied to see finished tasks by roles";
param.aMessageText="You don''t have the permission called ''" + ch.ivyteam.ivy.security.IPermission.ROLE_TREE_NAVIGATION.getName() + "'' that will gives you possibility to do that action. \nContact your Workflow Administrator for that.";
' #txt
Fs0 f21 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData out;
' #txt
Fs0 f21 responseMappingAction 'out=in;
' #txt
Fs0 f21 windowConfiguration '#Fri Jun 06 11:43:20 CEST 2008
height=250
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=600
title=Permission denied
' #txt
Fs0 f21 isAsynch true #txt
Fs0 f21 isInnerRd true #txt
Fs0 f21 isDialog false #txt
Fs0 f21 438 244 36 24 20 -2 #rect
Fs0 f21 @|RichDialogIcon #fIcon
Fs0 @PushWFArc f22 '' #zField
Fs0 f22 expr in #txt
Fs0 f22 422 176 456 244 #arcP
Fs0 f22 1 456 176 #addKink
Fs0 f22 1 0.47430948744770324 0 0 #arcLabel
Fs0 @PushWFArc f20 '' #zField
Fs0 f20 expr out #txt
Fs0 f20 456 268 125 400 #arcP
Fs0 f20 1 456 400 #addKink
Fs0 f20 1 0.25421881837722415 0 0 #arcLabel
Fs0 f0 mainOut f4 tail #connect
Fs0 f4 head f3 mainIn #connect
Fs0 f3 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f5 mainOut f6 tail #connect
Fs0 f6 head f3 mainIn #connect
Fs0 f7 mainOut f8 tail #connect
Fs0 f8 head f3 mainIn #connect
Fs0 f10 mainOut f11 tail #connect
Fs0 f11 head f9 mainIn #connect
Fs0 f12 mainOut f13 tail #connect
Fs0 f13 head f9 mainIn #connect
Fs0 f14 mainOut f16 tail #connect
Fs0 f16 head f3 mainIn #connect
Fs0 f15 mainOut f19 tail #connect
Fs0 f19 head f18 in #connect
Fs0 f18 out f17 tail #connect
Fs0 f17 head f3 mainIn #connect
Fs0 f18 out f22 tail #connect
Fs0 f22 head f21 mainIn #connect
Fs0 f21 mainOut f20 tail #connect
Fs0 f20 head f1 mainIn #connect
>Proto Fs0 Fs0 FinishedTasksDisplayListProcess #zField
>Proto Fs0 .type ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList.FinishedTasksDisplayListData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 .rdData2UIAction 'panel.footerLabel.text=in.footerMessage;
panel.tasksTable.listData=in.tasks;
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
