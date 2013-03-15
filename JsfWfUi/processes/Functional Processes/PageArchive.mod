[Ivy]
[>Created: Wed Feb 06 15:52:23 CET 2013]
12E298DC97ADC471 3.17 #module
>Proto >Proto Collection #zClass
Cy0 PageArchive Big #zClass
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
Cy0 @RichDialog f7 '' #zField
Cy0 @PushWFArc f6 '' #zField
Cy0 @PushWFArc f10 '' #zField
>Proto Cy0 Cy0 PageArchive #zField
Cy0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Cy0 f0 inParamTable 'out=param.in;
' #txt
Cy0 f0 outParamDecl '<> result;
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
Cy0 f0 83 51 26 26 14 0 #rect
Cy0 f0 @|StartSubIcon #fIcon
Cy0 f1 type htmlwfui.Data #txt
Cy0 f1 83 179 26 26 14 0 #rect
Cy0 f1 @|EndSubIcon #fIcon
Cy0 f7 targetWindow NEW:card: #txt
Cy0 f7 targetDisplay TOP #txt
Cy0 f7 richDialogId htmlwfui.PageArchive #txt
Cy0 f7 startMethod start(htmlwfui.Data) #txt
Cy0 f7 type htmlwfui.Data #txt
Cy0 f7 requestActionDecl '<htmlwfui.Data data> param;' #txt
Cy0 f7 requestMappingAction 'param.data=in;
' #txt
Cy0 f7 responseActionDecl 'htmlwfui.Data out;
' #txt
Cy0 f7 responseMappingAction 'out=in;
' #txt
Cy0 f7 windowConfiguration '* ' #txt
Cy0 f7 isAsynch false #txt
Cy0 f7 isInnerRd false #txt
Cy0 f7 userContext '* ' #txt
Cy0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PageArchive List</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Cy0 f7 78 116 36 24 20 -2 #rect
Cy0 f7 @|RichDialogIcon #fIcon
Cy0 f6 expr out #txt
Cy0 f6 96 140 96 179 #arcP
Cy0 f10 expr out #txt
Cy0 f10 96 77 96 116 #arcP
>Proto Cy0 .type htmlwfui.Data #txt
>Proto Cy0 .processKind CALLABLE_SUB #txt
>Proto Cy0 0 0 32 24 18 0 #rect
>Proto Cy0 @|BIcon #fIcon
Cy0 f7 mainOut f6 tail #connect
Cy0 f6 head f1 mainIn #connect
Cy0 f0 mainOut f10 tail #connect
Cy0 f10 head f7 mainIn #connect
