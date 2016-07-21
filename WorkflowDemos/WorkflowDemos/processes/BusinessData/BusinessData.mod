[Ivy]
[>Created: Thu Jul 21 12:10:48 CEST 2016]
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
Ba0 @PushWFArc f13 '' #zField
Ba0 @PushWFArc f14 '' #zField
Ba0 @GridStep f15 '' #zField
Ba0 @PushWFArc f16 '' #zField
Ba0 @GridStep f19 '' #zField
Ba0 @PushWFArc f20 '' #zField
Ba0 @PushWFArc f9 '' #zField
Ba0 @GridStep f21 '' #zField
Ba0 @PushWFArc f22 '' #zField
Ba0 @PushWFArc f23 '' #zField
Ba0 @PushWFArc f1 '' #zField
Ba0 @InfoButton f2 '' #zField
Ba0 @GridStep f3 '' #zField
Ba0 @StartRequest f4 '' #zField
Ba0 @PushWFArc f6 '' #zField
Ba0 @EndTask f8 '' #zField
Ba0 @RichDialog f18 '' #zField
Ba0 @PushWFArc f24 '' #zField
Ba0 @PushWFArc f17 '' #zField
>Proto Ba0 Ba0 BusinessData #zField
Ba0 f0 outLink create.ivp #txt
Ba0 f0 type workflow.business.data.Data #txt
Ba0 f0 inParamDecl '<> param;' #txt
Ba0 f0 actionDecl 'workflow.business.data.Data out;
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
Ba0 f0 showInStartList 1 #txt
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
Ba0 f0 81 273 30 30 -31 17 #rect
Ba0 f0 @|StartRequestIcon #fIcon
Ba0 f5 targetWindow NEW:card: #txt
Ba0 f5 targetDisplay TOP #txt
Ba0 f5 richDialogId workflow.business.data.BusinessDataDossierModifier #txt
Ba0 f5 startMethod start(workflow.business.data.Dossier) #txt
Ba0 f5 type workflow.business.data.Data #txt
Ba0 f5 requestActionDecl '<workflow.business.data.Dossier dossier> param;' #txt
Ba0 f5 requestMappingAction 'param.dossier=in.dossier;
' #txt
Ba0 f5 responseActionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f5 responseMappingAction 'out=in;
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
Ba0 f5 296 330 112 44 -20 -7 #rect
Ba0 f5 @|RichDialogIcon #fIcon
Ba0 f7 outLink update.ivp #txt
Ba0 f7 type workflow.business.data.Data #txt
Ba0 f7 inParamDecl '<java.lang.Number id> param;' #txt
Ba0 f7 inParamTable 'out.id=param.id;
' #txt
Ba0 f7 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f7 guid 155BB4329582E3C6 #txt
Ba0 f7 requestEnabled true #txt
Ba0 f7 triggerEnabled false #txt
Ba0 f7 callSignature update(Number) #txt
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
Ba0 f7 85 400 30 30 -33 17 #rect
Ba0 f7 @|StartRequestIcon #fIcon
Ba0 f10 outLink browse.ivp #txt
Ba0 f10 type workflow.business.data.Data #txt
Ba0 f10 inParamDecl '<> param;' #txt
Ba0 f10 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f10 guid 155BB4329582E3C6 #txt
Ba0 f10 requestEnabled true #txt
Ba0 f10 triggerEnabled false #txt
Ba0 f10 callSignature browse() #txt
Ba0 f10 persist false #txt
Ba0 f10 startName '5.1: Browse Dossiers' #txt
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
Ba0 f10 82 143 30 30 -33 17 #rect
Ba0 f10 @|StartRequestIcon #fIcon
Ba0 f11 targetWindow NEW:card: #txt
Ba0 f11 targetDisplay TOP #txt
Ba0 f11 richDialogId workflow.business.data.BusinessDataDossierBrowser #txt
Ba0 f11 startMethod start() #txt
Ba0 f11 type workflow.business.data.Data #txt
Ba0 f11 requestActionDecl '<> param;' #txt
Ba0 f11 responseActionDecl 'workflow.business.data.Data out;
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
Ba0 f11 169 136 112 44 -22 -7 #rect
Ba0 f11 @|RichDialogIcon #fIcon
Ba0 f12 type workflow.business.data.Data #txt
Ba0 f12 338 143 30 30 0 15 #rect
Ba0 f12 @|EndIcon #fIcon
Ba0 f13 expr out #txt
Ba0 f13 112 158 169 158 #arcP
Ba0 f14 expr out #txt
Ba0 f14 281 158 338 158 #arcP
Ba0 f15 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f15 actionTable 'out=in;
' #txt
Ba0 f15 actionCode 'import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;

BusinessDataRepository repo = BusinessDataRepository.get();

in.dossier.person.address.street;
in.businessData = repo.create(in.dossier);' #txt
Ba0 f15 type workflow.business.data.Data #txt
Ba0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f15 168 266 112 44 -20 -7 #rect
Ba0 f15 @|StepIcon #fIcon
Ba0 f16 expr out #txt
Ba0 f16 111 288 168 288 #arcP
Ba0 f19 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f19 actionTable 'out=in;
' #txt
Ba0 f19 actionCode 'import workflow.business.data.Dossier;
import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;

