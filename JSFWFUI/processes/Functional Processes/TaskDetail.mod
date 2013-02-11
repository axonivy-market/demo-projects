[Ivy]
[>Created: Wed Feb 06 13:31:24 CET 2013]
12CBB155A8E655CC 3.17 #module
>Proto >Proto Collection #zClass
Tl0 TaskDetail Big #zClass
Tl0 B #cInfo
Tl0 #process
Tl0 @TextInP .resExport .resExport #zField
Tl0 @TextInP .type .type #zField
Tl0 @TextInP .processKind .processKind #zField
Tl0 @AnnotationInP-0n ai ai #zField
Tl0 @TextInP .xml .xml #zField
Tl0 @TextInP .responsibility .responsibility #zField
Tl0 @StartSub f0 '' #zField
Tl0 @EndSub f1 '' #zField
Tl0 @CallSub f11 '' #zField
Tl0 @CallSub f10 '' #zField
Tl0 @CallSub f5 '' #zField
Tl0 @CallSub f15 '' #zField
Tl0 @RichDialog f14 '' #zField
Tl0 @PushWFArc f19 '' #zField
Tl0 @Alternative f2 '' #zField
Tl0 @PushWFArc f20 '' #zField
Tl0 @PushWFArc f21 '' #zField
Tl0 @PushWFArc f27 '' #zField
Tl0 @PushWFArc f26 '' #zField
Tl0 @PushWFArc f25 '' #zField
Tl0 @PushWFArc f24 '' #zField
Tl0 @PushWFArc f28 '' #zField
Tl0 @PushWFArc f17 '' #zField
Tl0 @PushWFArc f7 '' #zField
Tl0 @PushWFArc f4 '' #zField
>Proto Tl0 Tl0 TaskDetail #zField
Tl0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Tl0 f0 inParamTable 'out=param.in;
' #txt
Tl0 f0 outParamDecl '<> result;
' #txt
Tl0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Tl0 f0 callSignature call(htmlwfui.Data) #txt
Tl0 f0 type htmlwfui.Data #txt
Tl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f0 371 51 26 26 14 0 #rect
Tl0 f0 @|StartSubIcon #fIcon
Tl0 f1 type htmlwfui.Data #txt
Tl0 f1 563 179 26 26 14 0 #rect
Tl0 f1 @|EndSubIcon #fIcon
Tl0 f11 type htmlwfui.Data #txt
Tl0 f11 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
Tl0 f11 doCall true #txt
Tl0 f11 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tl0 f11 requestMappingAction 'param.in=in;
param.in.noteFor="task";
' #txt
Tl0 f11 responseActionDecl 'htmlwfui.Data out;
' #txt
Tl0 f11 responseMappingAction 'out=result.out;
' #txt
Tl0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AddNote</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f11 430 276 36 24 5 17 #rect
Tl0 f11 @|CallSubIcon #fIcon
Tl0 f10 type htmlwfui.Data #txt
Tl0 f10 processCall 'Functional Processes/DelegateTask:call(htmlwfui.Data)' #txt
Tl0 f10 doCall true #txt
Tl0 f10 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tl0 f10 requestMappingAction 'param.in=in;
' #txt
Tl0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
Tl0 f10 responseMappingAction 'out=result.out;
' #txt
Tl0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delegate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f10 166 276 36 24 9 16 #rect
Tl0 f10 @|CallSubIcon #fIcon
Tl0 f5 type htmlwfui.Data #txt
Tl0 f5 processCall 'Functional Processes/ChangeExpiry:call(htmlwfui.Data)' #txt
Tl0 f5 doCall true #txt
Tl0 f5 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tl0 f5 requestMappingAction 'param.in=in;
' #txt
Tl0 f5 responseActionDecl 'htmlwfui.Data out;
' #txt
Tl0 f5 responseMappingAction 'out=result.out;
' #txt
Tl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Change Expiry</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f5 294 276 36 24 5 16 #rect
Tl0 f5 @|CallSubIcon #fIcon
Tl0 f15 type htmlwfui.Data #txt
Tl0 f15 processCall 'Functional Processes/PageArchive:call(htmlwfui.Data)' #txt
Tl0 f15 doCall true #txt
Tl0 f15 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tl0 f15 requestMappingAction 'param.in=in;
' #txt
Tl0 f15 responseActionDecl 'htmlwfui.Data out;
' #txt
Tl0 f15 responseMappingAction 'out=in;
out.pageArchives=null;
' #txt
Tl0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Formular Archiv</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f15 558 276 36 24 9 16 #rect
Tl0 f15 @|CallSubIcon #fIcon
Tl0 f14 targetWindow NEW:card: #txt
Tl0 f14 targetDisplay TOP #txt
Tl0 f14 richDialogId htmlwfui.TaskDetails #txt
Tl0 f14 startMethod start(htmlwfui.Data) #txt
Tl0 f14 type htmlwfui.Data #txt
Tl0 f14 requestActionDecl '<htmlwfui.Data data> param;' #txt
Tl0 f14 requestMappingAction 'param.data=in;
' #txt
Tl0 f14 responseActionDecl 'htmlwfui.Data out;
' #txt
Tl0 f14 responseMappingAction 'out=in;
' #txt
Tl0 f14 windowConfiguration '* ' #txt
Tl0 f14 isAsynch false #txt
Tl0 f14 isInnerRd false #txt
Tl0 f14 userContext '* ' #txt
Tl0 f14 366 116 36 24 20 -2 #rect
Tl0 f14 @|RichDialogIcon #fIcon
Tl0 f19 expr out #txt
Tl0 f19 384 77 384 116 #arcP
Tl0 f2 type htmlwfui.Data #txt
Tl0 f2 370 178 28 28 14 0 #rect
Tl0 f2 @|AlternativeIcon #fIcon
Tl0 f20 expr out #txt
Tl0 f20 384 140 384 178 #arcP
Tl0 f21 expr in #txt
Tl0 f21 398 192 563 192 #arcP
Tl0 f27 expr in #txt
Tl0 f27 outCond 'in.option == "showFormArchive"' #txt
Tl0 f27 393 197 558 279 #arcP
Tl0 f26 expr in #txt
Tl0 f26 outCond 'in.option == "addNote"' #txt
Tl0 f26 390 200 440 276 #arcP
Tl0 f25 expr in #txt
Tl0 f25 outCond 'in.option == "changeExpiry"' #txt
Tl0 f25 378 200 321 276 #arcP
Tl0 f24 expr in #txt
Tl0 f24 outCond 'in.option == "delegateCase"' #txt
Tl0 f24 375 197 202 279 #arcP
Tl0 f28 expr out #txt
Tl0 f28 576 300 402 128 #arcP
Tl0 f28 1 576 352 #addKink
Tl0 f28 2 728 352 #addKink
Tl0 f28 3 728 128 #addKink
Tl0 f28 3 0.09639387691243473 0 0 #arcLabel
Tl0 f17 expr out #txt
Tl0 f17 312 300 402 128 #arcP
Tl0 f17 1 312 352 #addKink
Tl0 f17 2 712 352 #addKink
Tl0 f17 3 712 128 #addKink
Tl0 f17 2 0.24601833214173036 0 0 #arcLabel
Tl0 f7 expr out #txt
Tl0 f7 184 300 402 128 #arcP
Tl0 f7 1 184 352 #addKink
Tl0 f7 2 720 352 #addKink
Tl0 f7 3 720 128 #addKink
Tl0 f7 1 1.0 0 0 #arcLabel
Tl0 f4 expr out #txt
Tl0 f4 448 300 402 128 #arcP
Tl0 f4 1 448 352 #addKink
Tl0 f4 2 704 352 #addKink
Tl0 f4 3 704 128 #addKink
Tl0 f4 1 0.540214317270216 0 0 #arcLabel
>Proto Tl0 .type htmlwfui.Data #txt
>Proto Tl0 .processKind CALLABLE_SUB #txt
>Proto Tl0 0 0 32 24 18 0 #rect
>Proto Tl0 @|BIcon #fIcon
Tl0 f0 mainOut f19 tail #connect
Tl0 f19 head f14 mainIn #connect
Tl0 f14 mainOut f20 tail #connect
Tl0 f20 head f2 in #connect
Tl0 f21 head f1 mainIn #connect
Tl0 f27 head f15 mainIn #connect
Tl0 f26 head f11 mainIn #connect
Tl0 f25 head f5 mainIn #connect
Tl0 f2 out f24 tail #connect
Tl0 f24 head f10 mainIn #connect
Tl0 f2 out f25 tail #connect
Tl0 f2 out f26 tail #connect
Tl0 f2 out f27 tail #connect
Tl0 f2 out f21 tail #connect
Tl0 f15 mainOut f28 tail #connect
Tl0 f28 head f14 mainIn #connect
Tl0 f5 mainOut f17 tail #connect
Tl0 f17 head f14 mainIn #connect
Tl0 f10 mainOut f7 tail #connect
Tl0 f7 head f14 mainIn #connect
Tl0 f11 mainOut f4 tail #connect
Tl0 f4 head f14 mainIn #connect
