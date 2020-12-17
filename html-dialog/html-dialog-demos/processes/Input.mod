[Ivy]
145D18298A3E81CF 9.2.0 #module
>Proto >Proto Collection #zClass
It0 Input Big #zClass
It0 B #cInfo
It0 #process
It0 @TextInP .type .type #zField
It0 @TextInP .processKind .processKind #zField
It0 @AnnotationInP-0n ai ai #zField
It0 @MessageFlowInP-0n messageIn messageIn #zField
It0 @MessageFlowOutP-0n messageOut messageOut #zField
It0 @TextInP .xml .xml #zField
It0 @TextInP .responsibility .responsibility #zField
It0 @UserDialog f69 '' #zField
It0 @UserDialog f54 '' #zField
It0 @StartRequest f52 '' #zField
It0 @UserDialog f17 '' #zField
It0 @GridStep f35 '' #zField
It0 @StartRequest f67 '' #zField
It0 @EndTask f53 '' #zField
It0 @EndTask f16 '' #zField
It0 @StartRequest f79 '' #zField
It0 @StartRequest f15 '' #zField
It0 @EndTask f64 '' #zField
It0 @UserDialog f63 '' #zField
It0 @EndTask f78 '' #zField
It0 @StartRequest f62 '' #zField
It0 @EndTask f68 '' #zField
It0 @UserDialog f77 '' #zField
It0 @PushWFArc f19 '' #zField
It0 @PushWFArc f36 '' #zField
It0 @PushWFArc f18 '' #zField
It0 @PushWFArc f55 '' #zField
It0 @PushWFArc f56 '' #zField
It0 @PushWFArc f65 '' #zField
It0 @PushWFArc f66 '' #zField
It0 @PushWFArc f70 '' #zField
It0 @PushWFArc f71 '' #zField
It0 @PushWFArc f80 '' #zField
It0 @PushWFArc f81 '' #zField
>Proto It0 It0 Input #zField
It0 f69 dialogId ch.ivyteam.htmldialog.demo.input.MultiViewDemo #txt
It0 f69 startMethod start() #txt
It0 f69 requestActionDecl '<> param;' #txt
It0 f69 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
It0 f69 248 426 112 44 58 -2 #rect
It0 f69 @|UserDialogIcon #fIcon
It0 f69 -1|-1|-9671572 #nodeStyle
It0 f54 dialogId ch.ivyteam.htmldialog.demo.input.BeanValidationDemo #txt
It0 f54 startMethod start() #txt
It0 f54 requestActionDecl '<> param;' #txt
It0 f54 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
It0 f54 responseMappingAction 'out=in;
' #txt
It0 f54 248 138 112 44 58 -2 #rect
It0 f54 @|UserDialogIcon #fIcon
It0 f54 -1|-1|-9671572 #nodeStyle
It0 f52 outLink BeanValidationDemo.ivp #txt
It0 f52 inParamDecl '<> param;' #txt
It0 f52 requestEnabled true #txt
It0 f52 triggerEnabled false #txt
It0 f52 callSignature BeanValidationDemo() #txt
It0 f52 persist false #txt
It0 f52 startName 'Bean Validation Demo' #txt
It0 f52 startCategory input #txt
It0 f52 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
It0 f52 showInStartList 1 #txt
It0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BeanValidationDemo.ivp</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
It0 f52 @C|.responsibility Everybody #txt
It0 f52 113 145 30 30 -67 15 #rect
It0 f52 @|StartRequestIcon #fIcon
It0 f52 -1|-1|-9671572 #nodeStyle
It0 f17 dialogId ch.ivyteam.htmldialog.demo.input.FormDemo #txt
It0 f17 startMethod start() #txt
It0 f17 requestActionDecl '<> param;' #txt
It0 f17 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
It0 f17 responseMappingAction 'out=in;
' #txt
It0 f17 472 42 112 44 58 -2 #rect
It0 f17 @|UserDialogIcon #fIcon
It0 f17 -1|-1|-9671572 #nodeStyle
It0 f35 actionTable 'out=in;
' #txt
It0 f35 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.request.IHttpRequest;
IHttpRequest httpRequest = ivy.request as IHttpRequest;
String locale = httpRequest.getFirstParameter("language");
if (locale != "")
{
	ivy.session.setContentLocale(new Locale(locale));
	ivy.session.setFormattingLocale(new Locale(locale));
}' #txt
It0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set content language
for selenium test</name>
        <nameStyle>38,7
