[Ivy]
[>Created: Tue Aug 30 10:53:11 CEST 2016]
155BB4328F79B2D5 3.18 #module
>Proto >Proto Collection #zClass
Ba0 BusinessData Big #zClass
Ba0 B #cInfo
Ba0 #process
Ba0 @TextInP .resExport .resExport #zField
Ba0 @TextInP .type .type #zField
Ba0 @TextInP .processKind .processKind #zField
Ba0 @AnnotationInP-0n ai ai #zField
Ba0 @MessageFlowInP-0n messageIn messageIn #zField
Ba0 @MessageFlowOutP-0n messageOut messageOut #zField
Ba0 @TextInP .xml .xml #zField
Ba0 @TextInP .responsibility .responsibility #zField
Ba0 @StartRequest f0 '' #zField
Ba0 @RichDialog f5 '' #zField
Ba0 @StartRequest f7 '' #zField
Ba0 @StartRequest f10 '' #zField
Ba0 @RichDialog f11 '' #zField
Ba0 @EndTask f12 '' #zField
Ba0 @PushWFArc f14 '' #zField
Ba0 @InfoButton f2 '' #zField
Ba0 @GridStep f3 '' #zField
Ba0 @PushWFArc f6 '' #zField
Ba0 @EndTask f8 '' #zField
Ba0 @RichDialog f18 '' #zField
Ba0 @PushWFArc f24 '' #zField
Ba0 @PushWFArc f17 '' #zField
Ba0 @GridStep f25 '' #zField
Ba0 @PushWFArc f26 '' #zField
Ba0 @PushWFArc f13 '' #zField
Ba0 @PushWFArc f15 '' #zField
Ba0 @PushWFArc f9 '' #zField
Ba0 @PushWFArc f16 '' #zField
Ba0 @StartRequest f4 '' #zField
Ba0 @RichDialog f21 '' #zField
Ba0 @EndTask f23 '' #zField
Ba0 @InfoButton f30 '' #zField
Ba0 @AnnotationArc f32 '' #zField
Ba0 @RichDialog f28 '' #zField
Ba0 @PushWFArc f29 '' #zField
Ba0 @PushWFArc f27 '' #zField
Ba0 @TaskSwitchSimple f31 '' #zField
Ba0 @PushWFArc f34 '' #zField
Ba0 @StartRequest f19 '' #zField
Ba0 @TkArc f22 '' #zField
>Proto Ba0 Ba0 BusinessData #zField
Ba0 f0 outLink create.ivp #txt
Ba0 f0 type workflow.businessdata.Data #txt
Ba0 f0 inParamDecl '<> param;' #txt
Ba0 f0 inParamTable 'out.id="";
' #txt
Ba0 f0 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f0 guid 155BB4329582E3C6 #txt
Ba0 f0 requestEnabled true #txt
Ba0 f0 triggerEnabled false #txt
Ba0 f0 callSignature create() #txt
Ba0 f0 persist false #txt
Ba0 f0 startName '5.2: Create new Dossier' #txt
Ba0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ba0 f0 showInStartList 0 #txt
Ba0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ba0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f0 @C|.responsibility Everybody #txt
Ba0 f0 81 241 30 30 -31 17 #rect
Ba0 f0 @|StartRequestIcon #fIcon
Ba0 f5 targetWindow NEW:card: #txt
Ba0 f5 targetDisplay TOP #txt
Ba0 f5 richDialogId workflow.businessdata.BusinessDataDossierModifier #txt
Ba0 f5 startMethod start(String) #txt
Ba0 f5 type workflow.businessdata.Data #txt
Ba0 f5 requestActionDecl '<String businessDataId> param;' #txt
Ba0 f5 requestMappingAction 'param.businessDataId=in.id;
' #txt
Ba0 f5 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f5 responseMappingAction 'out=in;
out.id=result.id;
' #txt
Ba0 f5 windowConfiguration '* ' #txt
Ba0 f5 isAsynch false #txt
Ba0 f5 isInnerRd false #txt
Ba0 f5 userContext '* ' #txt
Ba0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>modify</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f5 248 298 112 44 -20 -7 #rect
Ba0 f5 @|RichDialogIcon #fIcon
Ba0 f7 outLink update.ivp #txt
Ba0 f7 type workflow.businessdata.Data #txt
Ba0 f7 inParamDecl '<java.lang.String id> param;' #txt
Ba0 f7 inParamTable 'out.id=param.id;
' #txt
Ba0 f7 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f7 guid 155BB4329582E3C6 #txt
Ba0 f7 requestEnabled true #txt
Ba0 f7 triggerEnabled false #txt
Ba0 f7 callSignature update(String) #txt
Ba0 f7 persist false #txt
Ba0 f7 startName '5.3: Update Dossier' #txt
Ba0 f7 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ba0 f7 showInStartList 0 #txt
Ba0 f7 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ba0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f7 @C|.responsibility Everybody #txt
Ba0 f7 81 370 30 30 -33 17 #rect
Ba0 f7 @|StartRequestIcon #fIcon
Ba0 f10 outLink browse.ivp #txt
Ba0 f10 type workflow.businessdata.Data #txt
Ba0 f10 inParamDecl '<> param;' #txt
Ba0 f10 inParamTable 'out.id="";
' #txt
Ba0 f10 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f10 guid 155BB4329582E3C6 #txt
Ba0 f10 requestEnabled true #txt
Ba0 f10 triggerEnabled false #txt
Ba0 f10 callSignature browse() #txt
Ba0 f10 persist false #txt
Ba0 f10 startName '5: Browse Dossiers (Business Data)' #txt
Ba0 f10 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ba0 f10 showInStartList 1 #txt
Ba0 f10 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ba0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f10 @C|.responsibility Everybody #txt
Ba0 f10 82 145 30 30 -33 17 #rect
Ba0 f10 @|StartRequestIcon #fIcon
Ba0 f11 targetWindow NEW:card: #txt
Ba0 f11 targetDisplay TOP #txt
Ba0 f11 richDialogId workflow.businessdata.BusinessDataDossierBrowser #txt
Ba0 f11 startMethod start(String) #txt
Ba0 f11 type workflow.businessdata.Data #txt
Ba0 f11 requestActionDecl '<String id> param;' #txt
Ba0 f11 requestMappingAction 'param.id=in.id;
' #txt
Ba0 f11 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f11 responseMappingAction 'out=in;
' #txt
Ba0 f11 windowConfiguration '* ' #txt
Ba0 f11 isAsynch false #txt
Ba0 f11 isInnerRd false #txt
Ba0 f11 userContext '* ' #txt
Ba0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f11 360 138 112 44 -22 -7 #rect
Ba0 f11 @|RichDialogIcon #fIcon
Ba0 f12 type workflow.businessdata.Data #txt
Ba0 f12 529 145 30 30 0 15 #rect
Ba0 f12 @|EndIcon #fIcon
Ba0 f14 expr out #txt
Ba0 f14 472 160 529 160 #arcP
Ba0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Business Data Store Demo
- Manage dossier objects in the Business Data Repository (ivy.repo).
- New fields can be added to the Dossier type and it still works.</name>
        <nameStyle>24,0,7
