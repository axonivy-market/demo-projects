[Ivy]
[>Created: Thu Feb 07 14:20:08 CET 2013]
12C97DB1B1EA5971 3.17 #module
>Proto >Proto Collection #zClass
Rt0 CaseList Big #zClass
Rt0 B #cInfo
Rt0 #process
Rt0 @TextInP .resExport .resExport #zField
Rt0 @TextInP .type .type #zField
Rt0 @TextInP .processKind .processKind #zField
Rt0 @AnnotationInP-0n ai ai #zField
Rt0 @TextInP .xml .xml #zField
Rt0 @TextInP .responsibility .responsibility #zField
Rt0 @CallSub f6 '' #zField
Rt0 @StartRequest f0 '' #zField
Rt0 @StartRequest f12 '' #zField
Rt0 @CallSub f31 '' #zField
Rt0 @CallSub f30 '' #zField
Rt0 @CallSub f37 '' #zField
Rt0 @GridStep f38 '' #zField
Rt0 @PushWFArc f39 '' #zField
Rt0 @GridStep f40 '' #zField
Rt0 @PushWFArc f41 '' #zField
Rt0 @Alternative f3 '' #zField
Rt0 @RichDialog f45 '' #zField
Rt0 @GridStep f53 '' #zField
Rt0 @PushWFArc f50 '' #zField
Rt0 @PushWFArc f55 '' #zField
Rt0 @PushWFArc f56 '' #zField
Rt0 @PushWFArc f7 '' #zField
Rt0 @PushWFArc f1 '' #zField
Rt0 @PushWFArc f2 '' #zField
Rt0 @RichDialog f4 '' #zField
Rt0 @PushWFArc f5 '' #zField
Rt0 @PushWFArc f8 '' #zField
Rt0 @PushWFArc f9 '' #zField
Rt0 @RichDialog f10 '' #zField
Rt0 @PushWFArc f11 '' #zField
Rt0 @PushWFArc f13 '' #zField
Rt0 @PushWFArc f14 '' #zField
Rt0 @PushWFArc f15 '' #zField
Rt0 @PushWFArc f16 '' #zField
Rt0 @PushWFArc f17 '' #zField
>Proto Rt0 Rt0 CaseList #zField
Rt0 f6 type htmlwfui.Data #txt
Rt0 f6 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Rt0 f6 doCall true #txt
Rt0 f6 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f6 requestMappingAction 'param.in=in;
' #txt
Rt0 f6 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f6 responseMappingAction 'out=result.out;
' #txt
Rt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f6 158 156 36 24 20 -2 #rect
Rt0 f6 @|CallSubIcon #fIcon
Rt0 f0 outLink start1.ivp #txt
Rt0 f0 type htmlwfui.Data #txt
Rt0 f0 inParamDecl '<> param;' #txt
Rt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f0 guid 12C97DD6D7C6E230 #txt
Rt0 f0 requestEnabled true #txt
Rt0 f0 triggerEnabled false #txt
Rt0 f0 callSignature start1() #txt
Rt0 f0 persist false #txt
Rt0 f0 taskData '#
#Mon Feb 14 09:59:10 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rt0 f0 caseData '#
#Mon Feb 14 09:59:10 CET 2011
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Rt0 f0 showInStartList 0 #txt
Rt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f0 @C|.responsibility Everybody #txt
Rt0 f0 67 27 26 26 14 0 #rect
Rt0 f0 @|StartRequestIcon #fIcon
Rt0 f12 outLink start2.ivp #txt
Rt0 f12 type htmlwfui.Data #txt
Rt0 f12 inParamDecl '<> param;' #txt
Rt0 f12 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f12 guid 12CBAD990D2F8EFA #txt
Rt0 f12 requestEnabled true #txt
Rt0 f12 triggerEnabled false #txt
Rt0 f12 callSignature start2() #txt
Rt0 f12 persist false #txt
Rt0 f12 taskData '#
#Mon Feb 14 09:59:24 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rt0 f12 caseData '#
#Mon Feb 14 09:59:24 CET 2011
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Rt0 f12 showInStartList 0 #txt
Rt0 f12 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rt0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f12 @C|.responsibility Everybody #txt
Rt0 f12 259 27 26 26 14 0 #rect
Rt0 f12 @|StartRequestIcon #fIcon
Rt0 f31 type htmlwfui.Data #txt
Rt0 f31 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
Rt0 f31 doCall true #txt
Rt0 f31 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f31 requestMappingAction 'param.in=in;
param.in.noteFor="case";
' #txt
Rt0 f31 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f31 responseMappingAction 'out=in;
' #txt
Rt0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f31 86 420 36 24 0 12 #rect
Rt0 f31 @|CallSubIcon #fIcon
Rt0 f30 type htmlwfui.Data #txt
Rt0 f30 processCall 'Functional Processes/TaskDetail:call(htmlwfui.Data)' #txt
Rt0 f30 doCall true #txt
Rt0 f30 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f30 requestMappingAction 'param.in=in;
param.in.tmpTask=in.tasks.get(in.temp.n);
' #txt
Rt0 f30 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f30 responseMappingAction 'out=in;
out.tmpTask=null;
' #txt
Rt0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f30 158 420 36 24 0 12 #rect
Rt0 f30 @|CallSubIcon #fIcon
Rt0 f37 type htmlwfui.Data #txt
Rt0 f37 processCall 'Functional Processes/PageArchive:call(htmlwfui.Data)' #txt
Rt0 f37 doCall true #txt
Rt0 f37 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f37 requestMappingAction 'param.in=in;
' #txt
Rt0 f37 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f37 responseMappingAction 'out=in;
out.pageArchives=null;
' #txt
Rt0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PageArchive</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f37 230 420 36 24 0 12 #rect
Rt0 f37 @|CallSubIcon #fIcon
Rt0 f38 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f38 actionTable 'out=in;
out.temp.caption="my_cases";
' #txt
Rt0 f38 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

