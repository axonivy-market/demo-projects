[Ivy]
[>Created: Mon Mar 08 11:08:26 CET 2010]
125016DE17A534EB 3.14 #module
>Proto >Proto Collection #zClass
Tt0 Tasklist Big #zClass
Tt0 B #cInfo
Tt0 #process
Tt0 @AnnotationInP-0n ai ai #zField
Tt0 @TextInP .resExport .resExport #zField
Tt0 @TextInP .type .type #zField
Tt0 @TextInP .processKind .processKind #zField
Tt0 @TextInP .xml .xml #zField
Tt0 @TextInP .responsibility .responsibility #zField
Tt0 @MessageFlowInP-0n messageIn messageIn #zField
Tt0 @MessageFlowOutP-0n messageOut messageOut #zField
Tt0 @EndTask f5 '' #zField
Tt0 @GridStep f0 '' #zField
Tt0 @Page f3 '' #zField
Tt0 @StartRequest f1 '' #zField
Tt0 @PushWFArc f6 '' #zField
Tt0 @Page f23 '' #zField
Tt0 @GridStep f25 '' #zField
Tt0 @PushWFArc f26 '' #zField
Tt0 @PushWFArc f24 '' #zField
Tt0 @PushWFArc f27 '' #zField
Tt0 @PushWFArc f30 '' #zField
Tt0 @Page f4 '' #zField
Tt0 @PushWFArc f7 '' #zField
Tt0 @GridStep f8 '' #zField
Tt0 @Page f11 '' #zField
Tt0 @GridStep f12 '' #zField
Tt0 @PushWFArc f13 '' #zField
Tt0 @PushWFArc f33 '' #zField
Tt0 @PushWFArc f29 '' #zField
Tt0 @PushWFArc f9 '' #zField
Tt0 @PushWFArc f10 '' #zField
Tt0 @PushWFArc f28 '' #zField
Tt0 @PushWFArc f31 '' #zField
Tt0 @StartRequest f32 '' #zField
Tt0 @CallSub f2 '' #zField
Tt0 @PushWFArc f14 '' #zField
Tt0 @PushWFArc f15 '' #zField
Tt0 @CallSub f16 '' #zField
Tt0 @PushWFArc f17 '' #zField
Tt0 @EndTask f18 '' #zField
Tt0 @Page f19 '' #zField
Tt0 @GridStep f20 '' #zField
Tt0 @PushWFArc f21 '' #zField
Tt0 @PushWFArc f22 '' #zField
Tt0 @PushWFArc f34 '' #zField
>Proto Tt0 Tt0 Tasklist #zField
Tt0 f5 type htmlwfui.Data #txt
Tt0 f5 339 539 26 26 14 0 #rect
Tt0 f5 @|EndIcon #fIcon
Tt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f0 actionTable 'out=in;
' #txt
Tt0 f0 actionCode 'import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;

IQueryResult queryResult  = ivy.session.findWorkTasks(null, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
          0, 25, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));

List<ITask> tasks = queryResult.getResultList();

