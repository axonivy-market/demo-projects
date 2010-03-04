[Ivy]
[>Created: Fri Feb 19 12:42:02 CET 2010]
125016DE17A534EB 3.13 #module
>Proto >Proto Collection #zClass
Tt0 Tasklist Big #zClass
Tt0 B #cInfo
Tt0 #process
1b0 '1 Sub' Big #zClass
1b0 B #cInfo
Tt0 1b0 1b0 '1 Sub' #zField
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
Tt0 @PushWFArc f30 '' #zField
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
Tt0 @PushWFArc f35 '' #zField
Tt0 @PushWFArc f36 '' #zField
>Proto Tt0 Tt0 Tasklist #zField
1b0 @AnnotationInP-0n ai ai #zField
1b0 @TextInP .resExport .resExport #zField
1b0 @TextInP .type .type #zField
1b0 @TextInP .processKind .processKind #zField
1b0 @TextInP .xml .xml #zField
1b0 @TextInP .responsibility .responsibility #zField
1b0 @MessageFlowInP-0n messageIn messageIn #zField
1b0 @MessageFlowOutP-0n messageOut messageOut #zField
1b0 @PushWFArc f24 '' #zField
1b0 @PushWFArc f28 '' #zField
1b0 @PushWFArc f13 '' #zField
1b0 @Page f4 '' #zField
1b0 @Page f23 '' #zField
1b0 @GridStep f8 '' #zField
1b0 @PushWFArc f33 '' #zField
1b0 @PushWFArc f31 '' #zField
1b0 @Page f11 '' #zField
1b0 @GridStep f12 '' #zField
1b0 @PushWFArc f7 '' #zField
1b0 @PushWFArc f10 '' #zField
1b0 @GridStep f25 '' #zField
1b0 @PushWFArc f9 '' #zField
1b0 @PushWFArc f29 '' #zField
1b0 @PushTrueWFInG-01 g0 '' #zField
1b0 @PushWFArc f0 '' #zField
1b0 @PushTrueWFOutG-01 g1 '' #zField
1b0 @PushWFArc f1 '' #zField
>Proto 1b0 1b0 '1 Sub' #zField
Tt0 1b0 .resExport export #txt
Tt0 1b0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>1 Details</name>
        <nameStyle>9,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 1b0 48 288 81 32 -24 -8 #rect
