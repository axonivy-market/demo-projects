[Ivy]
[>Created: Tue May 17 09:27:01 CEST 2011]
13054282D43B5334 3.17 #module
>Proto >Proto Collection #zClass
Cl0 CreateEmail Big #zClass
Cl0 B #cInfo
Cl0 #process
Cl0 @TextInP .resExport .resExport #zField
Cl0 @TextInP .type .type #zField
Cl0 @TextInP .processKind .processKind #zField
Cl0 @AnnotationInP-0n ai ai #zField
Cl0 @TextInP .xml .xml #zField
Cl0 @TextInP .responsibility .responsibility #zField
Cl0 @StartRequest f0 '' #zField
Cl0 @InfoButton f1 '' #zField
Cl0 @GridStep f2 '' #zField
Cl0 @PushWFArc f3 '' #zField
Cl0 @CallSub f4 '' #zField
Cl0 @GridStep f5 '' #zField
Cl0 @PushWFArc f6 '' #zField
Cl0 @PushWFArc f7 '' #zField
Cl0 @EndTask f8 '' #zField
Cl0 @PushWFArc f9 '' #zField
Cl0 @InfoButton f10 '' #zField
Cl0 @AnnotationArc f11 '' #zField
Cl0 @AnnotationArc f12 '' #zField
>Proto Cl0 Cl0 CreateEmail #zField
Cl0 f0 outLink createEmailForEmployee.ivp #txt
Cl0 f0 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Cl0 f0 inParamDecl '<java.lang.String name> param;' #txt
Cl0 f0 inParamTable 'out.name=param.name;
' #txt
Cl0 f0 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Cl0 f0 guid 12FC4A84D2D4231B #txt
Cl0 f0 requestEnabled false #txt
Cl0 f0 triggerEnabled true #txt
Cl0 f0 callSignature createEmailForEmployee(String) #txt
Cl0 f0 persist false #txt
Cl0 f0 taskData '#
#Fri May 06 11:39:50 CEST 2011
TaskTriggered.ROL=SYSTEM
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Cl0 f0 caseData '#
#Fri May 06 11:39:50 CEST 2011
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
Cl0 f0 showInStartList 1 #txt
Cl0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Cl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createEmailForEmployee(String)</name>
    </language>
</elementInfo>
' #txt
Cl0 f0 @C|.responsibility Everybody #txt
Cl0 f0 115 35 26 26 14 0 #rect
Cl0 f0 @|StartRequestIcon #fIcon
Cl0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>You have to make this start element a triggerable
and set the Responsible Role to SYSTEM</name>
        <nameStyle>88,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f1 352 18 288 60 -138 -19 #rect
Cl0 f1 @|IBIcon #fIcon
Cl0 f1 -5972572|-5972572|-16777216 #nodeStyle
Cl0 f2 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Cl0 f2 actionTable 'out=in;
out.email=in.name + "@soreco.ch";
' #txt
Cl0 f2 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Cl0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>script that creates the email for this employee</name>
        <nameStyle>47,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f2 110 116 36 24 20 -2 #rect
Cl0 f2 @|StepIcon #fIcon
Cl0 f3 expr out #txt
Cl0 f3 128 61 128 116 #arcP
Cl0 f4 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Cl0 f4 processCall 'Functional Processes/WaitForAsyncProcess/SignalEndOfAsyncProcess:signalEnd(String,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter)' #txt
Cl0 f4 doCall true #txt
Cl0 f4 requestActionDecl '<java.lang.String parameterName,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter parameter> param;
' #txt
Cl0 f4 requestMappingAction 'param.parameterName="CreateEmailProcess";
param.parameter=in.processParameter;
' #txt
Cl0 f4 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Cl0 f4 responseMappingAction 'out=in;
' #txt
Cl0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>signalEnd(String,ProcessParameter)</name>
        <nameStyle>34,5,7
</nameStyle>
        <desc>Tells our IntermediateEvent Bean that this process has ended now
and send the process parameters to it.</desc>
    </language>
</elementInfo>
' #txt
Cl0 f4 110 236 36 24 20 -2 #rect
Cl0 f4 @|CallSubIcon #fIcon
Cl0 f5 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Cl0 f5 actionTable 'out=in;
' #txt
Cl0 f5 actionCode 'List<String> alist = new List<String>();
alist.add("meinstring");
in.processParameter.putString("email", in.email)
										.putBoolean("email-created", true)
										.putString("firstname", "Max")
										.putString("lastname", "Muster")
										.putNumber("age", 25)
										.putList("list", alist);' #txt
Cl0 f5 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Cl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>put the email into the Process Parameter that we want to send back
and set a flag if the email could be created</name>
        <nameStyle>111,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f5 110 180 36 24 20 -2 #rect
Cl0 f5 @|StepIcon #fIcon
Cl0 f6 expr out #txt
Cl0 f6 128 140 128 180 #arcP
Cl0 f7 expr out #txt
Cl0 f7 128 204 128 236 #arcP
Cl0 f8 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Cl0 f8 115 307 26 26 14 0 #rect
Cl0 f8 @|EndIcon #fIcon
Cl0 f9 expr out #txt
Cl0 f9 128 260 128 307 #arcP
Cl0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If you don''t want to send any data back to the waiting main process,
you don''t have to call signalEnd. Just let your process run into the end.</name>
        <nameStyle>69,7
73,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f10 226 290 396 60 -191 -15 #rect
Cl0 f10 @|IBIcon #fIcon
Cl0 f10 -5972572|-5972572|-16777216 #nodeStyle
Cl0 f11 226 320 144 260 #arcP
Cl0 f12 352 48 141 48 #arcP
>Proto Cl0 .type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
>Proto Cl0 .processKind NORMAL #txt
>Proto Cl0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Cl0 0 0 32 24 18 0 #rect
>Proto Cl0 @|BIcon #fIcon
Cl0 f0 mainOut f3 tail #connect
Cl0 f3 head f2 mainIn #connect
Cl0 f2 mainOut f6 tail #connect
Cl0 f6 head f5 mainIn #connect
Cl0 f5 mainOut f7 tail #connect
Cl0 f7 head f4 mainIn #connect
Cl0 f4 mainOut f9 tail #connect
Cl0 f9 head f8 mainIn #connect
Cl0 f10 ao f11 tail #connect
Cl0 f11 head f4 @CG|ai #connect
Cl0 f1 ao f12 tail #connect
Cl0 f12 head f0 @CG|ai #connect
