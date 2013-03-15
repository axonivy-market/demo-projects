[Ivy]
[>Created: Thu Feb 07 09:57:03 CET 2013]
12CBB189CAE5A324 3.17 #module
>Proto >Proto Collection #zClass
Dk0 DelegateTask Big #zClass
Dk0 B #cInfo
Dk0 #process
Dk0 @TextInP .resExport .resExport #zField
Dk0 @TextInP .type .type #zField
Dk0 @TextInP .processKind .processKind #zField
Dk0 @AnnotationInP-0n ai ai #zField
Dk0 @TextInP .xml .xml #zField
Dk0 @TextInP .responsibility .responsibility #zField
Dk0 @StartSub f0 '' #zField
Dk0 @EndSub f1 '' #zField
Dk0 @RichDialog f5 '' #zField
Dk0 @PushWFArc f6 '' #zField
Dk0 @PushWFArc f7 '' #zField
>Proto Dk0 Dk0 DelegateTask #zField
Dk0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Dk0 f0 inParamTable 'out=param.in;
' #txt
Dk0 f0 outParamDecl '<htmlwfui.Data out> result;
' #txt
Dk0 f0 outParamTable 'result.out=in;
' #txt
Dk0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Dk0 f0 callSignature call(htmlwfui.Data) #txt
Dk0 f0 type htmlwfui.Data #txt
Dk0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dk0 f0 83 51 26 26 14 0 #rect
Dk0 f0 @|StartSubIcon #fIcon
Dk0 f1 type htmlwfui.Data #txt
Dk0 f1 83 179 26 26 14 0 #rect
Dk0 f1 @|EndSubIcon #fIcon
Dk0 f5 targetWindow NEW:card: #txt
Dk0 f5 targetDisplay TOP #txt
Dk0 f5 richDialogId htmlwfui.DelegateTask #txt
Dk0 f5 startMethod start(htmlwfui.Data) #txt
Dk0 f5 type htmlwfui.Data #txt
Dk0 f5 requestActionDecl '<htmlwfui.Data data> param;' #txt
Dk0 f5 requestMappingAction 'param.data=in;
' #txt
Dk0 f5 responseActionDecl 'htmlwfui.Data out;
' #txt
Dk0 f5 responseMappingAction 'out=in;
' #txt
Dk0 f5 windowConfiguration '* ' #txt
Dk0 f5 isAsynch false #txt
Dk0 f5 isInnerRd false #txt
Dk0 f5 userContext '* ' #txt
Dk0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Activator
setzen</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Dk0 f5 78 116 36 24 20 -2 #rect
Dk0 f5 @|RichDialogIcon #fIcon
Dk0 f6 expr out #txt
Dk0 f6 96 140 96 179 #arcP
Dk0 f7 expr out #txt
Dk0 f7 96 77 96 116 #arcP
>Proto Dk0 .type htmlwfui.Data #txt
>Proto Dk0 .processKind CALLABLE_SUB #txt
>Proto Dk0 0 0 32 24 18 0 #rect
>Proto Dk0 @|BIcon #fIcon
Dk0 f5 mainOut f6 tail #connect
Dk0 f6 head f1 mainIn #connect
Dk0 f0 mainOut f7 tail #connect
Dk0 f7 head f5 mainIn #connect
