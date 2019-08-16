[Ivy]
12CBB155A8E655CC 3.28 #module
>Proto >Proto Collection #zClass
Tl0 TaskDetail Big #zClass
Tl0 B #cInfo
Tl0 #process
Tl0 @TextInP .type .type #zField
Tl0 @TextInP .processKind .processKind #zField
Tl0 @AnnotationInP-0n ai ai #zField
Tl0 @TextInP .xml .xml #zField
Tl0 @TextInP .responsibility .responsibility #zField
Tl0 @StartSub f0 '' #zField
Tl0 @EndSub f1 '' #zField
Tl0 @CallSub f11 '' #zField
Tl0 @CallSub f10 '' #zField
Tl0 @Page f23 '' #zField
Tl0 @PushWFArc f12 '' #zField
Tl0 @PushWFArc f13 '' #zField
Tl0 @PushWFArc f22 '' #zField
Tl0 @PushWFArc f4 '' #zField
Tl0 @PushWFArc f2 '' #zField
Tl0 @PushWFArc f3 '' #zField
Tl0 @CallSub f5 '' #zField
Tl0 @PushWFArc f6 '' #zField
Tl0 @PushWFArc f7 '' #zField
Tl0 @GridStep f8 '' #zField
Tl0 @PushWFArc f9 '' #zField
Tl0 @CallSub f15 '' #zField
Tl0 @PushWFArc f16 '' #zField
Tl0 @PushWFArc f17 '' #zField
Tl0 @PushWFArc f18 '' #zField
>Proto Tl0 Tl0 TaskDetail #zField
Tl0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Tl0 f0 inParamTable 'out=param.in;
' #txt
Tl0 f0 outParamDecl '<> result;
' #txt
Tl0 f0 callSignature call(htmlwfui.Data) #txt
Tl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f0 99 35 26 26 14 0 #rect
Tl0 f0 @|StartSubIcon #fIcon
Tl0 f1 19 139 26 26 14 0 #rect
Tl0 f1 @|EndSubIcon #fIcon
Tl0 f11 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
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
Tl0 f11 286 204 36 24 5 17 #rect
Tl0 f11 @|CallSubIcon #fIcon
Tl0 f10 processCall 'Functional Processes/DelegateTask:call(htmlwfui.Data)' #txt
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
Tl0 f10 182 204 36 24 9 16 #rect
Tl0 f10 @|CallSubIcon #fIcon
Tl0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Tl0 f23 outLinks "LinkB.ivp","LinkC.ivp","LinkA.ivp","LinkD.ivp","LinkE.ivp","LinkF.ivp" #txt
Tl0 f23 template "/ProcessPages/TaskDetail/taskDetail.ivc" #txt
Tl0 f23 type htmlwfui.Data #txt
Tl0 f23 skipLink skip.ivp #txt
Tl0 f23 sortLink sort.ivp #txt
Tl0 f23 templateWizard '#
#Mon Dec 06 11:06:19 CET 2010
' #txt
Tl0 f23 pageArchivingActivated false #txt
Tl0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskDetail</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f23 @C|.responsibility Everybody #txt
Tl0 f23 94 140 36 24 19 -23 #rect
Tl0 f23 @|PageIcon #fIcon
Tl0 f12 expr data #txt
Tl0 f12 outCond ivp=="LinkC.ivp" #txt
Tl0 f12 130 158 286 210 #arcP
Tl0 f13 expr out #txt
Tl0 f13 304 228 130 152 #arcP
Tl0 f13 1 304 288 #addKink
Tl0 f13 2 656 288 #addKink
Tl0 f13 3 656 152 #addKink
Tl0 f13 1 0.540214317270216 0 0 #arcLabel
Tl0 f22 expr data #txt
Tl0 f22 outCond ivp=="LinkB.ivp" #txt
Tl0 f22 129 164 184 204 #arcP
Tl0 f4 expr out #txt
Tl0 f4 200 228 130 152 #arcP
Tl0 f4 1 200 288 #addKink
Tl0 f4 2 672 288 #addKink
Tl0 f4 3 672 152 #addKink
Tl0 f4 1 1.0 0 0 #arcLabel
Tl0 f2 expr out #txt
Tl0 f2 112 61 112 140 #arcP
Tl0 f3 expr data #txt
Tl0 f3 outCond ivp=="LinkA.ivp" #txt
Tl0 f3 94 152 45 152 #arcP
Tl0 f5 processCall 'Functional Processes/ChangeExpiry:call(htmlwfui.Data)' #txt
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
Tl0 f5 398 204 36 24 5 16 #rect
Tl0 f5 @|CallSubIcon #fIcon
Tl0 f6 expr data #txt
Tl0 f6 outCond ivp=="LinkD.ivp" #txt
Tl0 f6 130 156 398 212 #arcP
Tl0 f7 expr out #txt
Tl0 f7 416 228 130 152 #arcP
Tl0 f7 1 416 288 #addKink
Tl0 f7 2 664 288 #addKink
Tl0 f7 3 664 152 #addKink
Tl0 f7 2 0.24601833214173036 0 0 #arcLabel
Tl0 f8 actionTable 'out=in;
' #txt
Tl0 f8 actionCode 'import ch.ivyteam.ivy.workflow.TaskState;
if(in.#tmpTask!=null && in.tmpTask.getState()==TaskState.RESUMED)
{
	in.tmpTask.reset();
}	' #txt
Tl0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Resumed task 
reset</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Tl0 f8 94 204 36 24 -19 17 #rect
Tl0 f8 @|StepIcon #fIcon
Tl0 f9 expr data #txt
Tl0 f9 outCond ivp=="LinkE.ivp" #txt
Tl0 f9 112 164 112 204 #arcP
Tl0 f15 processCall 'Functional Processes/PageArchive:call(htmlwfui.Data)' #txt
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
Tl0 f15 534 204 36 24 9 16 #rect
Tl0 f15 @|CallSubIcon #fIcon
Tl0 f16 expr data #txt
Tl0 f16 outCond ivp=="LinkF.ivp" #txt
Tl0 f16 130 155 534 213 #arcP
Tl0 f17 expr out #txt
Tl0 f17 552 228 130 152 #arcP
Tl0 f17 1 552 288 #addKink
Tl0 f17 2 680 288 #addKink
Tl0 f17 3 680 152 #addKink
Tl0 f17 3 0.09639387691243473 0 0 #arcLabel
Tl0 f18 expr out #txt
Tl0 f18 94 216 100 164 #arcP
Tl0 f18 1 48 216 #addKink
Tl0 f18 1 0.019318672703469875 0 0 #arcLabel
>Proto Tl0 .type htmlwfui.Data #txt
>Proto Tl0 .processKind CALLABLE_SUB #txt
>Proto Tl0 0 0 32 24 18 0 #rect
>Proto Tl0 @|BIcon #fIcon
Tl0 f12 head f11 mainIn #connect
Tl0 f11 mainOut f13 tail #connect
Tl0 f13 head f23 mainIn #connect
Tl0 f23 out f22 tail #connect
Tl0 f22 head f10 mainIn #connect
Tl0 f23 out f12 tail #connect
Tl0 f10 mainOut f4 tail #connect
Tl0 f4 head f23 mainIn #connect
Tl0 f0 mainOut f2 tail #connect
Tl0 f2 head f23 mainIn #connect
Tl0 f23 out f3 tail #connect
Tl0 f3 head f1 mainIn #connect
Tl0 f23 out f6 tail #connect
Tl0 f6 head f5 mainIn #connect
Tl0 f5 mainOut f7 tail #connect
Tl0 f7 head f23 mainIn #connect
Tl0 f23 out f9 tail #connect
Tl0 f9 head f8 mainIn #connect
Tl0 f23 out f16 tail #connect
Tl0 f16 head f15 mainIn #connect
Tl0 f15 mainOut f17 tail #connect
Tl0 f17 head f23 mainIn #connect
Tl0 f8 mainOut f18 tail #connect
Tl0 f18 head f23 mainIn #connect