BusinessDataRepository repo = BusinessDataRepository.get();
in.businessData = repo.find(in.id, Dossier.class);
in.dossier = in.businessData.value() as Dossier;' #txt
Ba0 f19 type workflow.business.data.Data #txt
Ba0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f19 168 394 112 44 -13 -7 #rect
Ba0 f19 @|StepIcon #fIcon
Ba0 f20 expr out #txt
Ba0 f20 114 415 168 416 #arcP
Ba0 f9 expr out #txt
Ba0 f9 224 394 296 352 #arcP
Ba0 f9 1 224 352 #addKink
Ba0 f9 1 0.7322879153734736 0 0 #arcLabel
Ba0 f21 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f21 actionTable 'out=in;
' #txt
Ba0 f21 actionCode in.businessData.overwrite(); #txt
Ba0 f21 type workflow.business.data.Data #txt
Ba0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f21 456 330 112 44 -14 -7 #rect
Ba0 f21 @|StepIcon #fIcon
Ba0 f22 expr out #txt
Ba0 f22 408 352 456 352 #arcP
Ba0 f23 expr out #txt
Ba0 f23 224 310 296 352 #arcP
Ba0 f23 1 224 352 #addKink
Ba0 f23 1 0.3125 0 0 #arcLabel
Ba0 f1 expr out #txt
Ba0 f1 512 330 225 180 #arcP
Ba0 f1 1 512 224 #addKink
Ba0 f1 2 225 224 #addKink
Ba0 f1 2 0.17074705942848392 0 0 #arcLabel
Ba0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Business Data Demo (Preliminary):
- Stores and loads Business Data of type Dossier
Migration:
- Store some data and add a new field to the dossier type. it''s that easy</name>
        <nameStyle>167,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ba0 f2 64 16 464 96 -226 -30 #rect
Ba0 f2 @|IBIcon #fIcon
Ba0 f3 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f3 actionTable 'out=in;
' #txt
Ba0 f3 actionCode 'import workflow.business.data.Dossier;
import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;

BusinessDataRepository repo = BusinessDataRepository.get();
repo.find(in.id, Dossier.class).delete();' #txt
Ba0 f3 type workflow.business.data.Data #txt
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
Ba0 f4 outLink delete.ivp #txt
Ba0 f4 type workflow.business.data.Data #txt
Ba0 f4 inParamDecl '<java.lang.Number id> param;' #txt
Ba0 f4 inParamTable 'out.id=param.id;
' #txt
Ba0 f4 actionDecl 'workflow.business.data.Data out;
' #txt
Ba0 f4 guid 155BB4329582E3C6 #txt
Ba0 f4 requestEnabled true #txt
Ba0 f4 triggerEnabled false #txt
Ba0 f4 callSignature delete(Number) #txt
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
Ba0 f4 85 496 30 30 -30 17 #rect
Ba0 f4 @|StartRequestIcon #fIcon
Ba0 f6 expr out #txt
Ba0 f6 114 511 168 512 #arcP
Ba0 f8 type workflow.business.data.Data #txt
Ba0 f8 497 497 30 30 0 15 #rect
Ba0 f8 @|EndIcon #fIcon
Ba0 f18 targetWindow NEW:card: #txt
Ba0 f18 targetDisplay TOP #txt
Ba0 f18 richDialogId workflow.business.data.BusinessDataDossierBrowser #txt
Ba0 f18 startMethod start() #txt
Ba0 f18 type workflow.business.data.Data #txt
Ba0 f18 requestActionDecl '<> param;' #txt
Ba0 f18 responseActionDecl 'workflow.business.data.Data out;
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
Ba0 f18 328 490 112 44 -22 -7 #rect
Ba0 f18 @|RichDialogIcon #fIcon
Ba0 f24 expr out #txt
Ba0 f24 280 512 328 512 #arcP
Ba0 f17 expr out #txt
Ba0 f17 440 512 497 512 #arcP
>Proto Ba0 .type workflow.business.data.Data #txt
>Proto Ba0 .processKind NORMAL #txt
>Proto Ba0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ba0 0 0 32 24 18 0 #rect
>Proto Ba0 @|BIcon #fIcon
Ba0 f10 mainOut f13 tail #connect
Ba0 f13 head f11 mainIn #connect
Ba0 f11 mainOut f14 tail #connect
Ba0 f14 head f12 mainIn #connect
Ba0 f0 mainOut f16 tail #connect
Ba0 f16 head f15 mainIn #connect
Ba0 f7 mainOut f20 tail #connect
Ba0 f20 head f19 mainIn #connect
Ba0 f19 mainOut f9 tail #connect
Ba0 f9 head f5 mainIn #connect
Ba0 f5 mainOut f22 tail #connect
Ba0 f22 head f21 mainIn #connect
Ba0 f15 mainOut f23 tail #connect
Ba0 f23 head f5 mainIn #connect
Ba0 f21 mainOut f1 tail #connect
Ba0 f1 head f11 mainIn #connect
Ba0 f4 mainOut f6 tail #connect
Ba0 f6 head f3 mainIn #connect
Ba0 f3 mainOut f24 tail #connect
Ba0 f24 head f18 mainIn #connect
Ba0 f18 mainOut f17 tail #connect
Ba0 f17 head f8 mainIn #connect
