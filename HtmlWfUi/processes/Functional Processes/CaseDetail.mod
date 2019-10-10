[Ivy]
12E298D0CEC8AC33 7.5.0 #module
>Proto >Proto Collection #zClass
Cl0 CaseDetail Big #zClass
Cl0 B #cInfo
Cl0 #process
Cl0 @TextInP .type .type #zField
Cl0 @TextInP .processKind .processKind #zField
Cl0 @AnnotationInP-0n ai ai #zField
Cl0 @TextInP .xml .xml #zField
Cl0 @TextInP .responsibility .responsibility #zField
Cl0 @StartSub f0 '' #zField
Cl0 @EndSub f1 '' #zField
Cl0 @Alternative f24 '' #zField
Cl0 @Page f23 '' #zField
Cl0 @CallSub f30 '' #zField
Cl0 @CallSub f31 '' #zField
Cl0 @CallSub f37 '' #zField
Cl0 @Page f18 '' #zField
Cl0 @GridStep f21 '' #zField
Cl0 @PushWFArc f19 '' #zField
Cl0 @PushWFArc f25 '' #zField
Cl0 @PushWFArc f22 '' #zField
Cl0 @PushWFArc f26 '' #zField
Cl0 @PushWFArc f32 '' #zField
Cl0 @PushWFArc f34 '' #zField
Cl0 @PushWFArc f35 '' #zField
Cl0 @PushWFArc f36 '' #zField
Cl0 @PushWFArc f28 '' #zField
Cl0 @PushWFArc f29 '' #zField
Cl0 @PushWFArc f44 '' #zField
Cl0 @PushWFArc f2 '' #zField
Cl0 @PushWFArc f3 '' #zField
>Proto Cl0 Cl0 CaseDetail #zField
Cl0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Cl0 f0 inParamTable 'out=param.in;
' #txt
Cl0 f0 outParamDecl '<> result;' #txt
Cl0 f0 callSignature call(htmlwfui.Data) #txt
Cl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
    </language>
</elementInfo>
' #txt
Cl0 f0 163 35 26 26 14 0 #rect
Cl0 f0 @|StartSubIcon #fIcon
Cl0 f1 67 123 26 26 14 0 #rect
Cl0 f1 @|EndSubIcon #fIcon
Cl0 f24 66 330 28 28 14 0 #rect
Cl0 f24 @|AlternativeIcon #fIcon
Cl0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Cl0 f23 outLinks "LinkB.ivp","LinkD.ivp","LinkE.ivp","LinkC.ivp","LinkA.ivp" #txt
Cl0 f23 template "/ProcessPages/CaseDetail/caseDetail.ivc" #txt
Cl0 f23 type htmlwfui.Data #txt
Cl0 f23 skipLink skip.ivp #txt
Cl0 f23 sortLink sort.ivp #txt
Cl0 f23 templateWizard '#
#Fri Feb 04 16:40:51 CET 2011
' #txt
Cl0 f23 pageArchivingActivated false #txt
Cl0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Casedetails</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f23 @C|.responsibility Everybody #txt
Cl0 f23 158 124 36 24 21 -13 #rect
Cl0 f23 @|PageIcon #fIcon
Cl0 f30 processCall 'Functional Processes/TaskDetail:call(htmlwfui.Data)' #txt
Cl0 f30 requestActionDecl '<htmlwfui.Data in> param;' #txt
Cl0 f30 requestMappingAction 'param.in=in;
param.in.tmpTask=in.tasks.get(in.temp.n);
' #txt
Cl0 f30 responseActionDecl 'htmlwfui.Data out;
' #txt
Cl0 f30 responseMappingAction 'out=in;
out.tmpTask=null;
' #txt
Cl0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f30 518 212 36 24 16 9 #rect
Cl0 f30 @|CallSubIcon #fIcon
Cl0 f31 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
Cl0 f31 requestActionDecl '<htmlwfui.Data in> param;' #txt
Cl0 f31 requestMappingAction 'param.in=in;
param.in.noteFor="case";
' #txt
Cl0 f31 responseActionDecl 'htmlwfui.Data out;
' #txt
Cl0 f31 responseMappingAction 'out=in;
' #txt
Cl0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f31 374 212 36 24 12 6 #rect
Cl0 f31 @|CallSubIcon #fIcon
Cl0 f37 processCall 'Functional Processes/PageArchive:call(htmlwfui.Data)' #txt
Cl0 f37 requestActionDecl '<htmlwfui.Data in> param;' #txt
Cl0 f37 requestMappingAction 'param.in=in;
' #txt
Cl0 f37 responseActionDecl 'htmlwfui.Data out;
' #txt
Cl0 f37 responseMappingAction 'out=in;
out.pageArchives=null;
' #txt
Cl0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PageArchive</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f37 246 212 36 24 16 8 #rect
Cl0 f37 @|CallSubIcon #fIcon
Cl0 f18 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Cl0 f18 outLinks "LinkA.ivp","LinkB.ivp" #txt
Cl0 f18 template "/ProcessPages/CaseDetail/confirmDeleteCase.ivc" #txt
Cl0 f18 type htmlwfui.Data #txt
Cl0 f18 skipLink skip.ivp #txt
Cl0 f18 sortLink sort.ivp #txt
Cl0 f18 templateWizard '#
#Fri Feb 04 16:40:54 CET 2011
' #txt
Cl0 f18 pageArchivingActivated false #txt
Cl0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Delete</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f18 @C|.responsibility Everybody #txt
Cl0 f18 62 188 36 24 20 -2 #rect
Cl0 f18 @|PageIcon #fIcon
Cl0 f21 actionTable 'out=in;
' #txt
Cl0 f21 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;

