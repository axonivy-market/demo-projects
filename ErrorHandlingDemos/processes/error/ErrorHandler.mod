[Ivy]
[>Created: Tue Sep 29 09:03:17 CEST 2015]
150148B81ACE3E1E 3.18 #module
>Proto >Proto Collection #zClass
Er0 ErrorHandler Big #zClass
Er0 B #cInfo
Er0 #process
Er0 @TextInP .resExport .resExport #zField
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
Er0 @RichDialog f6 '' #zField
Er0 @PushWFArc f7 '' #zField
Er0 @PushWFArc f2 '' #zField
>Proto Er0 Er0 ErrorHandler #zField
Er0 f0 .resExport export #txt
Er0 f0 actionDecl 'error.handling.demo.ErrorHandler out;
' #txt
Er0 f0 actionTable 'out=in;
out.errorCode=error.getErrorCode();
out.errorText=error.getErrorMessage();
' #txt
Er0 f0 type error.handling.demo.ErrorHandler #txt
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
Er0 f0 81 177 30 30 -24 17 #rect
Er0 f0 @|ExceptionIcon #fIcon
Er0 f1 type error.handling.demo.ErrorHandler #txt
Er0 f1 337 177 30 30 0 15 #rect
Er0 f1 @|EndIcon #fIcon
Er0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Catches all uncaught system errors on the project</name>
        <nameStyle>49
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f3 168 113 304 30 -143 -7 #rect
Er0 f3 @|IBIcon #fIcon
Er0 f4 168 128 107 182 #arcP
Er0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Global Error Process</name>
        <nameStyle>20,8
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f5 88 25 176 30 -80 -10 #rect
Er0 f5 @|IBIcon #fIcon
Er0 f5 -1|-1|-65536 #nodeStyle
Er0 f6 targetWindow NEW:card: #txt
Er0 f6 targetDisplay TOP #txt
Er0 f6 richDialogId error.handling.demo.GlobalError #txt
Er0 f6 startMethod start(String,String) #txt
Er0 f6 type error.handling.demo.ErrorHandler #txt
Er0 f6 requestActionDecl '<String errorCode, String errorText> param;' #txt
Er0 f6 requestMappingAction 'param.errorCode=in.errorCode;
param.errorText=in.errorText;
' #txt
Er0 f6 responseActionDecl 'error.handling.demo.ErrorHandler out;
' #txt
Er0 f6 responseMappingAction 'out=in;
' #txt
Er0 f6 windowConfiguration '* ' #txt
Er0 f6 isAsynch false #txt
Er0 f6 isInnerRd false #txt
Er0 f6 userContext '* ' #txt
Er0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display Error</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f6 168 170 112 44 -37 -7 #rect
Er0 f6 @|RichDialogIcon #fIcon
Er0 f7 expr out #txt
Er0 f7 111 192 168 192 #arcP
Er0 f2 expr out #txt
Er0 f2 280 192 337 192 #arcP
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