135,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f2 80 34 384 60 -187 -24 #rect
Ba0 f2 @|IBIcon #fIcon
Ba0 f3 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f3 actionTable 'out=in;
' #txt
Ba0 f3 actionCode 'import workflow.businessdata.Dossier;

ivy.repo.delete(ivy.repo.find(in.id, Dossier.class));' #txt
Ba0 f3 type workflow.businessdata.Data #txt
Ba0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f3 168 490 112 44 -20 -7 #rect
Ba0 f3 @|StepIcon #fIcon
Ba0 f6 expr out #txt
Ba0 f6 110 512 168 512 #arcP
Ba0 f8 type workflow.businessdata.Data #txt
Ba0 f8 529 497 30 30 0 15 #rect
Ba0 f8 @|EndIcon #fIcon
Ba0 f18 targetWindow NEW:card: #txt
Ba0 f18 targetDisplay TOP #txt
Ba0 f18 richDialogId workflow.businessdata.BusinessDataDossierBrowser #txt
Ba0 f18 startMethod start(String) #txt
Ba0 f18 type workflow.businessdata.Data #txt
Ba0 f18 requestActionDecl '<String id> param;' #txt
Ba0 f18 requestMappingAction 'param.id="";
' #txt
Ba0 f18 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f18 responseMappingAction 'out=in;
' #txt
Ba0 f18 windowConfiguration '* ' #txt
Ba0 f18 isAsynch false #txt
Ba0 f18 isInnerRd false #txt
Ba0 f18 userContext '* ' #txt
Ba0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f18 360 490 112 44 -22 -7 #rect
Ba0 f18 @|RichDialogIcon #fIcon
Ba0 f24 expr out #txt
Ba0 f24 280 512 360 512 #arcP
Ba0 f17 expr out #txt
Ba0 f17 472 512 529 512 #arcP
Ba0 f25 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f25 actionTable 'out=in;
' #txt
Ba0 f25 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.DemoDataCreator;

