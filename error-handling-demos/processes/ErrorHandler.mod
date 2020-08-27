[Ivy]
150148B81ACE3E1E 9.2.0 #module
>Proto >Proto Collection #zClass
Er0 ErrorHandler Big #zClass
Er0 B #cInfo
Er0 #process
Er0 @TextInP .type .type #zField
Er0 @TextInP .processKind .processKind #zField
Er0 @AnnotationInP-0n ai ai #zField
Er0 @MessageFlowInP-0n messageIn messageIn #zField
Er0 @MessageFlowOutP-0n messageOut messageOut #zField
Er0 @TextInP .xml .xml #zField
Er0 @TextInP .responsibility .responsibility #zField
Er0 @ProcessException f0 '' #zField
Er0 @EndTask f1 '' #zField
Er0 @InfoButton f3 '' #zField
Er0 @AnnotationArc f4 '' #zField
Er0 @InfoButton f5 '' #zField
Er0 @UserDialog f6 '' #zField
Er0 @PushWFArc f7 '' #zField
Er0 @PushWFArc f2 '' #zField
>Proto Er0 Er0 ErrorHandler #zField
Er0 f0 actionTable 'out=in;
out.errorCode=error.getErrorCode();
out.errorText=error.getErrorMessage();
' #txt
Er0 f0 errorCode ivy:error #txt
Er0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f0 65 161 30 30 -24 17 #rect
Er0 f0 @|ExceptionIcon #fIcon
Er0 f1 321 161 30 30 0 15 #rect
Er0 f1 @|EndIcon #fIcon
Er0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Catches uncaught system errors in the project</name>
        <nameStyle>45
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f3 136 233 256 30 -125 -8 #rect
Er0 f3 @|IBIcon #fIcon
Er0 f4 136 248 89 187 #arcP
Er0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Global Error Process
The name of a global error process must start with "Error".
Error Start Events in a global error process catch uncaught errors in the whole project.</name>
        <nameStyle>21,8
51,7
1,5,7
5,5,7
2,5,7
89,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f5 64 34 480 60 -233 -26 #rect
Er0 f5 @|IBIcon #fIcon
Er0 f5 -1|-1|-65536 #nodeStyle
Er0 f6 dialogId error.handling.demo.GlobalError #txt
Er0 f6 startMethod start(String,String) #txt
Er0 f6 requestActionDecl '<String errorCode,String errorText> param;' #txt
Er0 f6 requestMappingAction 'param.errorCode=in.errorCode;
param.errorText=in.errorText;
' #txt
Er0 f6 responseActionDecl 'error.handling.demo.ErrorHandler out;
' #txt
Er0 f6 responseMappingAction 'out=in;
' #txt
Er0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display Error</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f6 152 154 112 44 -37 -7 #rect
Er0 f6 @|UserDialogIcon #fIcon
Er0 f7 expr out #txt
Er0 f7 95 176 152 176 #arcP
Er0 f2 expr out #txt
Er0 f2 264 176 321 176 #arcP
>Proto Er0 .type error.handling.demo.ErrorHandler #txt
>Proto Er0 .processKind NORMAL #txt
>Proto Er0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Er0 0 0 32 24 18 0 #rect
>Proto Er0 @|BIcon #fIcon
Er0 f3 ao f4 tail #connect
Er0 f4 head f0 @CG|ai #connect
Er0 f0 mainOut f7 tail #connect
Er0 f7 head f6 mainIn #connect
Er0 f6 mainOut f2 tail #connect
Er0 f2 head f1 mainIn #connect
