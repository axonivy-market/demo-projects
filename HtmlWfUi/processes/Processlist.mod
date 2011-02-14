[Ivy]
[>Created: Mon Jan 17 10:46:34 CET 2011]
1270ADF72FF4AFF3 3.15 #module
>Proto >Proto Collection #zClass
Pt0 Processlist Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .resExport .resExport #zField
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @AnnotationInP-0n ai ai #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @MessageFlowInP-0n messageIn messageIn #zField
Pt0 @MessageFlowOutP-0n messageOut messageOut #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @Page f1 '' #zField
Pt0 @EndTask f2 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @GridStep f20 '' #zField
Pt0 @PushWFArc f3 '' #zField
Pt0 @CallSub f6 '' #zField
Pt0 @PushWFArc f7 '' #zField
Pt0 @PushWFArc f5 '' #zField
>Proto Pt0 Pt0 Processlist #zField
Pt0 f0 outLink start1.ivp #txt
Pt0 f0 type htmlwfui.Data #txt
Pt0 f0 actionDecl 'htmlwfui.Data out;' #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start1() #txt
Pt0 f0 startName 'Start Processlist' #txt
Pt0 f0 taskData '#
#Mon Nov 29 14:17:16 CET 2010
.DESC=
.NAM=Start Processlist
' #txt
Pt0 f0 caseData '#
#Thu Jun 24 14:45:33 CEST 2010
subType.code=
businessMilestone.timestamp=
mainContact.id=
mainContact.name=
processCategory.name=
processCategory.code=
businessPriority=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
type.code=
businessObject.name=
correspondent.id=
businessObject.code=
case.name=
mainContact.folder.id=
case.description=
subType.name=
' #txt
Pt0 f0 showInStartList 0 #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 68 35 25 26 14 0 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 outTypes "htmlwfui.Data" #txt
Pt0 f1 outLinks "LinkA.ivp" #txt
Pt0 f1 template "processliste.ivc" #txt
Pt0 f1 type htmlwfui.Data #txt
Pt0 f1 skipLink skip.ivp #txt
Pt0 f1 sortLink sort.ivp #txt
Pt0 f1 templateWizard '#
#Wed Apr 07 09:31:01 CEST 2010
' #txt
Pt0 f1 pageArchivingActivated false #txt
Pt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Pt0 f1 @C|.responsibility Everybody #txt
Pt0 f1 62 220 36 24 20 -2 #rect
Pt0 f1 @|PageIcon #fIcon
Pt0 f2 type htmlwfui.Data #txt
Pt0 f2 67 299 26 26 14 0 #rect
Pt0 f2 @|EndIcon #fIcon
Pt0 f4 expr data #txt
Pt0 f4 outCond ivp=="LinkA.ivp" #txt
Pt0 f4 80 244 80 299 #arcP
Pt0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Pt0 f20 actionTable 'out=in;
' #txt
Pt0 f20 actionCode 'out.starts = ivy.session.getStartableProcessStarts();

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl","/ivy/pro/"+ivy.wf.getApplication().getName()+"/HtmlWFUI/1270ADF72FF4AFF3/start1.ivp");' #txt
Pt0 f20 type htmlwfui.Data #txt
Pt0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processstarts
setReturnUrl</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f20 62 156 36 24 28 -12 #rect
Pt0 f20 @|StepIcon #fIcon
Pt0 f3 expr out #txt
Pt0 f3 80 180 80 220 #arcP
Pt0 f6 type htmlwfui.Data #txt
Pt0 f6 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Pt0 f6 doCall true #txt
Pt0 f6 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Pt0 f6 requestMappingAction 'param.in=in;
' #txt
Pt0 f6 responseActionDecl 'htmlwfui.Data out;
' #txt
Pt0 f6 responseMappingAction 'out=result.out;
' #txt
Pt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f6 62 92 36 24 20 -2 #rect
Pt0 f6 @|CallSubIcon #fIcon
Pt0 f7 expr out #txt
Pt0 f7 79 60 80 92 #arcP
Pt0 f5 expr out #txt
Pt0 f5 80 116 80 156 #arcP
>Proto Pt0 .type htmlwfui.Data #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f1 out f4 tail #connect
Pt0 f4 head f2 mainIn #connect
Pt0 f20 mainOut f3 tail #connect
Pt0 f3 head f1 mainIn #connect
Pt0 f0 mainOut f7 tail #connect
Pt0 f7 head f6 mainIn #connect
Pt0 f6 mainOut f5 tail #connect
Pt0 f5 head f20 mainIn #connect