DemoDataCreator.createDemoDataIfNotExist();' #txt
Ba0 f25 type workflow.businessdata.Data #txt
Ba0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create test data</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f25 168 138 112 44 -42 -8 #rect
Ba0 f25 @|StepIcon #fIcon
Ba0 f26 expr out #txt
Ba0 f26 112 160 168 160 #arcP
Ba0 f13 expr out #txt
Ba0 f13 280 160 360 160 #arcP
Ba0 f15 expr out #txt
Ba0 f15 111 256 248 320 #arcP
Ba0 f15 1 176 256 #addKink
Ba0 f15 2 176 320 #addKink
Ba0 f15 0 0.40876930614415163 0 0 #arcLabel
Ba0 f9 expr out #txt
Ba0 f9 111 385 248 320 #arcP
Ba0 f9 1 176 385 #addKink
Ba0 f9 2 176 320 #addKink
Ba0 f9 1 0.09311285497777255 0 0 #arcLabel
Ba0 f16 expr out #txt
Ba0 f16 360 320 416 182 #arcP
Ba0 f16 1 416 320 #addKink
Ba0 f16 0 0.8664662612862978 0 0 #arcLabel
Ba0 f4 outLink delete.ivp #txt
Ba0 f4 type workflow.businessdata.Data #txt
Ba0 f4 inParamDecl '<java.lang.String id> param;' #txt
Ba0 f4 inParamTable 'out.id=param.id;
' #txt
Ba0 f4 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f4 guid 155BB4329582E3C6 #txt
Ba0 f4 requestEnabled true #txt
Ba0 f4 triggerEnabled false #txt
Ba0 f4 callSignature delete(String) #txt
Ba0 f4 persist false #txt
Ba0 f4 startName '5.4: Delete Dossier' #txt
Ba0 f4 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ba0 f4 showInStartList 0 #txt
Ba0 f4 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ba0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f4 @C|.responsibility Everybody #txt
Ba0 f4 81 498 30 30 -30 17 #rect
Ba0 f4 @|StartRequestIcon #fIcon
Ba0 f21 targetWindow NEW:card: #txt
Ba0 f21 targetDisplay TOP #txt
Ba0 f21 richDialogId workflow.businessdata.BusinessDataDossierModifier #txt
Ba0 f21 startMethod start(String,String) #txt
Ba0 f21 type workflow.businessdata.Data #txt
Ba0 f21 requestActionDecl '<String businessDataId, String title> param;' #txt
Ba0 f21 requestMappingAction 'param.businessDataId=in.id;
param.title="Dossier Verification";
' #txt
Ba0 f21 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f21 responseMappingAction 'out=in;
' #txt
Ba0 f21 windowConfiguration '* ' #txt
Ba0 f21 isAsynch false #txt
Ba0 f21 isInnerRd false #txt
Ba0 f21 userContext '* ' #txt
Ba0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>dossier
verification</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f21 264 618 112 44 -29 -16 #rect
Ba0 f21 @|RichDialogIcon #fIcon
Ba0 f23 type workflow.businessdata.Data #txt
Ba0 f23 593 625 30 30 0 15 #rect
Ba0 f23 @|EndIcon #fIcon
Ba0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This use case highlights the handling of the Business Data over a Task Switch. The important point is, 
that the process data only holds the ID of the Business Data. The Business Data is loaded from the repo 
with the stored ID after the Task Switch. This is required, because the Business Data references a different 
instance after the Task Switch (save point). 

E.g. the following script is exectued after a Task Switch and works as expected:
  // load the related Business Data with id
  out.myBusinessData = ivy.repo.find(in.myId, MyBusinessData.class);
  // modify Business Data
  out.myBusinessData.setTitle("Changed");
  // update the loaded Business Data
  ivy.repo.update(out.myBusinessData);

E.g. the following script is exectued after a Task Switch and does not work as expected, because 
the Business Data from the process data is used, without loading it before:
  // use the stored Business Data in the process data
  out.myBusinessData = in.myBusinessData;
  // modify Business Data
  out.myBusinessData.setTitle("Changed");
  // will store a new entry of the Business Data and will NOT update it
  ivy.repo.update(out.myBusinessData);
  
</name>
        <nameStyle>364,7