ICase case =in.tempCase.destroy();
if(case.getState()==CaseState.DESTROYED)
{
	in.cases.remove(in.tempCase);
	out.temp.msg = "DESTROYED";
}
' #txt
Cl0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Case</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Cl0 f21 62 260 36 24 20 -2 #rect
Cl0 f21 @|StepIcon #fIcon
Cl0 f19 expr data #txt
Cl0 f19 outCond ivp=="LinkB.ivp" #txt
Cl0 f19 158 148 98 188 #arcP
Cl0 f25 expr out #txt
Cl0 f25 80 284 80 330 #arcP
Cl0 f22 expr data #txt
Cl0 f22 outCond ivp=="LinkA.ivp" #txt
Cl0 f22 80 212 80 260 #arcP
Cl0 f26 expr data #txt
Cl0 f26 outCond ivp=="LinkB.ivp" #txt
Cl0 f26 73 212 75 335 #arcP
Cl0 f26 1 40 264 #addKink
Cl0 f26 0 0.9922739885812369 0 0 #arcLabel
Cl0 f32 expr data #txt
Cl0 f32 outCond ivp=="LinkD.ivp" #txt
Cl0 f32 194 143 374 217 #arcP
Cl0 f34 expr out #txt
Cl0 f34 374 217 194 143 #arcP
Cl0 f35 expr data #txt
Cl0 f35 outCond ivp=="LinkE.ivp" #txt
Cl0 f35 194 140 518 220 #arcP
Cl0 f36 expr out #txt
Cl0 f36 518 220 194 140 #arcP
Cl0 f28 expr data #txt
Cl0 f28 outCond ivp=="LinkC.ivp" #txt
Cl0 f28 188 148 252 212 #arcP
Cl0 f29 expr out #txt
Cl0 f29 252 212 188 148 #arcP
Cl0 f29 0 0.2592402930403714 0 0 #arcLabel
Cl0 f44 expr in #txt
Cl0 f44 84 334 170 148 #arcP
Cl0 f2 expr out #txt
Cl0 f2 176 61 176 124 #arcP
Cl0 f3 expr data #txt
Cl0 f3 outCond ivp=="LinkA.ivp" #txt
Cl0 f3 158 136 93 136 #arcP
>Proto Cl0 .type htmlwfui.Data #txt
>Proto Cl0 .processKind CALLABLE_SUB #txt
>Proto Cl0 0 0 32 24 18 0 #rect
>Proto Cl0 @|BIcon #fIcon
Cl0 f23 out f19 tail #connect
Cl0 f19 head f18 mainIn #connect
Cl0 f21 mainOut f25 tail #connect
Cl0 f25 head f24 in #connect
Cl0 f18 out f22 tail #connect
Cl0 f22 head f21 mainIn #connect
Cl0 f18 out f26 tail #connect
Cl0 f26 head f24 in #connect
Cl0 f23 out f32 tail #connect
Cl0 f32 head f31 mainIn #connect
Cl0 f31 mainOut f34 tail #connect
Cl0 f34 head f23 mainIn #connect
Cl0 f23 out f35 tail #connect
Cl0 f35 head f30 mainIn #connect
Cl0 f30 mainOut f36 tail #connect
Cl0 f36 head f23 mainIn #connect
Cl0 f23 out f28 tail #connect
Cl0 f28 head f37 mainIn #connect
Cl0 f37 mainOut f29 tail #connect
Cl0 f29 head f23 mainIn #connect
Cl0 f24 out f44 tail #connect
Cl0 f44 head f23 mainIn #connect
Cl0 f0 mainOut f2 tail #connect
Cl0 f2 head f23 mainIn #connect
Cl0 f23 out f3 tail #connect
Cl0 f3 head f1 mainIn #connect
