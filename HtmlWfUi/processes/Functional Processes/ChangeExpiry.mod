[Ivy]
[>Created: Thu May 03 16:01:14 CEST 2012]
12CBC43B6E19D1BD 3.17 #module
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
Cy0 @EndSub f5 '' #zField
Cy0 @StartSub f6 '' #zField
Cy0 @GridStep f7 '' #zField
Cy0 @Alternative f10 '' #zField
Cy0 @Page f11 '' #zField
Cy0 @PushWFArc f12 '' #zField
Cy0 @PushWFArc f13 '' #zField
Cy0 @PushWFArc f14 '' #zField
Cy0 @PushWFArc f15 '' #zField
Cy0 @PushWFArc f16 '' #zField
>Proto Cy0 Cy0 ChangeExpiry #zField
Cy0 f5 type htmlwfui.Data #txt
Cy0 f5 67 291 26 26 14 0 #rect
Cy0 f5 @|EndSubIcon #fIcon
Cy0 f6 inParamDecl '<htmlwfui.Data in> param;' #txt
Cy0 f6 inParamTable 'out=param.in;
out.tmpTaskDetail.delay=param.in.tmpTask.getDelayTimestamp();
out.tmpTaskDetail.exp=param.in.tmpTask.getExpiryTimestamp();
out.tmpTaskDetail.prio=param.in.tmpTask.getOriginalPriority().intValue();
out.tmpTaskDetail.prioName=param.in.tmpTask.getOriginalPriority().toString();
' #txt
Cy0 f6 outParamDecl '<htmlwfui.Data out> result;
' #txt
Cy0 f6 outParamTable 'result.out=in;
' #txt
Cy0 f6 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f6 callSignature call(htmlwfui.Data) #txt
Cy0 f6 type htmlwfui.Data #txt
Cy0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f6 67 43 26 26 14 0 #rect
Cy0 f6 @|StartSubIcon #fIcon
Cy0 f7 actionDecl 'htmlwfui.Data out;
' #txt
Cy0 f7 actionTable 'out=in.clone();
' #txt
Cy0 f7 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

if(in.tmpTaskDetail.prio == 0)
{
	out.tmpTask.setOriginalPriority(WorkflowPriority.EXCEPTION);
}	
else if(in.tmpTaskDetail.prio == 1)
{
	out.tmpTask.setOriginalPriority(WorkflowPriority.HIGH);
}	
else if(in.tmpTaskDetail.prio == 2)
{
	out.tmpTask.setOriginalPriority(WorkflowPriority.NORMAL);
}	
else if(in.tmpTaskDetail.prio == 3)
{
	out.tmpTask.setOriginalPriority(WorkflowPriority.LOW);
}	

if(in.tmpTaskDetail.delay.toNumber()>0)
{
	out.tmpTask.setDelayTimestamp(in.tmpTaskDetail.delay);
}
if(in.tmpTaskDetail.exp.toNumber()>0)
{
	out.tmpTask.setExpiryTimestamp(in.tmpTaskDetail.exp);
}' #txt
Cy0 f7 type htmlwfui.Data #txt
Cy0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cy0 f7 62 172 36 24 20 -2 #rect
Cy0 f7 @|StepIcon #fIcon
Cy0 f10 type htmlwfui.Data #txt
Cy0 f10 66 234 28 28 14 0 #rect
Cy0 f10 @|AlternativeIcon #fIcon
Cy0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Cy0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
Cy0 f11 template "/ProcessPages/ChangeExpiry/taskExpirySetting.ivc" #txt
Cy0 f11 type htmlwfui.Data #txt
Cy0 f11 skipLink skip.ivp #txt
Cy0 f11 sortLink sort.ivp #txt
Cy0 f11 templateWizard '#
#Mon Dec 13 14:58:47 CET 2010
' #txt
Cy0 f11 pageArchivingActivated false #txt
Cy0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fristen/Prio setzen</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f11 @C|.responsibility Everybody #txt
Cy0 f11 62 108 36 24 26 6 #rect
Cy0 f11 @|PageIcon #fIcon
Cy0 f12 expr data #txt
Cy0 f12 outCond ivp=="LinkA.ivp" #txt
Cy0 f12 80 132 80 172 #arcP
Cy0 f13 expr out #txt
Cy0 f13 80 196 80 234 #arcP
Cy0 f14 expr data #txt
Cy0 f14 outCond ivp=="LinkB.ivp" #txt
Cy0 f14 98 129 88 242 #arcP
Cy0 f14 1 176 168 #addKink
Cy0 f14 1 0.05996141958387119 0 0 #arcLabel
Cy0 f15 expr out #txt
Cy0 f15 80 69 80 108 #arcP
Cy0 f16 expr in #txt
Cy0 f16 80 262 80 291 #arcP
>Proto Cy0 .type htmlwfui.Data #txt
>Proto Cy0 .processKind CALLABLE_SUB #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f11 out f12 tail #connect
Cy0 f12 head f7 mainIn #connect
Cy0 f7 mainOut f13 tail #connect
Cy0 f13 head f10 in #connect
Cy0 f11 out f14 tail #connect
Cy0 f14 head f10 in #connect
Cy0 f6 mainOut f15 tail #connect
Cy0 f15 head f11 mainIn #connect
Cy0 f10 out f16 tail #connect
Cy0 f16 head f5 mainIn #connect