Tt0 1b0 @|BIcon #fIcon
Tt0 f5 type htmlwfui.Data #txt
Tt0 f5 203 387 26 26 14 0 #rect
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
Tt0 f0 198 196 36 24 28 -12 #rect
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
Tt0 f3 198 292 36 25 23 -4 #rect
Tt0 f3 @|PageIcon #fIcon
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
Tt0 f1 outLink start1.ivp #txt
Tt0 f1 type htmlwfui.Data #txt
Tt0 f1 template "" #txt
Tt0 f1 templateWizard '#
#Fri Dec 04 11:38:25 CET 2009
' #txt
Tt0 f1 taskData '#
#Fri Dec 04 11:38:25 CET 2009
.SHOW=1
.WFU=0
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
Tt0 f1 203 35 26 26 14 0 #rect
Tt0 f1 @|StartRequestIcon #fIcon
Tt0 f6 expr data #txt
Tt0 f6 outCond ivp=="LinkA.ivp" #txt
Tt0 f6 216 316 216 387 #arcP
Tt0 f30 expr out #txt
Tt0 f30 216 220 216 291 #arcP
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
Tt0 f32 outLink start2.ivp #txt
Tt0 f32 type htmlwfui.Data #txt
Tt0 f32 template "" #txt
Tt0 f32 templateWizard '#
#Fri Dec 04 11:43:48 CET 2009
' #txt
Tt0 f32 taskData '#
#Fri Dec 04 11:43:48 CET 2009
.SHOW=1
.WFU=0
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
Tt0 f32 403 35 26 26 14 0 #rect
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
Tt0 f2 198 108 36 24 20 -2 #rect
Tt0 f2 @|CallSubIcon #fIcon
Tt0 f14 expr out #txt
Tt0 f14 216 61 216 108 #arcP
Tt0 f15 expr out #txt
Tt0 f15 216 132 216 196 #arcP
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
Tt0 f16 398 108 36 24 20 -2 #rect
Tt0 f16 @|CallSubIcon #fIcon
Tt0 f17 expr out #txt
Tt0 f17 416 61 416 108 #arcP
Tt0 f18 type htmlwfui.Data #txt
Tt0 f18 403 387 26 26 14 0 #rect
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
Tt0 f19 398 292 36 25 20 -2 #rect
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
Tt0 f20 398 196 36 24 28 -12 #rect
Tt0 f20 @|StepIcon #fIcon
Tt0 f21 expr data #txt
Tt0 f21 outCond ivp=="LinkA.ivp" #txt
Tt0 f21 416 316 416 387 #arcP
Tt0 f22 expr out #txt
Tt0 f22 416 220 416 291 #arcP
Tt0 f34 expr out #txt
Tt0 f34 416 132 416 196 #arcP
Tt0 f35 expr data #txt
Tt0 f35 outCond ivp=="LinkB.ivp" #txt
Tt0 f35 198 303 128 304 #arcP
Tt0 f36 128 304 198 303 #arcP
>Proto Tt0 .type htmlwfui.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
1b0 f24 expr out #txt
1b0 f24 264 84 264 148 #arcP
1b0 f28 expr data #txt
1b0 f28 outCond ivp=="LinkA.ivp" #txt
1b0 f28 424 268 424 356 #arcP
1b0 f13 expr data #txt
1b0 f13 outCond ivp=="LinkC.ivp" #txt
1b0 f13 282 171 406 245 #arcP
1b0 f4 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
1b0 f4 outLinks "LinkA.ivp","LinkB.ivp" #txt
1b0 f4 template "Delegieren.ivd" #txt
1b0 f4 type htmlwfui.Data #txt
1b0 f4 skipLink skip.ivp #txt
1b0 f4 sortLink sort.ivp #txt
1b0 f4 templateWizard '#
#Wed Jan 20 08:41:53 CET 2010
' #txt
1b0 f4 pageArchivingActivated false #txt
1b0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delegate</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f4 @C|.responsibility Everybody #txt
1b0 f4 94 244 36 24 -78 -9 #rect
1b0 f4 @|PageIcon #fIcon
1b0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
1b0 f23 outLinks "LinkA.ivp","LinkB.ivp","LinkC.ivp" #txt
1b0 f23 template "Taskdetails.ivd" #txt
1b0 f23 type htmlwfui.Data #txt
1b0 f23 skipLink skip.ivp #txt
1b0 f23 sortLink sort.ivp #txt
1b0 f23 templateWizard '#
#Wed Jan 20 08:41:50 CET 2010
' #txt
1b0 f23 pageArchivingActivated false #txt
1b0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Taskdetails</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f23 @C|.responsibility Everybody #txt
1b0 f23 246 148 36 24 23 -25 #rect
1b0 f23 @|PageIcon #fIcon
1b0 f8 actionDecl 'htmlwfui.Data out;
' #txt
1b0 f8 actionTable 'out=in.clone();
' #txt
1b0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;
if(in.delegateType.equals("role")){
	IRole role = ivy.wf.getSecurityContext().findRole(in.delegateRole);
	out.tmpTask.setActivator(role);
}else{
	IUser user = ivy.wf.getSecurityContext().findUser(in.delegateUser);
	out.tmpTask.setActivator(user);
}' #txt
1b0 f8 type htmlwfui.Data #txt
1b0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f8 94 356 36 24 20 -2 #rect
1b0 f8 @|StepIcon #fIcon
1b0 f33 expr out #txt
1b0 f33 415 356 273 172 #arcP
1b0 f31 expr data #txt
1b0 f31 outCond ivp=="LinkB.ivp" #txt
1b0 f31 424 244 282 160 #arcP
1b0 f31 1 424 160 #addKink
1b0 f31 1 0.20450159886979147 0 0 #arcLabel
1b0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
1b0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
1b0 f11 template "addBemerkung.ivd" #txt
1b0 f11 type htmlwfui.Data #txt
1b0 f11 skipLink skip.ivp #txt
1b0 f11 sortLink sort.ivp #txt
1b0 f11 templateWizard '#
#Wed Jan 20 08:41:56 CET 2010
' #txt
1b0 f11 pageArchivingActivated false #txt
1b0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add Note</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f11 @C|.responsibility Everybody #txt
1b0 f11 406 244 36 24 25 -5 #rect
1b0 f11 @|PageIcon #fIcon
1b0 f12 actionDecl 'htmlwfui.Data out;
' #txt
1b0 f12 actionTable 'out=in.clone();
' #txt
1b0 f12 actionCode 'if(in.noteFor.equals("task")){
	in.tmpTask.createNote(in.wfSession,in.note);
}else{
	in.tmpTask.getCase().createNote(in.wfSession,in.note);
}' #txt
1b0 f12 type htmlwfui.Data #txt
1b0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f12 406 356 36 24 20 -2 #rect
1b0 f12 @|StepIcon #fIcon
1b0 f7 expr data #txt
1b0 f7 outCond ivp=="LinkB.ivp" #txt
1b0 f7 246 171 130 245 #arcP
1b0 f10 expr data #txt
1b0 f10 outCond ivp=="LinkB.ivp" #txt
1b0 f10 112 244 246 160 #arcP
1b0 f10 1 112 160 #addKink
1b0 f10 1 0.17688915281001222 0 0 #arcLabel
1b0 f25 actionDecl 'htmlwfui.Data out;
' #txt
1b0 f25 actionTable 'out=in.clone();
' #txt
1b0 f25 actionCode 'for(int i = 0; i < in.tasks.size(); i++){
	if(in.tmpTaskId == in.tasks.get(i).getIdentifier()){
		out.tmpTask = in.tasks.get(i);
		break;
	}
}' #txt
1b0 f25 type htmlwfui.Data #txt
1b0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Task Details</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b0 f25 246 60 36 24 -46 -34 #rect
1b0 f25 @|StepIcon #fIcon
1b0 f9 expr data #txt
1b0 f9 outCond ivp=="LinkA.ivp" #txt
1b0 f9 112 268 112 356 #arcP
1b0 f29 expr out #txt
1b0 f29 121 356 255 172 #arcP
1b0 g0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>in 1</name>
    </language>
