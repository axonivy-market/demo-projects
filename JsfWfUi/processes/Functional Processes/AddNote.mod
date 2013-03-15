[Ivy]
[>Created: Mon Jan 21 09:35:39 CET 2013]
12CBAFAC42B5C5F5 3.17 #module
>Proto >Proto Collection #zClass
Ae0 AddNote Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .resExport .resExport #zField
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartSub f0 '' #zField
Ae0 @EndSub f1 '' #zField
Ae0 @StartSub f4 '' #zField
Ae0 @EndSub f5 '' #zField
Ae0 @RichDialog f6 '' #zField
Ae0 @PushWFArc f7 '' #zField
Ae0 @PushWFArc f2 '' #zField
>Proto Ae0 Ae0 AddNote #zField
Ae0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Ae0 f0 inParamTable 'out=param.in;
' #txt
Ae0 f0 outParamDecl '<htmlwfui.Data out> result;
' #txt
Ae0 f0 outParamTable 'result.out=in;
' #txt
Ae0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f0 callSignature call(htmlwfui.Data) #txt
Ae0 f0 type htmlwfui.Data #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 99 51 26 26 14 0 #rect
Ae0 f0 @|StartSubIcon #fIcon
Ae0 f1 type htmlwfui.Data #txt
Ae0 f1 99 179 26 26 14 0 #rect
Ae0 f1 @|EndSubIcon #fIcon
Ae0 f4 outParamDecl '<> result;
' #txt
Ae0 f4 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f4 callSignature call() #txt
Ae0 f4 type htmlwfui.Data #txt
Ae0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
    </language>
</elementInfo>
' #txt
Ae0 f4 1043 523 26 26 14 0 #rect
Ae0 f4 @|StartSubIcon #fIcon
Ae0 f5 type htmlwfui.Data #txt
Ae0 f5 1043 595 26 26 14 0 #rect
Ae0 f5 @|EndSubIcon #fIcon
Ae0 f6 targetWindow NEW:card: #txt
Ae0 f6 targetDisplay TOP #txt
Ae0 f6 richDialogId htmlwfui.AddNote #txt
Ae0 f6 startMethod start(htmlwfui.Data) #txt
Ae0 f6 type htmlwfui.Data #txt
Ae0 f6 requestActionDecl '<htmlwfui.Data data> param;' #txt
Ae0 f6 requestMappingAction 'param.data=in;
' #txt
Ae0 f6 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f6 responseMappingAction 'out=in;
' #txt
Ae0 f6 windowConfiguration '* ' #txt
Ae0 f6 isAsynch false #txt
Ae0 f6 isInnerRd false #txt
Ae0 f6 userContext '* ' #txt
Ae0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Bemerkung
hinzufügen</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f6 94 116 36 24 20 -2 #rect
Ae0 f6 @|RichDialogIcon #fIcon
Ae0 f7 expr out #txt
Ae0 f7 112 77 112 116 #arcP
Ae0 f2 expr out #txt
Ae0 f2 112 140 112 179 #arcP
>Proto Ae0 .type htmlwfui.Data #txt
>Proto Ae0 .processKind CALLABLE_SUB #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f0 mainOut f7 tail #connect
Ae0 f7 head f6 mainIn #connect
Ae0 f6 mainOut f2 tail #connect
Ae0 f2 head f1 mainIn #connect
