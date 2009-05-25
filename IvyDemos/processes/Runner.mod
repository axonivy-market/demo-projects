[Ivy]
[>Created: Mon May 25 22:02:57 CEST 2009]
1215975017F13818 3.11 #module
>Proto >Proto Collection #zClass
Rr0 Runner Big #zClass
Rr0 B #cInfo
Rr0 #process
Rr0 @MessageFlowInP-0n messageIn messageIn #zField
Rr0 @MessageFlowOutP-0n messageOut messageOut #zField
Rr0 @TextInP .xml .xml #zField
Rr0 @TextInP .responsibility .responsibility #zField
Rr0 @TextInP .resExport .resExport #zField
Rr0 @TextInP .type .type #zField
Rr0 @TextInP .processKind .processKind #zField
Rr0 @AnnotationInP-0n ai ai #zField
Rr0 @StartRequest f0 '' #zField
Rr0 @GridStep f1 '' #zField
Rr0 @PushWFArc f2 '' #zField
Rr0 @RichDialog f3 '' #zField
Rr0 @PushWFArc f4 '' #zField
Rr0 @EndTask f5 '' #zField
Rr0 @PushWFArc f6 '' #zField
Rr0 @InfoButton f7 '' #zField
Rr0 @AnnotationArc f8 '' #zField
>Proto Rr0 Rr0 Runner #zField
Rr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>run demo runner</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rr0 f0 @C|.responsibility Everybody #txt
Rr0 f0 outLink demoRunner.ivp #txt
Rr0 f0 type ivydemos.Data #txt
Rr0 f0 template "" #txt
Rr0 f0 templateWizard '#
#Mon May 25 22:02:54 CEST 2009
' #txt
Rr0 f0 taskData '#
#Mon May 25 22:02:54 CEST 2009
.DESC=The DemoRunner application shows a list of all available Demos and allows you to select and start them.
.SHOW=1
.WFU=0
.NAM=Start the DemoRunner
' #txt
Rr0 f0 caseData '#
#Mon May 25 22:02:54 CEST 2009
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
Rr0 f0 showInStartList 1 #txt
Rr0 f0 67 123 26 26 14 0 #rect
Rr0 f0 @|StartRequestIcon #fIcon
Rr0 f1 actionDecl 'ivydemos.Data out;
' #txt
Rr0 f1 actionTable 'out=in;
' #txt
Rr0 f1 actionCode 'List<String> demoIds = [];
demoIds = [
	"ch.ivyteam.ivy.demo.chat.SimpleChat",
	"ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking",
	"ch.ivyteam.ivy.demo.commondialogs.DialogOverview",
	"ch.ivyteam.ivy.demo.dnd.SimpleDnd",
	"ch.ivyteam.ivy.demo.enablers.Quiz",
	"ch.ivyteam.ivy.demo.lookuptextfield.FileSearch/special",
	"ch.ivyteam.ivy.demo.multiselect.MultiSelect",
	"ch.ivyteam.ivy.demo.pollingtimer.Clock",
	"ch.ivyteam.ivy.demo.process.ProcessStarter",
	"ch.ivyteam.ivy.demo.search.ListSearch/special",
	"ch.ivyteam.ivy.demo.tabletree.FileBrowser",
	"ch.ivyteam.ivy.demo.upload.ImageUpload"
];
out.demos = demoIds;' #txt
Rr0 f1 type ivydemos.Data #txt
Rr0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define demo ID''s</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rr0 f1 62 172 36 24 20 8 #rect
Rr0 f1 @|StepIcon #fIcon
Rr0 f2 expr out #txt
Rr0 f2 80 149 80 172 #arcP
Rr0 f3 targetWindow NEW #txt
Rr0 f3 targetDisplay TOP #txt
Rr0 f3 richDialogId ch.ivyteam.ivy.demo.runner.DemoRunner #txt
Rr0 f3 startMethod start(List<String>) #txt
Rr0 f3 type ivydemos.Data #txt
Rr0 f3 requestActionDecl '<List<String> demoRichDialogIds> param;' #txt
Rr0 f3 requestMappingAction 'param.demoRichDialogIds=in.demos;
' #txt
Rr0 f3 responseActionDecl 'ivydemos.Data out;
' #txt
Rr0 f3 responseMappingAction 'out=in;
' #txt
Rr0 f3 windowConfiguration '#Mon May 25 12:40:26 CEST 2009
height=700
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=800
title=Demo Runner
' #txt
Rr0 f3 isAsynch false #txt
Rr0 f3 isInnerRd false #txt
Rr0 f3 isDialog false #txt
Rr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open demo runner</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rr0 f3 62 228 36 24 20 -2 #rect
Rr0 f3 @|RichDialogIcon #fIcon
Rr0 f4 expr out #txt
Rr0 f4 80 196 80 228 #arcP
Rr0 f5 type ivydemos.Data #txt
Rr0 f5 67 283 26 26 14 0 #rect
Rr0 f5 @|EndIcon #fIcon
Rr0 f6 expr out #txt
Rr0 f6 80 252 80 283 #arcP
Rr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>How this works:
- Add a new demo with it''s ID to the list of demo ID''s.
- If the demo needs to be executed with special start parameters, 
  then add &quot;/special&quot; at the end of the ID and edit the special 
  cases in the ch.ivyteam.ivy.demo.runner.DemoRunner logic.</name>
        <nameStyle>263,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rr0 f7 217 51 366 90 -178 -40 #rect
Rr0 f7 @|IBIcon #fIcon
Rr0 f7 -657956|-1|-16777216 #nodeStyle
Rr0 f8 400 141 98 184 #arcP
Rr0 f8 1 304 184 #addKink
Rr0 f8 0 0.4235915679700597 0 0 #arcLabel
>Proto Rr0 .processKind NORMAL #txt
>Proto Rr0 0 0 32 24 18 0 #rect
>Proto Rr0 @|BIcon #fIcon
Rr0 f0 mainOut f2 tail #connect
Rr0 f2 head f1 mainIn #connect
Rr0 f1 mainOut f4 tail #connect
Rr0 f4 head f3 mainIn #connect
Rr0 f3 mainOut f6 tail #connect
Rr0 f6 head f5 mainIn #connect
Rr0 f7 ao f8 tail #connect
Rr0 f8 head f1 @CG|ai #connect
