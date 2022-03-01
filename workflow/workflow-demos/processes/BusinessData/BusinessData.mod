[Ivy]
155BB4328F79B2D5 9.4.1 #module
>Proto >Proto Collection #zClass
Ba0 BusinessData Big #zClass
Ba0 B #cInfo
Ba0 #process
Ba0 @TextInP .colors .colors #zField
Ba0 @TextInP color color #zField
Ba0 @TextInP .type .type #zField
Ba0 @TextInP .processKind .processKind #zField
Ba0 @AnnotationInP-0n ai ai #zField
Ba0 @MessageFlowInP-0n messageIn messageIn #zField
Ba0 @MessageFlowOutP-0n messageOut messageOut #zField
Ba0 @TextInP .xml .xml #zField
Ba0 @TextInP .responsibility .responsibility #zField
Ba0 @StartRequest f0 '' #zField
Ba0 @UserDialog f5 '' #zField
Ba0 @StartRequest f7 '' #zField
Ba0 @StartRequest f10 '' #zField
Ba0 @UserDialog f11 '' #zField
Ba0 @EndTask f12 '' #zField
Ba0 @PushWFArc f14 '' #zField
Ba0 @InfoButton f2 '' #zField
Ba0 @GridStep f3 '' #zField
Ba0 @PushWFArc f6 '' #zField
Ba0 @GridStep f25 '' #zField
Ba0 @PushWFArc f26 '' #zField
Ba0 @PushWFArc f13 '' #zField
Ba0 @PushWFArc f15 '' #zField
Ba0 @PushWFArc f9 '' #zField
Ba0 @PushWFArc f16 '' #zField
Ba0 @StartRequest f4 '' #zField
Ba0 @PushWFArc f1 '' #zField
Ba0 @UserDialog f8 '' #zField
Ba0 @StartRequest f17 '' #zField
Ba0 @EndTask f18 '' #zField
Ba0 @GridStep f19 '' #zField
Ba0 @PushWFArc f20 '' #zField
Ba0 @PushWFArc f21 '' #zField
Ba0 @PushWFArc f22 '' #zField
>Proto Ba0 Ba0 BusinessData #zField
Ba0 f0 outLink create.ivp #txt
Ba0 f0 inParamDecl '<> param;' #txt
Ba0 f0 inParamTable 'out.id="";
' #txt
Ba0 f0 requestEnabled true #txt
Ba0 f0 triggerEnabled false #txt
Ba0 f0 callSignature create() #txt
Ba0 f0 persist false #txt
Ba0 f0 startName 'Create new Dossier' #txt
Ba0 f0 startCategory business/data #txt
Ba0 f0 taskData 'TaskTriggered.CATEGORY=Input/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ba0 f0 caseData case.category=Dossier/Create #txt
Ba0 f0 showInStartList 0 #txt
Ba0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create.ivp</name>
    </language>
</elementInfo>
' #txt
Ba0 f0 @C|.responsibility Everybody #txt
Ba0 f0 81 241 30 30 -31 17 #rect
Ba0 f5 dialogId workflow.businessdata.BusinessDataDossierModifier #txt
Ba0 f5 startMethod start(String,String) #txt
Ba0 f5 requestActionDecl '<String businessDataId,String title> param;' #txt
Ba0 f5 requestMappingAction 'param.businessDataId=in.id;
param.title="Person Dossier";
' #txt
Ba0 f5 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f5 responseMappingAction 'out=in;
out.id=result.id;
' #txt
Ba0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>modify</name>
    </language>
</elementInfo>
' #txt
Ba0 f5 248 266 112 44 -20 -7 #rect
Ba0 f7 outLink edit.ivp #txt
Ba0 f7 inParamDecl '<String id> param;' #txt
Ba0 f7 inParamTable 'out.id=param.id;
' #txt
Ba0 f7 requestEnabled true #txt
Ba0 f7 triggerEnabled false #txt
Ba0 f7 callSignature edit(String) #txt
Ba0 f7 persist false #txt
Ba0 f7 startName 'Edit Dossier' #txt
Ba0 f7 startCategory business/data #txt
Ba0 f7 startCustomFields 'cssIcon=fa fa-pencil-square-o' #txt
Ba0 f7 taskData 'TaskTriggered.CATEGORY=Modification/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ba0 f7 caseData case.category=Dossier/Edit #txt
Ba0 f7 showInStartList 0 #txt
Ba0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit.ivp</name>
    </language>
