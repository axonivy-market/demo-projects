[Ivy]
[>Created: Fri Dec 18 16:07:24 CET 2009]
1252083511F3E2B3 3.13 #module
>Proto >Proto Collection #zClass
mn0 main Big #zClass
mn0 B #cInfo
mn0 #process
mn0 @TextInP .xml .xml #zField
mn0 @TextInP .responsibility .responsibility #zField
mn0 @MessageFlowInP-0n messageIn messageIn #zField
mn0 @MessageFlowOutP-0n messageOut messageOut #zField
mn0 @AnnotationInP-0n ai ai #zField
mn0 @TextInP .resExport .resExport #zField
mn0 @TextInP .type .type #zField
mn0 @TextInP .processKind .processKind #zField
mn0 @StartRequest f0 '' #zField
mn0 @EndTask f1 '' #zField
mn0 @RichDialog f2 '' #zField
mn0 @PushWFArc f3 '' #zField
mn0 @PushWFArc f4 '' #zField
>Proto mn0 mn0 main #zField
mn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
mn0 f0 @C|.responsibility Everybody #txt
mn0 f0 outLink start1.ivp #txt
mn0 f0 type basicwfui.Data #txt
mn0 f0 template "" #txt
mn0 f0 templateWizard '#
#Mon Nov 23 11:52:34 CET 2009
' #txt
mn0 f0 taskData '#
#Mon Nov 23 11:52:34 CET 2009
.SHOW=1
.WFU=0
.NAM=basicWFUI
' #txt
mn0 f0 caseData '#
#Mon Nov 23 11:52:34 CET 2009
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
mn0 f0 showInStartList 1 #txt
mn0 f0 67 43 26 26 14 0 #rect
mn0 f0 @|StartRequestIcon #fIcon
mn0 f1 type basicwfui.Data #txt
mn0 f1 67 179 26 26 14 0 #rect
mn0 f1 @|EndIcon #fIcon
mn0 f2 targetWindow NEW:card: #txt
mn0 f2 targetDisplay TOP #txt
mn0 f2 richDialogId ui.basic.main #txt
mn0 f2 startMethod start() #txt
mn0 f2 type basicwfui.Data #txt
mn0 f2 requestActionDecl '<> param;' #txt
mn0 f2 responseActionDecl 'basicwfui.Data out;
' #txt
mn0 f2 responseMappingAction 'out=in;
' #txt
mn0 f2 windowConfiguration '{/title "Xpert.ivy Workflow"/width 1000 /height 800 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
mn0 f2 isAsynch false #txt
mn0 f2 isInnerRd false #txt
mn0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call BasicWFUI</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
mn0 f2 62 108 36 24 20 -2 #rect
mn0 f2 @|RichDialogIcon #fIcon
mn0 f3 expr out #txt
mn0 f3 80 69 80 108 #arcP
mn0 f4 expr out #txt
mn0 f4 80 132 80 179 #arcP
>Proto mn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto mn0 .type basicwfui.Data #txt
>Proto mn0 .processKind NORMAL #txt
>Proto mn0 0 0 32 24 18 0 #rect
>Proto mn0 @|BIcon #fIcon
mn0 f0 mainOut f3 tail #connect
mn0 f3 head f2 mainIn #connect
mn0 f2 mainOut f4 tail #connect
mn0 f4 head f1 mainIn #connect