out.tasks = tasks;' #txt
Tt0 f0 type htmlwfui.Data #txt
Tt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect tasks </name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f0 334 196 36 24 28 -12 #rect
Tt0 f0 @|StepIcon #fIcon
Tt0 f3 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f3 outLinks "LinkA.ivp","LinkB.ivp" #txt
Tt0 f3 template "TaskListJsp.ivd" #txt
Tt0 f3 type htmlwfui.Data #txt
Tt0 f3 skipLink skip.ivp #txt
Tt0 f3 sortLink sort.ivp #txt
Tt0 f3 templateWizard '#
#Fri Dec 04 16:46:21 CET 2009
' #txt
Tt0 f3 pageArchivingActivated false #txt
Tt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Tasklist</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f3 @C|.responsibility Everybody #txt
Tt0 f3 334 292 36 25 23 -4 #rect
Tt0 f3 @|PageIcon #fIcon
Tt0 f1 outLink start1.ivp #txt
Tt0 f1 type htmlwfui.Data #txt
Tt0 f1 actionDecl 'htmlwfui.Data out;' #txt
Tt0 f1 requestEnabled true #txt
Tt0 f1 triggerEnabled false #txt
Tt0 f1 callSignature start1() #txt
Tt0 f1 startName 'Start Task List' #txt
Tt0 f1 taskData '#
#Mon Mar 08 10:38:27 CET 2010
.DESC=
.NAM=Start Task List
' #txt
Tt0 f1 caseData '#
#Fri Dec 04 11:38:25 CET 2009
subType.code=
businessMilestone.timestamp=
mainContact.id=
mainContact.name=
processCategory.name=
processCategory.code=
businessPriority=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
businessObject.name=
type.code=
businessObject.code=
correspondent.id=
case.name=
mainContact.folder.id=
subType.name=
case.description=
' #txt
Tt0 f1 showInStartList 1 #txt
Tt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startTaskList</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f1 @C|.responsibility Everybody #txt
Tt0 f1 339 35 26 26 14 0 #rect
Tt0 f1 @|StartRequestIcon #fIcon
Tt0 f6 expr data #txt
Tt0 f6 outCond ivp=="LinkA.ivp" #txt
Tt0 f6 352 316 352 539 #arcP
Tt0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f23 outLinks "LinkA.ivp","LinkB.ivp","LinkC.ivp" #txt
Tt0 f23 template "Taskdetails.ivd" #txt
Tt0 f23 type htmlwfui.Data #txt
Tt0 f23 skipLink skip.ivp #txt
Tt0 f23 sortLink sort.ivp #txt
Tt0 f23 templateWizard '#
#Tue Jan 19 16:16:56 CET 2010
' #txt
Tt0 f23 pageArchivingActivated false #txt
Tt0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Taskdetails</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f23 @C|.responsibility Everybody #txt
Tt0 f23 174 348 36 24 17 -20 #rect
Tt0 f23 @|PageIcon #fIcon
Tt0 f25 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f25 actionTable 'out=in.clone();
' #txt
Tt0 f25 actionCode 'for(int i = 0; i < in.tasks.size(); i++){
	if(in.tmpTaskId == in.tasks.get(i).getIdentifier()){
		out.tmpTask = in.tasks.get(i);
		break;
	}
}' #txt
Tt0 f25 type htmlwfui.Data #txt
Tt0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Task
Details</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f25 246 292 36 24 -22 -50 #rect
Tt0 f25 @|StepIcon #fIcon
Tt0 f26 expr data #txt
Tt0 f26 outCond ivp=="LinkB.ivp" #txt
Tt0 f26 334 303 282 304 #arcP
Tt0 f26 0 0.8226392979110723 0 0 #arcLabel
Tt0 f24 expr out #txt
Tt0 f24 246 304 192 348 #arcP
Tt0 f24 1 192 304 #addKink
Tt0 f24 1 0.054577764944474576 0 0 #arcLabel
Tt0 f27 expr data #txt
Tt0 f27 outCond ivp=="LinkA.ivp" #txt
Tt0 f27 210 360 341 316 #arcP
Tt0 f27 1 304 360 #addKink
Tt0 f27 0 0.837891379417639 0 0 #arcLabel
Tt0 f30 expr out #txt
Tt0 f30 352 220 352 291 #arcP
Tt0 f4 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f4 outLinks "LinkA.ivp","LinkB.ivp" #txt
Tt0 f4 template "Delegieren.ivd" #txt
Tt0 f4 type htmlwfui.Data #txt
Tt0 f4 skipLink skip.ivp #txt
Tt0 f4 sortLink sort.ivp #txt
Tt0 f4 templateWizard '#
#Wed Nov 25 14:05:45 CET 2009
' #txt
Tt0 f4 pageArchivingActivated false #txt
Tt0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Activator
setzen</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f4 @C|.responsibility Everybody #txt
Tt0 f4 102 412 36 24 11 12 #rect
Tt0 f4 @|PageIcon #fIcon
Tt0 f7 expr data #txt
Tt0 f7 outCond ivp=="LinkB.ivp" #txt
Tt0 f7 174 364 120 412 #arcP
Tt0 f7 1 120 376 #addKink
Tt0 f7 1 0.10743839572712703 0 0 #arcLabel
Tt0 f8 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f8 actionTable 'out=in.clone();
' #txt
Tt0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;
if(in.delegateType.equals("role")){
	IRole role = ivy.wf.getSecurityContext().findRole(in.delegateRole);
	out.tmpTask.setActivator(role);
}else{
	IUser user = ivy.wf.getSecurityContext().findUser(in.delegateUser);
	out.tmpTask.setActivator(user);
}' #txt
Tt0 f8 type htmlwfui.Data #txt
Tt0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Tt0 f8 102 484 36 24 20 -2 #rect
Tt0 f8 @|StepIcon #fIcon
Tt0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
Tt0 f11 template "addBemerkung.ivd" #txt
Tt0 f11 type htmlwfui.Data #txt
Tt0 f11 skipLink skip.ivp #txt
Tt0 f11 sortLink sort.ivp #txt
Tt0 f11 templateWizard '#
#Wed Nov 25 16:24:28 CET 2009
' #txt
Tt0 f11 pageArchivingActivated false #txt
Tt0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Bemerkung
hinzufügen</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f11 @C|.responsibility Everybody #txt
Tt0 f11 246 412 36 24 9 -45 #rect
Tt0 f11 @|PageIcon #fIcon
Tt0 f12 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f12 actionTable 'out=in.clone();
' #txt
Tt0 f12 actionCode 'if(in.noteFor.equals("task")){
	in.tmpTask.createNote(in.wfSession,in.note);
}else{
	in.tmpTask.getCase().createNote(in.wfSession,in.note);
}' #txt
Tt0 f12 type htmlwfui.Data #txt
Tt0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Tt0 f12 246 484 36 24 20 -2 #rect
Tt0 f12 @|StepIcon #fIcon
Tt0 f13 expr data #txt
Tt0 f13 outCond ivp=="LinkC.ivp" #txt
Tt0 f13 210 364 264 412 #arcP
Tt0 f13 1 264 376 #addKink
Tt0 f13 0 0.7893231155102186 0 0 #arcLabel
Tt0 f33 expr out #txt
Tt0 f33 264 508 174 360 #arcP
Tt0 f33 1 264 528 #addKink
Tt0 f33 2 80 528 #addKink
Tt0 f33 3 80 360 #addKink
Tt0 f33 1 0.8699932044237031 0 0 #arcLabel
Tt0 f29 expr out #txt
Tt0 f29 120 508 174 360 #arcP
Tt0 f29 1 120 528 #addKink
Tt0 f29 2 80 528 #addKink
Tt0 f29 3 80 360 #addKink
Tt0 f29 2 0.3712654627482384 0 0 #arcLabel
Tt0 f9 expr data #txt
Tt0 f9 outCond ivp=="LinkA.ivp" #txt
Tt0 f9 120 436 120 484 #arcP
Tt0 f10 expr data #txt
Tt0 f10 outCond ivp=="LinkB.ivp" #txt
Tt0 f10 138 424 192 372 #arcP
Tt0 f10 1 192 424 #addKink
Tt0 f10 0 0.952488998965412 0 0 #arcLabel
Tt0 f28 expr data #txt
Tt0 f28 outCond ivp=="LinkA.ivp" #txt
Tt0 f28 264 436 264 484 #arcP
Tt0 f31 expr data #txt
Tt0 f31 outCond ivp=="LinkB.ivp" #txt
Tt0 f31 246 424 192 372 #arcP
Tt0 f31 1 192 424 #addKink
Tt0 f31 0 0.947213595499958 0 0 #arcLabel
Tt0 f32 outLink start2.ivp #txt
Tt0 f32 type htmlwfui.Data #txt
Tt0 f32 actionDecl 'htmlwfui.Data out;' #txt
Tt0 f32 requestEnabled true #txt
Tt0 f32 triggerEnabled false #txt
Tt0 f32 callSignature start2() #txt
Tt0 f32 startName 'Start Prozess List ' #txt
Tt0 f32 taskData '#
#Mon Mar 08 10:38:27 CET 2010
.DESC=
.NAM=Start Prozess List 
' #txt
Tt0 f32 caseData '#
#Fri Dec 04 11:43:48 CET 2009
subType.code=
businessMilestone.timestamp=
mainContact.id=
mainContact.name=
processCategory.name=
processCategory.code=
businessPriority=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
type.code=
businessObject.name=
correspondent.id=
businessObject.code=
case.name=
mainContact.folder.id=
case.description=
subType.name=
' #txt
Tt0 f32 showInStartList 1 #txt
Tt0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startProcessList</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f32 @C|.responsibility Everybody #txt
Tt0 f32 539 35 26 26 14 0 #rect
Tt0 f32 @|StartRequestIcon #fIcon
Tt0 f2 type htmlwfui.Data #txt
Tt0 f2 processCall 'Functional Processes/LoginSequence:check Login(htmlwfui.Data)' #txt
Tt0 f2 doCall true #txt
Tt0 f2 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tt0 f2 requestMappingAction 'param.in=in;
' #txt
Tt0 f2 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f2 responseMappingAction 'out=result.out;
' #txt
Tt0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Loging</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f2 334 108 36 24 20 -2 #rect
Tt0 f2 @|CallSubIcon #fIcon
Tt0 f14 expr out #txt
Tt0 f14 352 61 352 108 #arcP
Tt0 f15 expr out #txt
Tt0 f15 352 132 352 196 #arcP
Tt0 f16 type htmlwfui.Data #txt
Tt0 f16 processCall 'Functional Processes/LoginSequence:check Login(htmlwfui.Data)' #txt
Tt0 f16 doCall true #txt
Tt0 f16 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tt0 f16 requestMappingAction 'param.in=in;
' #txt
Tt0 f16 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f16 responseMappingAction 'out=result.out;
' #txt
Tt0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f16 534 108 36 24 20 -2 #rect
Tt0 f16 @|CallSubIcon #fIcon
Tt0 f17 expr out #txt
Tt0 f17 552 61 552 108 #arcP
Tt0 f18 type htmlwfui.Data #txt
Tt0 f18 539 539 26 26 14 0 #rect
Tt0 f18 @|EndIcon #fIcon
Tt0 f19 outTypes "htmlwfui.Data" #txt
Tt0 f19 outLinks "LinkA.ivp" #txt
Tt0 f19 template "StartListJsp.ivd" #txt
Tt0 f19 type htmlwfui.Data #txt
Tt0 f19 skipLink skip.ivp #txt
Tt0 f19 sortLink sort.ivp #txt
Tt0 f19 templateWizard '#
#Fri Dec 04 14:40:18 CET 2009
' #txt
Tt0 f19 pageArchivingActivated false #txt
Tt0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Process startlist</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f19 @C|.responsibility Everybody #txt
Tt0 f19 534 292 36 25 20 -2 #rect
Tt0 f19 @|PageIcon #fIcon
Tt0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f20 actionTable 'out=in;
' #txt
Tt0 f20 actionCode 'out.starts = ivy.session.getStartableProcessStarts();' #txt
Tt0 f20 type htmlwfui.Data #txt
Tt0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processstarts</name>
        <nameStyle>21,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f20 534 196 36 24 28 -12 #rect