out.temp.statFilter = CaseState.RUNNING.toString();
out.temp.catFilter = ivy.cms.co("/labels/all");
out.temp.procFilter = ivy.cms.co("/labels/all");

out.temp.categories = [ivy.cms.co("/labels/all")];
out.temp.processes.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.processesCombo.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.states = [ivy.cms.co("/labels/all"), CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];
' #txt
Rt0 f38 type htmlwfui.Data #txt
Rt0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init my_cases</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f38 62 76 36 24 24 -11 #rect
Rt0 f38 @|StepIcon #fIcon
Rt0 f39 expr out #txt
Rt0 f39 80 53 80 76 #arcP
Rt0 f39 0 0.6514195840404282 0 0 #arcLabel
Rt0 f40 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f40 actionTable 'out=in;
out.temp.caption="admin_cases";
' #txt
Rt0 f40 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

out.temp.statFilter = CaseState.RUNNING.toString();
out.temp.catFilter = ivy.cms.co("/labels/all");
out.temp.procFilter = ivy.cms.co("/labels/all");

out.temp.categories = [ivy.cms.co("/labels/all")];
out.temp.processes.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.processesCombo.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.states = [ivy.cms.co("/labels/all"), CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];' #txt
Rt0 f40 type htmlwfui.Data #txt
Rt0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init admin_cases</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f40 254 76 36 24 20 -2 #rect
Rt0 f40 @|StepIcon #fIcon
Rt0 f41 expr out #txt
Rt0 f41 272 53 272 76 #arcP
Rt0 f3 type htmlwfui.Data #txt
Rt0 f3 162 362 28 28 14 0 #rect
Rt0 f3 @|AlternativeIcon #fIcon
Rt0 f45 targetWindow NEW:card: #txt
Rt0 f45 targetDisplay TOP #txt
Rt0 f45 richDialogId htmlwfui.CaseDelete #txt
Rt0 f45 startMethod start(htmlwfui.Data) #txt
Rt0 f45 type htmlwfui.Data #txt
Rt0 f45 requestActionDecl '<htmlwfui.Data data> param;' #txt
Rt0 f45 requestMappingAction 'param.data=in;
' #txt
Rt0 f45 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f45 responseMappingAction 'out=in;
' #txt
Rt0 f45 windowConfiguration '* ' #txt
Rt0 f45 isAsynch false #txt
Rt0 f45 isInnerRd false #txt
Rt0 f45 userContext '* ' #txt
Rt0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Delete</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f45 110 364 36 24 -68 12 #rect
Rt0 f45 @|RichDialogIcon #fIcon
Rt0 f53 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f53 actionTable 'out=in;
out.option="";
' #txt
Rt0 f53 type htmlwfui.Data #txt
Rt0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f53 158 268 36 24 20 -2 #rect
Rt0 f53 @|StepIcon #fIcon
Rt0 f50 expr in #txt
Rt0 f50 outCond 'in.option == "deleteCase"' #txt
Rt0 f50 162 376 146 376 #arcP
Rt0 f55 expr in #txt
Rt0 f55 outCond 'in.option == "taskDetail"' #txt
Rt0 f55 176 390 176 420 #arcP
Rt0 f56 expr in #txt
Rt0 f56 outCond 'in.option == "showFormArchive"' #txt
Rt0 f56 184 382 233 420 #arcP
Rt0 f7 expr in #txt
Rt0 f7 outCond 'in.option == "addNote"' #txt
Rt0 f7 168 382 119 420 #arcP
Rt0 f7 0 0.49999999999999994 0 0 #arcLabel
Rt0 f1 expr out #txt
Rt0 f1 258 100 190 156 #arcP
Rt0 f2 expr out #txt
Rt0 f2 94 100 162 156 #arcP
Rt0 f2 0 0.4999999999999999 0 0 #arcLabel
Rt0 f4 targetWindow NEW:card: #txt
Rt0 f4 targetDisplay TOP #txt
Rt0 f4 richDialogId htmlwfui.CasesList #txt
Rt0 f4 startMethod start(htmlwfui.Data) #txt
Rt0 f4 type htmlwfui.Data #txt
Rt0 f4 requestActionDecl '<htmlwfui.Data data> param;' #txt
Rt0 f4 requestMappingAction 'param.data=in;
' #txt
Rt0 f4 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f4 responseMappingAction 'out=in;
' #txt
Rt0 f4 windowConfiguration '* ' #txt
Rt0 f4 isAsynch false #txt
Rt0 f4 isInnerRd false #txt
Rt0 f4 userContext '* ' #txt
Rt0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CasesList</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f4 158 212 36 24 20 -2 #rect
Rt0 f4 @|RichDialogIcon #fIcon
Rt0 f5 expr out #txt
Rt0 f5 176 180 176 212 #arcP
Rt0 f5 0 0.4785052269409655 0 0 #arcLabel
Rt0 f8 expr out #txt
Rt0 f8 176 236 176 268 #arcP
Rt0 f9 expr in #txt
Rt0 f9 190 376 194 224 #arcP
Rt0 f9 1 320 376 #addKink
Rt0 f9 2 320 224 #addKink
Rt0 f9 1 0.4861111111111111 0 0 #arcLabel
Rt0 f10 targetWindow NEW:card: #txt
Rt0 f10 targetDisplay TOP #txt
Rt0 f10 richDialogId htmlwfui.CaseDetail #txt
Rt0 f10 startMethod start(htmlwfui.Data) #txt
Rt0 f10 type htmlwfui.Data #txt
Rt0 f10 requestActionDecl '<htmlwfui.Data data> param;' #txt
Rt0 f10 requestMappingAction 'param.data=in;
' #txt
Rt0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f10 responseMappingAction 'out=in;
' #txt
Rt0 f10 windowConfiguration '* ' #txt
Rt0 f10 isAsynch false #txt
Rt0 f10 isInnerRd false #txt
Rt0 f10 userContext '* ' #txt
Rt0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseDetail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f10 158 324 36 24 20 -2 #rect
Rt0 f10 @|RichDialogIcon #fIcon
Rt0 f11 expr out #txt
Rt0 f11 176 292 176 324 #arcP
Rt0 f13 expr out #txt
Rt0 f13 176 348 176 362 #arcP
Rt0 f14 expr out #txt
Rt0 f14 104 444 158 336 #arcP
Rt0 f14 1 104 480 #addKink
Rt0 f14 2 56 480 #addKink
Rt0 f14 3 56 336 #addKink
Rt0 f14 1 0.5002556075158191 0 0 #arcLabel
Rt0 f15 expr out #txt
Rt0 f15 176 444 158 336 #arcP
Rt0 f15 1 176 480 #addKink
Rt0 f15 2 56 480 #addKink
Rt0 f15 3 56 336 #addKink
Rt0 f15 1 0.1118591843410363 0 0 #arcLabel
Rt0 f16 expr out #txt
Rt0 f16 248 444 158 336 #arcP
Rt0 f16 1 248 480 #addKink
Rt0 f16 2 56 480 #addKink
Rt0 f16 3 56 336 #addKink
Rt0 f16 0 0.8085495787990951 0 0 #arcLabel
Rt0 f17 expr out #txt
Rt0 f17 128 364 158 336 #arcP
Rt0 f17 1 128 336 #addKink
Rt0 f17 0 0.8866023801777045 0 0 #arcLabel
>Proto Rt0 .type htmlwfui.Data #txt
>Proto Rt0 .processKind NORMAL #txt
>Proto Rt0 0 0 32 24 18 0 #rect
>Proto Rt0 @|BIcon #fIcon
Rt0 f0 mainOut f39 tail #connect
Rt0 f39 head f38 mainIn #connect
Rt0 f12 mainOut f41 tail #connect
Rt0 f41 head f40 mainIn #connect
Rt0 f3 out f50 tail #connect
Rt0 f50 head f45 mainIn #connect
Rt0 f55 head f30 mainIn #connect
Rt0 f56 head f37 mainIn #connect
Rt0 f3 out f7 tail #connect
Rt0 f7 head f31 mainIn #connect
Rt0 f3 out f55 tail #connect
Rt0 f3 out f56 tail #connect
Rt0 f40 mainOut f1 tail #connect
Rt0 f1 head f6 mainIn #connect
Rt0 f38 mainOut f2 tail #connect
Rt0 f2 head f6 mainIn #connect
Rt0 f6 mainOut f5 tail #connect
Rt0 f5 head f4 mainIn #connect
Rt0 f4 mainOut f8 tail #connect
Rt0 f8 head f53 mainIn #connect
Rt0 f3 out f9 tail #connect
Rt0 f9 head f4 mainIn #connect
Rt0 f53 mainOut f11 tail #connect
Rt0 f11 head f10 mainIn #connect
Rt0 f10 mainOut f13 tail #connect
Rt0 f13 head f3 in #connect
Rt0 f31 mainOut f14 tail #connect
Rt0 f14 head f10 mainIn #connect
Rt0 f30 mainOut f15 tail #connect
Rt0 f15 head f10 mainIn #connect
Rt0 f37 mainOut f16 tail #connect
Rt0 f16 head f10 mainIn #connect
Rt0 f45 mainOut f17 tail #connect
Rt0 f17 head f10 mainIn #connect
