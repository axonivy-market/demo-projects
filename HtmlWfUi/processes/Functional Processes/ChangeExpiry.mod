[Ivy]
[>Created: Mon Dec 13 17:25:16 CET 2010]
12CBC43B6E19D1BD 3.14 #module
>Proto >Proto Collection #zClass
Cy0 ChangeExpiry Big #zClass
Cy0 B #cInfo
Cy0 #process
Cy0 @TextInP .resExport .resExport #zField
Cy0 @TextInP .type .type #zField
Cy0 @TextInP .processKind .processKind #zField
Cy0 @AnnotationInP-0n ai ai #zField
Cy0 @TextInP .xml .xml #zField
Cy0 @TextInP .responsibility .responsibility #zField
Cy0 @StartSub f0 '' #zField
Cy0 @EndSub f1 '' #zField
Cy0 @Alternative f18 '' #zField
Cy0 @Page f4 '' #zField
Cy0 @GridStep f8 '' #zField
Cy0 @PushWFArc f9 '' #zField
Cy0 @PushWFArc f19 '' #zField
Cy0 @PushWFArc f21 '' #zField
Cy0 @PushWFArc f2 '' #zField
Cy0 @PushWFArc f3 '' #zField
>Proto Cy0 Cy0 ChangeExpiry #zField
Cy0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Cy0 f0 inParamTable 'out=param.in;
out.tmpTaskDetail.delay=param.in.tmpTask.getDelayTimestamp();
out.tmpTaskDetail.exp=param.in.tmpTask.getExpiryTimestamp();
out.tmpTaskDetail.prio=param.in.tmpTask.getOriginalPriority().toString();
' #txt
Cy0 f0 outParamDecl '<htmlwfui.Data out> result;
' #txt
Cy0 f0 outParamTable 'result.out=in;
' #txt
Cy0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f0 callSignature call(htmlwfui.Data) #txt
Cy0 f0 type htmlwfui.Data #txt
Cy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f0 87 37 26 26 14 0 #rect
Cy0 f0 @|StartSubIcon #fIcon
Cy0 f1 type htmlwfui.Data #txt
Cy0 f1 87 287 26 26 14 0 #rect
Cy0 f1 @|EndSubIcon #fIcon
Cy0 f18 type htmlwfui.Data #txt
Cy0 f18 86 226 28 28 14 0 #rect
Cy0 f18 @|AlternativeIcon #fIcon
Cy0 f4 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Cy0 f4 outLinks "LinkA.ivp","LinkB.ivp" #txt
Cy0 f4 template "taskExpirySetting.ivd" #txt
Cy0 f4 type htmlwfui.Data #txt
Cy0 f4 skipLink skip.ivp #txt
Cy0 f4 sortLink sort.ivp #txt
Cy0 f4 templateWizard '#
#Mon Dec 13 14:58:47 CET 2010
' #txt
Cy0 f4 pageArchivingActivated false #txt
Cy0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fristen/Prio setzen</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f4 @C|.responsibility Everybody #txt
Cy0 f4 82 100 36 24 26 6 #rect
Cy0 f4 @|PageIcon #fIcon
Cy0 f8 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f8 actionTable 'out=in.clone();
' #txt
Cy0 f8 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;
out.tmpTask.setOriginalPriority(WorkflowPriority.valueOf(WorkflowPriority.class, in.tmpTaskDetail.prio) as WorkflowPriority);

if(in.tmpTaskDetail.delay.toNumber()>0)
{
	out.tmpTask.setDelayTimestamp(in.tmpTaskDetail.delay);
}
if(in.tmpTaskDetail.exp.toNumber()>0)
{
	out.tmpTask.setExpiryTimestamp(in.tmpTaskDetail.exp);
}' #txt
Cy0 f8 type htmlwfui.Data #txt
Cy0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cy0 f8 78 164 36 24 20 -2 #rect
Cy0 f8 @|StepIcon #fIcon
Cy0 f9 expr data #txt
Cy0 f9 outCond ivp=="LinkA.ivp" #txt
Cy0 f9 99 124 97 164 #arcP
Cy0 f19 expr out #txt
Cy0 f19 97 188 99 227 #arcP
Cy0 f21 expr data #txt
Cy0 f21 outCond ivp=="LinkB.ivp" #txt
Cy0 f21 92 124 94 232 #arcP
Cy0 f21 1 56 176 #addKink
Cy0 f21 0 0.9888850792258391 0 0 #arcLabel
Cy0 f2 expr out #txt
Cy0 f2 100 63 100 100 #arcP
Cy0 f3 expr in #txt
Cy0 f3 100 254 100 287 #arcP
>Proto Cy0 .type htmlwfui.Data #txt
>Proto Cy0 .processKind CALLABLE_SUB #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f4 out f9 tail #connect
Cy0 f9 head f8 mainIn #connect
Cy0 f8 mainOut f19 tail #connect
Cy0 f19 head f18 in #connect
Cy0 f4 out f21 tail #connect
Cy0 f21 head f18 in #connect
Cy0 f0 mainOut f2 tail #connect
Cy0 f2 head f4 mainIn #connect
Cy0 f18 out f3 tail #connect
Cy0 f3 head f1 mainIn #connect