</elementInfo>
' #txt
1b0 g0 601 69 6 6 10 16 #rect
1b0 g0 @|MIGIcon #fIcon
1b0 f0 601 72 282 72 #arcP
1b0 g1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>out 1</name>
    </language>
</elementInfo>
' #txt
1b0 g1 261 501 6 6 10 16 #rect
1b0 g1 @|MOGIcon #fIcon
1b0 f1 expr data #txt
1b0 f1 outCond ivp=="LinkA.ivp" #txt
1b0 f1 264 172 264 501 #arcP
1b0 f1 0 0.19868302725136194 0 0 #arcLabel
>Proto 1b0 0 0 32 24 18 0 #rect
>Proto 1b0 @|BIcon #fIcon
Tt0 f6 head f5 mainIn #connect
Tt0 f0 mainOut f30 tail #connect
Tt0 f30 head f3 mainIn #connect
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
Tt0 f35 head 1b0 g0 #connect
Tt0 1b0 g1 f36 tail #connect
Tt0 f36 head f3 mainIn #connect
Tt0 f3 out f6 tail #connect
Tt0 f3 out f35 tail #connect
1b0 f25 mainOut f24 tail #connect
1b0 f24 head f23 mainIn #connect
1b0 f7 head f4 mainIn #connect
1b0 f13 head f11 mainIn #connect
1b0 f12 mainOut f33 tail #connect
1b0 f33 head f23 mainIn #connect
1b0 f8 mainOut f29 tail #connect
1b0 f29 head f23 mainIn #connect
1b0 f4 out f9 tail #connect
1b0 f9 head f8 mainIn #connect
1b0 f4 out f10 tail #connect
1b0 f10 head f23 mainIn #connect
1b0 f11 out f28 tail #connect
1b0 f28 head f12 mainIn #connect
1b0 f11 out f31 tail #connect
1b0 f31 head f23 mainIn #connect
1b0 g0 m f0 tail #connect
1b0 f0 head f25 mainIn #connect
1b0 f1 head g1 m #connect
1b0 f23 out f1 tail #connect
1b0 f23 out f7 tail #connect
1b0 f23 out f13 tail #connect
1b0 0 0 600 500 0 #ivRect