</nameStyle>
    </language>
</elementInfo>
' #txt
It0 f35 232 42 144 44 -52 -16 #rect
It0 f35 @|StepIcon #fIcon
It0 f35 -1|-1|-9671572 #nodeStyle
It0 f67 outLink MultiViewDemo.ivp #txt
It0 f67 inParamDecl '<> param;' #txt
It0 f67 requestEnabled true #txt
It0 f67 triggerEnabled false #txt
It0 f67 callSignature MultiViewDemo() #txt
It0 f67 persist false #txt
It0 f67 startName 'Multi View Demo' #txt
It0 f67 startCategory input #txt
It0 f67 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
It0 f67 showInStartList 1 #txt
It0 f67 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MultiViewDemo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
It0 f67 @C|.responsibility Everybody #txt
It0 f67 113 433 30 30 -51 15 #rect
It0 f67 @|StartRequestIcon #fIcon
It0 f67 -1|-1|-9671572 #nodeStyle
It0 f53 465 145 30 30 0 15 #rect
It0 f53 @|EndIcon #fIcon
It0 f53 -1|-1|-9671572 #nodeStyle
It0 f16 689 49 30 30 0 15 #rect
It0 f16 @|EndIcon #fIcon
It0 f16 -1|-1|-9671572 #nodeStyle
It0 f79 outLink FileUploadAdvancedModeDemo.ivp #txt
It0 f79 inParamDecl '<> param;' #txt
It0 f79 requestEnabled true #txt
It0 f79 triggerEnabled false #txt
It0 f79 callSignature FileUploadAdvancedModeDemo() #txt
It0 f79 persist false #txt
It0 f79 startName 'File upload demo' #txt
It0 f79 startCategory input #txt
It0 f79 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
It0 f79 showInStartList 1 #txt
It0 f79 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FileUploadAdvancedModeDemo.ivp</name>
    </language>
</elementInfo>
' #txt
It0 f79 @C|.responsibility Everybody #txt
It0 f79 113 337 30 30 -97 15 #rect
It0 f79 @|StartRequestIcon #fIcon
It0 f79 -1|-1|-9671572 #nodeStyle
It0 f15 outLink FormDemo.ivp #txt
It0 f15 inParamDecl '<> param;' #txt
It0 f15 requestEnabled true #txt
It0 f15 triggerEnabled false #txt
It0 f15 callSignature FormDemo() #txt
It0 f15 persist false #txt
It0 f15 startName FormDemo #txt
It0 f15 startCategory input #txt
It0 f15 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
It0 f15 showInStartList 1 #txt
It0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FormDemo.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
It0 f15 @C|.responsibility Everybody #txt
It0 f15 113 49 30 30 -40 15 #rect
It0 f15 @|StartRequestIcon #fIcon
It0 f15 -1|-1|-9671572 #nodeStyle
It0 f64 465 241 30 30 0 15 #rect
It0 f64 @|EndIcon #fIcon
It0 f64 -1|-1|-9671572 #nodeStyle
It0 f63 dialogId ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo #txt
It0 f63 startMethod start() #txt
It0 f63 requestActionDecl '<> param;' #txt
It0 f63 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
It0 f63 responseMappingAction 'out=in;
' #txt
It0 f63 248 234 112 44 58 -2 #rect
It0 f63 @|UserDialogIcon #fIcon
It0 f63 -1|-1|-9671572 #nodeStyle
It0 f78 465 337 30 30 0 15 #rect
It0 f78 @|EndIcon #fIcon
It0 f78 -1|-1|-9671572 #nodeStyle
It0 f62 outLink FileUploadSimpleModeDemo.ivp #txt
It0 f62 inParamDecl '<> param;' #txt
It0 f62 requestEnabled true #txt
It0 f62 triggerEnabled false #txt
It0 f62 callSignature FileUploadSimpleModeDemo() #txt
It0 f62 persist false #txt
It0 f62 startName 'File upload demo' #txt
It0 f62 startCategory input #txt
It0 f62 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
It0 f62 showInStartList 1 #txt
It0 f62 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FileUploadSimpleModeDemo.ivp</name>
    </language>