Tt0 f20 @|StepIcon #fIcon
Tt0 f21 expr data #txt
Tt0 f21 outCond ivp=="LinkA.ivp" #txt
Tt0 f21 552 316 552 539 #arcP
Tt0 f22 expr out #txt
Tt0 f22 552 220 552 291 #arcP
Tt0 f34 expr out #txt
Tt0 f34 552 132 552 196 #arcP
>Proto Tt0 .type htmlwfui.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f3 out f6 tail #connect
Tt0 f6 head f5 mainIn #connect
Tt0 f3 out f26 tail #connect
Tt0 f26 head f25 mainIn #connect
Tt0 f25 mainOut f24 tail #connect
Tt0 f24 head f23 mainIn #connect
Tt0 f23 out f27 tail #connect
Tt0 f27 head f3 mainIn #connect
Tt0 f0 mainOut f30 tail #connect
Tt0 f30 head f3 mainIn #connect
Tt0 f23 out f7 tail #connect
Tt0 f7 head f4 mainIn #connect
Tt0 f23 out f13 tail #connect
Tt0 f13 head f11 mainIn #connect
Tt0 f12 mainOut f33 tail #connect
Tt0 f33 head f23 mainIn #connect
Tt0 f8 mainOut f29 tail #connect
Tt0 f29 head f23 mainIn #connect
Tt0 f4 out f9 tail #connect
Tt0 f9 head f8 mainIn #connect
Tt0 f4 out f10 tail #connect
Tt0 f10 head f23 mainIn #connect
Tt0 f11 out f28 tail #connect
Tt0 f28 head f12 mainIn #connect
Tt0 f11 out f31 tail #connect
Tt0 f31 head f23 mainIn #connect
Tt0 f1 mainOut f14 tail #connect
Tt0 f14 head f2 mainIn #connect
Tt0 f2 mainOut f15 tail #connect
Tt0 f15 head f0 mainIn #connect
Tt0 f32 mainOut f17 tail #connect
Tt0 f17 head f16 mainIn #connect
Tt0 f19 out f21 tail #connect
Tt0 f21 head f18 mainIn #connect
Tt0 f20 mainOut f22 tail #connect
Tt0 f22 head f19 mainIn #connect
Tt0 f16 mainOut f34 tail #connect
Tt0 f34 head f20 mainIn #connect
