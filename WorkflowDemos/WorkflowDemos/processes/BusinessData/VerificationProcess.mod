[Ivy]
156E5D9AA7D41BAA 3.28 #module
>Proto >Proto Collection #zClass
Vn0 VerificationProcess Big #zClass
Vn0 B #cInfo
Vn0 #process
Vn0 @AnnotationArc f1 '' #zField
Vn0 @TextInP .type .type #zField
Vn0 @TextInP .processKind .processKind #zField
Vn0 @AnnotationInP-0n ai ai #zField
Vn0 @MessageFlowInP-0n messageIn messageIn #zField
Vn0 @MessageFlowOutP-0n messageOut messageOut #zField
Vn0 @TextInP .xml .xml #zField
Vn0 @TextInP .responsibility .responsibility #zField
Vn0 @InfoButton f30 '' #zField
Vn0 @UserDialog f21 '' #zField
Vn0 @TaskSwitchSimple f31 '' #zField
Vn0 @EndTask f23 '' #zField
Vn0 @StartRequest f19 '' #zField
Vn0 @PushWFArc f34 '' #zField
Vn0 @TkArc f22 '' #zField
Vn0 @InfoButton f0 '' #zField
Vn0 @PushWFArc f2 '' #zField
>Proto Vn0 Vn0 VerificationProcess #zField
Vn0 f1 352 198 176 143 #arcP
Vn0 f1 1 176 388 #addKink
Vn0 f1 0 0.664795927536001 0 0 #arcLabel
Vn0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>The important point is, that the process data that is persisted on the Task Switch,
should only contain the ID of the Business Data. 
The Business Data is loaded from the repo with the stored ID if it is used in the task. 
Otherwise the Business Data will references a different instance after the save point in the Task Switch

E.g. the following script exectued after a Task Switch works as expected:
  // load the related Business Data with id
  out.myBusinessData = ivy.repo.find(in.myId, MyBusinessData.class);
  // modify Business Data
  out.myBusinessData.setTitle("Changed");
  // update the loaded Business Data
  ivy.repo.update(out.myBusinessData);

E.g. the following script exectued after a Task Switch may  not work as expected, because 
the Business Data from the process data is used, without loading it before:
  // use the stored Business Data in the process data
  out.myBusinessData = in.myBusinessData;
  // modify Business Data
  out.myBusinessData.setTitle("Changed");
  // will store a new entry of the Business Data and will NOT update it
  ivy.repo.update(out.myBusinessData);
  
</name>
        <nameStyle>327,7
2,7
73,5,7
1,7
44,3,7
213,3,7
168,5,7
278,3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vn0 f30 64 198 576 396 -279 -190 #rect
Vn0 f30 @|IBIcon #fIcon
Vn0 f21 dialogId workflow.businessdata.BusinessDataDossierModifier #txt
Vn0 f21 startMethod start(String,String) #txt
Vn0 f21 requestActionDecl '<String businessDataId, String title> param;' #txt
Vn0 f21 requestMappingAction 'param.businessDataId=in.id;
param.title="Dossier Verification";
' #txt
Vn0 f21 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Vn0 f21 responseMappingAction 'out=in;
' #txt
Vn0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>dossier
verification</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vn0 f21 232 106 112 44 -29 -16 #rect
Vn0 f21 @|UserDialogIcon #fIcon
Vn0 f31 actionTable 'out=in1;
' #txt
Vn0 f31 outLinks "TaskA.ivp" #txt
Vn0 f31 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Verification of Person <%\=(ivy.repo.find(in1.id, workflow.businessdata.Dossier.class) as workflow.businessdata.Dossier).name%>
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Vn0 f31 template "" #txt
Vn0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verification task</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vn0 f31 161 113 30 30 -43 -41 #rect
Vn0 f31 @|TaskSwitchSimpleIcon #fIcon
Vn0 f23 425 113 30 30 0 15 #rect
Vn0 f23 @|EndIcon #fIcon
Vn0 f19 outLink verifyDossier.ivp #txt
Vn0 f19 inParamDecl '<java.lang.String id> param;' #txt
Vn0 f19 inParamTable 'out.id=param.id;
' #txt
Vn0 f19 requestEnabled true #txt
Vn0 f19 triggerEnabled false #txt
Vn0 f19 callSignature verifyDossier(String) #txt
Vn0 f19 persist false #txt
Vn0 f19 startName 'Verify Dossier Process' #txt
Vn0 f19 taskData 'TaskTriggered.CATEGORY=Review/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Vn0 f19 caseData case.category=Dossier/Verify #txt
Vn0 f19 showInStartList 0 #txt
Vn0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verifyDossier.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vn0 f19 @C|.responsibility Everybody #txt
Vn0 f19 65 113 30 30 -44 17 #rect
Vn0 f19 @|StartRequestIcon #fIcon
Vn0 f34 expr data #txt
Vn0 f34 outCond ivp=="TaskA.ivp" #txt
Vn0 f34 191 128 232 128 #arcP
Vn0 f22 expr out #txt
Vn0 f22 type workflow.businessdata.Data #txt
Vn0 f22 var in1 #txt
Vn0 f22 95 128 161 128 #arcP
Vn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This use case highlights the handling of Business Data over a Task Switch.
</name>
        <nameStyle>74,7
1,3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vn0 f0 65 24 416 44 -205 -16 #rect
Vn0 f0 @|IBIcon #fIcon
Vn0 f2 expr out #txt
Vn0 f2 344 128 425 128 #arcP
>Proto Vn0 .type workflow.businessdata.Data #txt
>Proto Vn0 .processKind NORMAL #txt
>Proto Vn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Vn0 0 0 32 24 18 0 #rect
>Proto Vn0 @|BIcon #fIcon
Vn0 f31 out f34 tail #connect
Vn0 f34 head f21 mainIn #connect
Vn0 f19 mainOut f22 tail #connect
Vn0 f22 head f31 in #connect
Vn0 f30 ao f1 tail #connect
Vn0 f1 head f31 @CG|ai #connect
Vn0 f21 mainOut f2 tail #connect
Vn0 f2 head f23 mainIn #connect
