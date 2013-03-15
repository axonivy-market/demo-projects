[Ivy]
[>Created: Wed Feb 06 15:36:42 CET 2013]
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
Cy0 @RichDialog f0 '' #zField
Cy0 @PushWFArc f1 '' #zField
Cy0 @PushWFArc f2 '' #zField
>Proto Cy0 Cy0 ChangeExpiry #zField
Cy0 f5 type htmlwfui.Data #txt
Cy0 f5 67 179 26 26 14 0 #rect
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
Cy0 f0 targetWindow NEW:card: #txt
Cy0 f0 targetDisplay TOP #txt
Cy0 f0 richDialogId htmlwfui.ChangeExpiry #txt
Cy0 f0 startMethod start(htmlwfui.Data) #txt
Cy0 f0 type htmlwfui.Data #txt
Cy0 f0 requestActionDecl '<htmlwfui.Data data> param;' #txt
Cy0 f0 requestMappingAction 'param.data=in;
' #txt
Cy0 f0 responseActionDecl 'htmlwfui.Data out;
' #txt
Cy0 f0 responseMappingAction 'out=in;
' #txt
Cy0 f0 windowConfiguration '* ' #txt
Cy0 f0 isAsynch false #txt
Cy0 f0 isInnerRd false #txt
Cy0 f0 userContext '* ' #txt
Cy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fristen/Prio setzen</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f0 62 116 36 24 20 -2 #rect
Cy0 f0 @|RichDialogIcon #fIcon
Cy0 f1 expr out #txt
Cy0 f1 80 69 80 116 #arcP
Cy0 f2 expr out #txt
Cy0 f2 80 140 80 179 #arcP
>Proto Cy0 .type htmlwfui.Data #txt
>Proto Cy0 .processKind CALLABLE_SUB #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f6 mainOut f1 tail #connect
Cy0 f1 head f0 mainIn #connect
Cy0 f0 mainOut f2 tail #connect
Cy0 f2 head f5 mainIn #connect