</elementInfo>
' #txt
Ba0 f7 @C|.responsibility Everybody #txt
Ba0 f7 81 306 30 30 -33 17 #rect
Ba0 f10 outLink browse.ivp #txt
Ba0 f10 inParamDecl '<Boolean showAll> param;' #txt
Ba0 f10 inParamTable 'out.id="";
out.showAll=param.showAll;
' #txt
Ba0 f10 requestEnabled true #txt
Ba0 f10 triggerEnabled false #txt
Ba0 f10 callSignature browse(Boolean) #txt
Ba0 f10 persist false #txt
Ba0 f10 startName '5.1: Browse Dossiers (Business Data)' #txt
Ba0 f10 startDescription 'Business Data Store Demo. Manage dossier objects in the Business Data Repository' #txt
Ba0 f10 startCategory business/data #txt
Ba0 f10 startCustomFields 'cssIcon=fa fa-th-list' #txt
Ba0 f10 taskData 'TaskTriggered.CATEGORY=View/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ba0 f10 caseData case.category=Dossier/Browse #txt
Ba0 f10 showInStartList 1 #txt
Ba0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse.ivp</name>
    </language>
</elementInfo>
' #txt
Ba0 f10 @C|.responsibility Everybody #txt
Ba0 f10 82 145 30 30 -33 17 #rect
Ba0 f11 dialogId workflow.businessdata.BusinessDataDossierBrowser #txt
Ba0 f11 startMethod start(String,Boolean) #txt
Ba0 f11 requestActionDecl '<String lastId,Boolean showAll> param;' #txt
Ba0 f11 requestMappingAction 'param.lastId=in.id;
param.showAll=in.showAll;
' #txt
Ba0 f11 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f11 responseMappingAction 'out=in;
' #txt
Ba0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse</name>
    </language>
</elementInfo>
' #txt
Ba0 f11 360 138 112 44 -22 -7 #rect
Ba0 f12 529 145 30 30 0 15 #rect
Ba0 f14 expr out #txt
Ba0 f14 472 160 529 160 #arcP
Ba0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>**Business Data Store Demo**
- Manage dossier objects in the Business Data Repository (ivy.repo).
- New fields can be added to the Dossier type and it still works.</name>
    </language>
</elementInfo>
' #txt
Ba0 f2 64 18 384 60 -187 -24 #rect
Ba0 f3 actionTable 'out=in;
' #txt
Ba0 f3 actionCode 'import workflow.businessdata.Dossier;

ivy.repo.delete(ivy.repo.find(in.id, Dossier.class));
out.id="";

' #txt
Ba0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ba0 f3 168 394 112 44 -20 -7 #rect
Ba0 f6 expr out #txt
Ba0 f6 110 416 168 416 #arcP
Ba0 f25 actionTable 'out=in;
' #txt
Ba0 f25 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.DemoDataCreator;

DemoDataCreator.createDemoDataIfNotExist();' #txt
Ba0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create test data</name>
    </language>
</elementInfo>
' #txt
Ba0 f25 168 138 112 44 -42 -8 #rect
Ba0 f26 expr out #txt
Ba0 f26 112 160 168 160 #arcP
Ba0 f13 expr out #txt
Ba0 f13 280 160 360 160 #arcP
Ba0 f15 expr out #txt
Ba0 f15 111 256 248 288 #arcP
Ba0 f15 1 160 256 #addKink
Ba0 f15 2 160 288 #addKink
Ba0 f15 0 0.3668289624839707 0 0 #arcLabel
Ba0 f9 expr out #txt
Ba0 f9 111 321 248 288 #arcP
Ba0 f9 1 160 321 #addKink
Ba0 f9 2 160 288 #addKink
Ba0 f9 0 0.8794947055521611 0 0 #arcLabel
Ba0 f16 expr out #txt
Ba0 f16 360 288 416 182 #arcP
Ba0 f16 1 416 288 #addKink
Ba0 f16 0 0.8664662612862978 0 0 #arcLabel
Ba0 f4 outLink delete.ivp #txt
Ba0 f4 inParamDecl '<String id> param;' #txt
Ba0 f4 inParamTable 'out.id=param.id;
' #txt
Ba0 f4 requestEnabled true #txt
Ba0 f4 triggerEnabled false #txt
Ba0 f4 callSignature delete(String) #txt
Ba0 f4 persist false #txt
Ba0 f4 startName 'Delete Dossier' #txt
Ba0 f4 startCategory business/data #txt
Ba0 f4 taskData 'TaskTriggered.CATEGORY=Deletion/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ba0 f4 caseData case.category=Dossier/Delete #txt
Ba0 f4 showInStartList 0 #txt
Ba0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete.ivp</name>
    </language>
