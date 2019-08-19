[Ivy]
13FCD703133237C4 3.28 #module
>Proto >Proto Collection #zClass
Ss0 SetDefaultProcesses Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @GridStep f1 '' #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @Alternative f2 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @UserDialog f10 '' #zField
Ss0 @StartRequest f7 '' #zField
Ss0 @StartRequest f9 '' #zField
Ss0 @StartRequest f12 '' #zField
Ss0 @GridStep f13 '' #zField
Ss0 @GridStep f14 '' #zField
Ss0 @GridStep f15 '' #zField
Ss0 @EndRequest f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @PushWFArc f21 '' #zField
Ss0 @GridStep f23 '' #zField
Ss0 @PushWFArc f25 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @EndTask f3 '' #zField
Ss0 @EndRequest f8 '' #zField
Ss0 @EndRequest f24 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @PushWFArc f22 '' #zField
>Proto Ss0 Ss0 SetDefaultProcesses #zField
Ss0 f1 actionTable 'out=in;
' #txt
Ss0 f1 actionCode 'import ch.ivyteam.ivy.workflow.StandardProcessType;

ivy.wf.setStandardProcessImplementationLibrary(StandardProcessType.DEFAULT_PAGES_PROCESS_TYPES, in.processName);' #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default process</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 392 42 112 44 -52 -8 #rect
Ss0 f1 @|StepIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f0 outLink SetDefaultProcess.ivp #txt
Ss0 f0 inParamDecl '<java.lang.String processName> param;' #txt
Ss0 f0 inParamTable 'out.processName=param.processName;
' #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature SetDefaultProcess(String) #txt
Ss0 f0 persist false #txt
Ss0 f0 startName 'Set Default Process' #txt
Ss0 f0 startDescription 'Set Default Process' #txt
Ss0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=Set Default Process
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f0 caseData 'case.name=Set Default Process' #txt
Ss0 f0 showInStartList 1 #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SetDefaultProcess.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 49 30 30 -60 15 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f2 144 48 32 32 0 16 #rect
Ss0 f2 @|AlternativeIcon #fIcon
Ss0 f2 -1|-1|-9671572 #nodeStyle
Ss0 f5 expr out #txt
Ss0 f5 111 64 144 64 #arcP
Ss0 f10 dialogId ch.ivyteam.wf.test.SetDefaultProcess #txt
Ss0 f10 startMethod start() #txt
Ss0 f10 requestActionDecl '<> param;' #txt
Ss0 f10 responseActionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f10 responseMappingAction 'out=in;
out.processName=result.processName;
' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select default</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 232 106 112 44 -36 -8 #rect
Ss0 f10 @|UserDialogIcon #fIcon
Ss0 f10 -1|-1|-9671572 #nodeStyle
Ss0 f7 outLink testDefaultHome.ivp #txt
Ss0 f7 inParamDecl '<> param;' #txt
Ss0 f7 requestEnabled true #txt
Ss0 f7 triggerEnabled false #txt
Ss0 f7 callSignature testDefaultHome() #txt
Ss0 f7 persist false #txt
Ss0 f7 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f7 showInStartList 1 #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultHome.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 @C|.responsibility Everybody #txt
Ss0 f7 81 177 30 30 -55 15 #rect
Ss0 f7 @|StartRequestIcon #fIcon
Ss0 f7 -1|-1|-9671572 #nodeStyle
Ss0 f9 outLink testDefaultProcesslist.ivp #txt
Ss0 f9 inParamDecl '<> param;' #txt
Ss0 f9 requestEnabled true #txt
Ss0 f9 triggerEnabled false #txt
Ss0 f9 callSignature testDefaultProcesslist() #txt
Ss0 f9 persist false #txt
Ss0 f9 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f9 showInStartList 1 #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultProcesslist.ivp</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 @C|.responsibility Everybody #txt
Ss0 f9 81 241 30 30 -69 15 #rect
Ss0 f9 @|StartRequestIcon #fIcon
Ss0 f9 -1|-1|-9671572 #nodeStyle
Ss0 f12 outLink testDefaultTaskList.ivp #txt
Ss0 f12 inParamDecl '<> param;' #txt
Ss0 f12 requestEnabled true #txt
Ss0 f12 triggerEnabled false #txt
Ss0 f12 callSignature testDefaultTaskList() #txt
Ss0 f12 persist false #txt
Ss0 f12 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f12 showInStartList 1 #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultTaskList.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 @C|.responsibility Everybody #txt
Ss0 f12 81 305 30 30 -62 15 #rect
Ss0 f12 @|StartRequestIcon #fIcon
Ss0 f12 -1|-1|-9671572 #nodeStyle
Ss0 f13 actionTable 'out=in;
out.url=ivy.html.applicationHomeRef();
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default home</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 168 170 112 44 -46 -8 #rect
Ss0 f13 @|StepIcon #fIcon
Ss0 f13 -1|-1|-9671572 #nodeStyle
Ss0 f14 actionTable 'out=in;
out.url=ivy.html.processStartListRef();
' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default
processlist</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 168 234 112 44 -30 -16 #rect
Ss0 f14 @|StepIcon #fIcon
Ss0 f14 -1|-1|-9671572 #nodeStyle
Ss0 f15 actionTable 'out=in;
out.url=ivy.html.taskListRef();
' #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default tasklist</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 168 298 112 44 -49 -8 #rect
Ss0 f15 @|StepIcon #fIcon
Ss0 f15 -1|-1|-9671572 #nodeStyle
Ss0 f16 template "redirect.jsp" #txt
Ss0 f16 337 241 30 30 0 15 #rect
Ss0 f16 @|EndRequestIcon #fIcon
Ss0 f16 -1|-1|-9671572 #nodeStyle
Ss0 f17 expr out #txt
Ss0 f17 111 192 168 192 #arcP
Ss0 f18 expr out #txt
Ss0 f18 111 256 168 256 #arcP
Ss0 f19 expr out #txt
Ss0 f19 111 320 168 320 #arcP
Ss0 f21 expr out #txt
Ss0 f21 280 256 337 256 #arcP
Ss0 f23 actionTable 'out=in;
' #txt
Ss0 f23 actionCode 'import ch.ivyteam.ivy.workflow.StandardProcessType;