2,7
80,5,7
1,7
44,3,7
213,3,7
175,5,7
278,3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f30 72 714 592 396 -292 -190 #rect
Ba0 f30 @|IBIcon #fIcon
Ba0 f32 368 714 320 662 #arcP
Ba0 f28 targetWindow NEW:card: #txt
Ba0 f28 targetDisplay TOP #txt
Ba0 f28 richDialogId workflow.businessdata.BusinessDataDossierBrowser #txt
Ba0 f28 startMethod start(String) #txt
Ba0 f28 type workflow.businessdata.Data #txt
Ba0 f28 requestActionDecl '<String id> param;' #txt
Ba0 f28 requestMappingAction 'param.id="";
' #txt
Ba0 f28 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f28 responseMappingAction 'out=in;
' #txt
Ba0 f28 windowConfiguration '* ' #txt
Ba0 f28 isAsynch false #txt
Ba0 f28 isInnerRd false #txt
Ba0 f28 userContext '* ' #txt
Ba0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f28 424 618 112 44 -22 -7 #rect
Ba0 f28 @|RichDialogIcon #fIcon
Ba0 f29 expr out #txt
Ba0 f29 376 640 424 640 #arcP
Ba0 f27 expr out #txt
Ba0 f27 536 640 593 640 #arcP
Ba0 f31 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f31 actionTable 'out=in1;
' #txt
Ba0 f31 outTypes "workflow.businessdata.Data" #txt
Ba0 f31 outLinks "TaskA.ivp" #txt
Ba0 f31 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Verification of Person <%\=ivy.repo.find(in1.id, workflow.businessdata.Dossier.class).name%>
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Ba0 f31 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Verification of Person <%=ivy.repo.find(in1.id, workflow.businessdata.Dossier.class).name%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Ba0 f31 type workflow.businessdata.Data #txt
Ba0 f31 template "" #txt
Ba0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verification task</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f31 177 625 30 30 -43 -33 #rect
Ba0 f31 @|TaskSwitchSimpleIcon #fIcon
Ba0 f34 expr data #txt
Ba0 f34 outCond ivp=="TaskA.ivp" #txt
Ba0 f34 207 640 264 640 #arcP
Ba0 f19 outLink verifyDossier.ivp #txt
Ba0 f19 type workflow.businessdata.Data #txt
Ba0 f19 inParamDecl '<java.lang.String id> param;' #txt
Ba0 f19 inParamTable 'out.id=param.id;
' #txt
Ba0 f19 actionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f19 guid 156DA9F04C668F05 #txt
Ba0 f19 requestEnabled true #txt
Ba0 f19 triggerEnabled false #txt
Ba0 f19 callSignature verifyDossier(String) #txt
Ba0 f19 persist false #txt
Ba0 f19 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ba0 f19 showInStartList 0 #txt
Ba0 f19 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ba0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verifyDossier.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f19 @C|.responsibility Everybody #txt
Ba0 f19 81 625 30 30 -44 17 #rect
Ba0 f19 @|StartRequestIcon #fIcon
Ba0 f22 expr out #txt
Ba0 f22 type workflow.businessdata.Data #txt
Ba0 f22 var in1 #txt
Ba0 f22 111 640 177 640 #arcP
>Proto Ba0 .type workflow.businessdata.Data #txt
>Proto Ba0 .processKind NORMAL #txt
>Proto Ba0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ba0 0 0 32 24 18 0 #rect
>Proto Ba0 @|BIcon #fIcon
Ba0 f11 mainOut f14 tail #connect
Ba0 f14 head f12 mainIn #connect
Ba0 f4 mainOut f6 tail #connect
Ba0 f6 head f3 mainIn #connect
Ba0 f3 mainOut f24 tail #connect
Ba0 f24 head f18 mainIn #connect
Ba0 f18 mainOut f17 tail #connect
Ba0 f17 head f8 mainIn #connect
Ba0 f10 mainOut f26 tail #connect
Ba0 f26 head f25 mainIn #connect
Ba0 f25 mainOut f13 tail #connect
Ba0 f13 head f11 mainIn #connect
Ba0 f0 mainOut f15 tail #connect
Ba0 f15 head f5 mainIn #connect
Ba0 f7 mainOut f9 tail #connect
Ba0 f9 head f5 mainIn #connect
Ba0 f5 mainOut f16 tail #connect
Ba0 f16 head f11 mainIn #connect
Ba0 f30 ao f32 tail #connect
Ba0 f32 head f21 @CG|ai #connect
Ba0 f21 mainOut f29 tail #connect
Ba0 f29 head f28 mainIn #connect
Ba0 f28 mainOut f27 tail #connect
Ba0 f27 head f23 mainIn #connect
Ba0 f31 out f34 tail #connect
Ba0 f34 head f21 mainIn #connect
Ba0 f19 mainOut f22 tail #connect
Ba0 f22 head f31 in #connect