</elementInfo>
' #txt
Ba0 f4 @C|.responsibility Everybody #txt
Ba0 f4 81 402 30 30 -30 17 #rect
Ba0 f1 expr out #txt
Ba0 f1 280 416 416 182 #arcP
Ba0 f1 1 416 416 #addKink
Ba0 f1 1 0.2094017094017094 0 0 #arcLabel
Ba0 f8 dialogId workflow.businessdata.BusinessDataDossierLazyBrowser #txt
Ba0 f8 startMethod start() #txt
Ba0 f8 requestActionDecl '<> param;' #txt
Ba0 f8 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Ba0 f8 responseMappingAction 'out=in;
' #txt
Ba0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse lazy</name>
    </language>
</elementInfo>
' #txt
Ba0 f8 364 490 112 44 -35 -7 #rect
Ba0 f17 outLink browseLazy.ivp #txt
Ba0 f17 inParamDecl '<> param;' #txt
Ba0 f17 requestEnabled true #txt
Ba0 f17 triggerEnabled false #txt
Ba0 f17 callSignature browseLazy() #txt
Ba0 f17 persist false #txt
Ba0 f17 startName '5.1: Browse Dossiers (Business Data)' #txt
Ba0 f17 startDescription 'Business Data Store Demo. Manage dossier objects in the Business Data Repository' #txt
Ba0 f17 startCategory business/data #txt
Ba0 f17 startCustomFields 'cssIcon=fa fa-list' #txt
Ba0 f17 taskData 'TaskTriggered.CATEGORY=View/Dossier
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ba0 f17 caseData case.category=Dossier/Browse #txt
Ba0 f17 showInStartList 1 #txt
Ba0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browseLazy.ivp</name>
    </language>
</elementInfo>
' #txt
Ba0 f17 @C|.responsibility Everybody #txt
Ba0 f17 86 497 30 30 -45 17 #rect
Ba0 f18 533 497 30 30 0 15 #rect
Ba0 f19 actionTable 'out=in;
' #txt
Ba0 f19 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.DemoDataCreator;

DemoDataCreator.createDemoDataIfNotExist();' #txt
Ba0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create test data</name>
    </language>
</elementInfo>
' #txt
Ba0 f19 172 490 112 44 -42 -8 #rect
Ba0 f20 expr out #txt
Ba0 f20 116 512 172 512 #arcP
Ba0 f21 expr out #txt
Ba0 f21 284 512 364 512 #arcP
Ba0 f22 expr out #txt
Ba0 f22 476 512 533 512 #arcP
>Proto Ba0 .type workflow.businessdata.Data #txt
>Proto Ba0 .processKind NORMAL #txt
>Proto Ba0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ba0 0 0 32 24 18 0 #rect
>Proto Ba0 @|BIcon #fIcon
Ba0 f11 mainOut f14 tail #connect
Ba0 f14 head f12 mainIn #connect
Ba0 f4 mainOut f6 tail #connect
Ba0 f6 head f3 mainIn #connect
Ba0 f10 mainOut f26 tail #connect
Ba0 f26 head f25 mainIn #connect
Ba0 f25 mainOut f13 tail #connect
Ba0 f13 head f11 mainIn #connect
Ba0 f0 mainOut f15 tail #connect
Ba0 f15 head f5 mainIn #connect
Ba0 f7 mainOut f9 tail #connect
Ba0 f9 head f5 mainIn #connect
Ba0 f5 mainOut f16 tail #connect
Ba0 f16 head f11 mainIn #connect
Ba0 f3 mainOut f1 tail #connect
Ba0 f1 head f11 mainIn #connect
Ba0 f8 mainOut f22 tail #connect
Ba0 f22 head f18 mainIn #connect
Ba0 f17 mainOut f20 tail #connect
Ba0 f20 head f19 mainIn #connect
Ba0 f19 mainOut f21 tail #connect
Ba0 f21 head f8 mainIn #connect
