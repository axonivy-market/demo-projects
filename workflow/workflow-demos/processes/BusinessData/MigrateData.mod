[Ivy]
15DC0CCB70274584 9.3.0 #module
>Proto >Proto Collection #zClass
Ma0 MigrateData Big #zClass
Ma0 B #cInfo
Ma0 #process
Ma0 @TextInP .type .type #zField
Ma0 @TextInP .processKind .processKind #zField
Ma0 @AnnotationInP-0n ai ai #zField
Ma0 @MessageFlowInP-0n messageIn messageIn #zField
Ma0 @MessageFlowOutP-0n messageOut messageOut #zField
Ma0 @TextInP .xml .xml #zField
Ma0 @TextInP .responsibility .responsibility #zField
Ma0 @StartRequest f0 '' #zField
Ma0 @EndTask f1 '' #zField
Ma0 @GridStep f3 '' #zField
Ma0 @PushWFArc f2 '' #zField
Ma0 @PushWFArc f4 '' #zField
Ma0 @InfoButton f5 '' #zField
Ma0 @AnnotationArc f6 '' #zField
>Proto Ma0 Ma0 MigrateData #zField
Ma0 f0 outLink migrate.ivp #txt
Ma0 f0 inParamDecl '<> param;' #txt
Ma0 f0 requestEnabled true #txt
Ma0 f0 triggerEnabled false #txt
Ma0 f0 callSignature migrate() #txt
Ma0 f0 persist false #txt
Ma0 f0 startName '5.3 Migrate BusinessData format' #txt
Ma0 f0 startDescription 'Starts the migration of the internal Business Data JSON format. 
This is an administrative tasks, that should not be made accessible to worklow users.' #txt
Ma0 f0 startCategory business/data #txt
Ma0 f0 startCustomFields 'cssIcon=fa fa-exchange' #txt
Ma0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ma0 f0 caseData businessCase.attach=true #txt
Ma0 f0 showInStartList 1 #txt
Ma0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>migrate.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ma0 f0 @C|.responsibility Everybody #txt
Ma0 f0 81 49 30 30 -34 17 #rect
Ma0 f1 305 49 30 30 0 15 #rect
Ma0 f3 actionTable 'out=in;
' #txt
Ma0 f3 actionCode 'import ch.ivyteam.ivy.business.data.store.migration.BusinessDataJsonFormatMigrator;
boolean isDryRun = true;
BusinessDataJsonFormatMigrator.migrate(workflow.businessdata.Dossier.class, isDryRun);' #txt
Ma0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>migrate data</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ma0 f3 152 42 112 44 -40 -7 #rect
Ma0 f2 expr out #txt
Ma0 f2 264 64 305 64 #arcP
Ma0 f4 expr out #txt
Ma0 f4 111 64 152 64 #arcP
Ma0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Migrates the stored Business Data values to the latest format.
This is only required for Business Data written with an engine before Axon Ivy 6.7.0.</name>
        <nameStyle>71
76,0,12
1
</nameStyle>
    </language>
</elementInfo>
' #txt
Ma0 f5 24 146 608 44 -294 -15 #rect
Ma0 f6 328 146 96 79 #arcP
Ma0 f6 1 96 120 #addKink
Ma0 f6 0 0.3950341699400208 0 0 #arcLabel
>Proto Ma0 .type workflow.humantask.Data #txt
>Proto Ma0 .processKind NORMAL #txt
>Proto Ma0 0 0 32 24 18 0 #rect
>Proto Ma0 @|BIcon #fIcon
Ma0 f3 mainOut f2 tail #connect
Ma0 f2 head f1 mainIn #connect
Ma0 f0 mainOut f4 tail #connect
Ma0 f4 head f3 mainIn #connect
Ma0 f5 ao f6 tail #connect
Ma0 f6 head f0 @CG|ai #connect