String processContain = in.processName.toLowerCase();

for (StandardProcessType processType : StandardProcessType.DEFAULT_PAGES_PROCESS_TYPES)
{
	for(String libraryName : ivy.wf.getAvailableStandardProcessImplementations(processType))
	{	
		if(libraryName.toLowerCase().contains(processContain))
		{
			out.processName = libraryName;
			break;
		}
	}
}' #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get library name</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 232 42 112 44 -44 -8 #rect
Ss0 f23 @|StepIcon #fIcon
Ss0 f23 -1|-1|-9671572 #nodeStyle
Ss0 f25 expr out #txt
Ss0 f25 344 64 392 64 #arcP
Ss0 f28 expr in #txt
Ss0 f28 outCond 'in.processName != ""' #txt
Ss0 f28 176 64 232 64 #arcP
Ss0 f11 expr in #txt
Ss0 f11 160 80 232 128 #arcP
Ss0 f11 1 160 128 #addKink
Ss0 f11 0 0.10346185572342963 0 0 #arcLabel
Ss0 f6 expr out #txt
Ss0 f6 344 128 448 86 #arcP
Ss0 f6 1 448 128 #addKink
Ss0 f6 1 0.6016663281034386 0 0 #arcLabel
Ss0 f4 expr out #txt
Ss0 f4 504 64 561 64 #arcP
Ss0 f3 561 49 30 30 0 15 #rect
Ss0 f3 @|EndIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f8 template "redirect.jsp" #txt
Ss0 f8 337 177 30 30 0 15 #rect
Ss0 f8 @|EndRequestIcon #fIcon
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f24 template "redirect.jsp" #txt
Ss0 f24 337 305 30 30 0 15 #rect
Ss0 f24 @|EndRequestIcon #fIcon
Ss0 f24 -1|-1|-9671572 #nodeStyle
Ss0 f26 expr out #txt
Ss0 f26 280 320 337 320 #arcP
Ss0 f26 0 0.417867885567347 0 0 #arcLabel
Ss0 f22 expr out #txt
Ss0 f22 280 192 337 192 #arcP
Ss0 f22 0 0.715234119631415 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.wf.test.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f1 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f0 mainOut f5 tail #connect
Ss0 f5 head f2 in #connect
Ss0 f7 mainOut f17 tail #connect
Ss0 f17 head f13 mainIn #connect
Ss0 f9 mainOut f18 tail #connect
Ss0 f18 head f14 mainIn #connect
Ss0 f12 mainOut f19 tail #connect
Ss0 f19 head f15 mainIn #connect
Ss0 f14 mainOut f21 tail #connect
Ss0 f21 head f16 mainIn #connect
Ss0 f23 mainOut f25 tail #connect
Ss0 f25 head f1 mainIn #connect
Ss0 f2 out f28 tail #connect
Ss0 f28 head f23 mainIn #connect
Ss0 f2 out f11 tail #connect
Ss0 f11 head f10 mainIn #connect
Ss0 f10 mainOut f6 tail #connect
Ss0 f6 head f1 mainIn #connect
Ss0 f15 mainOut f26 tail #connect
Ss0 f26 head f24 mainIn #connect
Ss0 f13 mainOut f22 tail #connect
Ss0 f22 head f8 mainIn #connect