</elementInfo>
' #txt
It0 f62 @C|.responsibility Everybody #txt
It0 f62 113 241 30 30 -90 15 #rect
It0 f62 @|StartRequestIcon #fIcon
It0 f62 -1|-1|-9671572 #nodeStyle
It0 f68 465 433 30 30 0 15 #rect
It0 f68 @|EndIcon #fIcon
It0 f68 -1|-1|-9671572 #nodeStyle
It0 f77 dialogId ch.ivyteam.htmldialog.demo.input.FileUploadAdvancedModeDemo #txt
It0 f77 startMethod start() #txt
It0 f77 requestActionDecl '<> param;' #txt
It0 f77 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
It0 f77 responseMappingAction 'out=in;
' #txt
It0 f77 248 330 112 44 58 -2 #rect
It0 f77 @|UserDialogIcon #fIcon
It0 f77 -1|-1|-9671572 #nodeStyle
It0 f19 expr out #txt
It0 f19 584 64 689 64 #arcP
It0 f36 expr out #txt
It0 f36 143 64 232 64 #arcP
It0 f18 expr out #txt
It0 f18 376 64 472 64 #arcP
It0 f55 expr out #txt
It0 f55 143 160 248 160 #arcP
It0 f56 expr out #txt
It0 f56 360 160 465 160 #arcP
It0 f65 expr out #txt
It0 f65 143 256 248 256 #arcP
It0 f66 expr out #txt
It0 f66 360 256 465 256 #arcP
It0 f70 expr out #txt
It0 f70 143 448 248 448 #arcP
It0 f71 expr out #txt
It0 f71 360 448 465 448 #arcP
It0 f80 expr out #txt
It0 f80 143 352 248 352 #arcP
It0 f81 expr out #txt
It0 f81 360 352 465 352 #arcP
>Proto It0 .type htmlDialogDemos.Data #txt
>Proto It0 .processKind NORMAL #txt
>Proto It0 0 0 32 24 18 0 #rect
>Proto It0 @|BIcon #fIcon
It0 f17 mainOut f19 tail #connect
It0 f19 head f16 mainIn #connect
It0 f15 mainOut f36 tail #connect
It0 f36 head f35 mainIn #connect
It0 f35 mainOut f18 tail #connect
It0 f18 head f17 mainIn #connect
It0 f52 mainOut f55 tail #connect
It0 f55 head f54 mainIn #connect
It0 f54 mainOut f56 tail #connect
It0 f56 head f53 mainIn #connect
It0 f62 mainOut f65 tail #connect
It0 f65 head f63 mainIn #connect
It0 f63 mainOut f66 tail #connect
It0 f66 head f64 mainIn #connect
It0 f67 mainOut f70 tail #connect
It0 f70 head f69 mainIn #connect
It0 f69 mainOut f71 tail #connect
It0 f71 head f68 mainIn #connect
It0 f79 mainOut f80 tail #connect
It0 f80 head f77 mainIn #connect
It0 f77 mainOut f81 tail #connect
It0 f81 head f78 mainIn #connect
