[Ivy]
167C61A86526BDE9 3.28 #module
>Proto >Proto Collection #zClass
Fe0 Frame Big #zClass
Fe0 B #cInfo
Fe0 #process
Fe0 @TextInP .type .type #zField
Fe0 @TextInP .processKind .processKind #zField
Fe0 @AnnotationInP-0n ai ai #zField
Fe0 @MessageFlowInP-0n messageIn messageIn #zField
Fe0 @MessageFlowOutP-0n messageOut messageOut #zField
Fe0 @TextInP .xml .xml #zField
Fe0 @TextInP .responsibility .responsibility #zField
Fe0 @EndTask f1 '' #zField
Fe0 @UserDialog f11 '' #zField
Fe0 @PushWFArc f10 '' #zField
Fe0 @StartRequest f13 '' #zField
Fe0 @PushWFArc f6 '' #zField
>Proto Fe0 Fe0 Frame #zField
Fe0 f1 385 145 30 30 0 15 #rect
Fe0 f1 @|EndIcon #fIcon
Fe0 f11 dialogId ch.ivyteam.wf.workflow.Frame #txt
Fe0 f11 startMethod start(String) #txt
Fe0 f11 requestActionDecl '<String url> param;' #txt
Fe0 f11 requestActionCode 'import java.net.URI;
//Only support relative urls (security)
URI path = new URI(in.url);
param.url = path.getPath() + "?" + path.getQuery();' #txt
Fe0 f11 responseMappingAction 'out=in;
' #txt
Fe0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Frame</name>
    </language>
</elementInfo>
' #txt
Fe0 f11 224 138 112 44 -19 -7 #rect
Fe0 f11 @|UserDialogIcon #fIcon
Fe0 f10 336 160 385 160 #arcP
Fe0 f13 outLink DefaultFramePage.ivp #txt
Fe0 f13 inParamDecl '<String relativeUrl,Number runningTaskId> param;' #txt
Fe0 f13 inParamTable 'out.taskId=param.runningTaskId;
out.url=param.relativeUrl;
' #txt
Fe0 f13 requestEnabled true #txt
Fe0 f13 triggerEnabled false #txt
Fe0 f13 callSignature DefaultFramePage(String,Number) #txt
Fe0 f13 caseData businessCase.attach=true #txt
Fe0 f13 showInStartList 0 #txt
Fe0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultFramePage.ivp</name>
    </language>
</elementInfo>
' #txt
Fe0 f13 @C|.responsibility Everybody #txt
Fe0 f13 81 145 30 30 -50 18 #rect
Fe0 f13 @|StartRequestIcon #fIcon
Fe0 f6 111 160 224 160 #arcP
>Proto Fe0 .type ch.ivyteam.wf.FrameData #txt
>Proto Fe0 .processKind NORMAL #txt
>Proto Fe0 0 0 32 24 18 0 #rect
>Proto Fe0 @|BIcon #fIcon
Fe0 f11 mainOut f10 tail #connect
Fe0 f10 head f1 mainIn #connect
Fe0 f13 mainOut f6 tail #connect
Fe0 f6 head f11 mainIn #connect
