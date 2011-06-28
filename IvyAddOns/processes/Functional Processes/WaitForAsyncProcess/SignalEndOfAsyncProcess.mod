[Ivy]
[>Created: Thu May 19 08:17:20 CEST 2011]
1305425C2ECC621D 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SignalEndOfAsyncProcess Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartSub f0 '' #zField
Ss0 @EndSub f1 '' #zField
Ss0 @GridStep f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @StartSub f5 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @InfoButton f7 '' #zField
>Proto Ss0 Ss0 SignalEndOfAsyncProcess #zField
Ss0 f0 inParamDecl '<java.lang.String parameterName,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter parameter> param;' #txt
Ss0 f0 inParamTable 'out.parameter=param.parameter;
out.parameterName=param.parameterName;
' #txt
Ss0 f0 outParamDecl '<> result;
' #txt
Ss0 f0 actionDecl 'ch.ivyteam.ivy.addons.process.parameter.Data out;
' #txt
Ss0 f0 callSignature signalEnd(String,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter) #txt
Ss0 f0 type ch.ivyteam.ivy.addons.process.parameter.Data #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>signalEnd(String,String,ProcessParameter)</name>
        <nameStyle>41,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 99 35 26 26 14 0 #rect
Ss0 f0 @|StartSubIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.addons.process.parameter.Data #txt
Ss0 f1 99 291 26 26 14 0 #rect
Ss0 f1 @|EndSubIcon #fIcon
Ss0 f4 actionDecl 'ch.ivyteam.ivy.addons.process.parameter.Data out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 actionCode 'import java.util.*;
import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcessHelper;
Map map = new HashMap();

map.put(WaitForAsyncProcessHelper.PARAM_NAME, in.parameterName);
map.put(WaitForAsyncProcessHelper.PARAM, in.parameter);

WaitForAsyncProcess.signalEndOfProcess(ivy.case, map);
' #txt
Ss0 f4 type ch.ivyteam.ivy.addons.process.parameter.Data #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send signal</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f4 94 148 36 24 20 -2 #rect
Ss0 f4 @|StepIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 112 61 112 148 #arcP
Ss0 f3 expr out #txt
Ss0 f3 112 172 112 291 #arcP
Ss0 f5 inParamDecl '<> param;' #txt
Ss0 f5 inParamTable 'out.parameter=null;
out.parameterName="";
' #txt
Ss0 f5 outParamDecl '<> result;
' #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.addons.process.parameter.Data out;
' #txt
Ss0 f5 callSignature signalEndNoParameter() #txt
Ss0 f5 type ch.ivyteam.ivy.addons.process.parameter.Data #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>signalEndNoParameter()</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 419 35 26 26 14 0 #rect
Ss0 f5 @|StartSubIcon #fIcon
Ss0 f6 expr out #txt
Ss0 f6 432 61 112 148 #arcP
Ss0 f6 1 432 104 #addKink
Ss0 f6 2 112 104 #addKink
Ss0 f6 1 0.5022321428571427 0 0 #arcLabel
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>/*
 * Use this method to signal the end of the running process and send process data back to your IntermediateEvent
 * @param parameterName name of the ProcessParameter you want to use to access the data in the result of your IntermediateEvent (result.getProcessParameterFor(&quot;parameterName&quot;);)
 * @param parameter the ProcessParameter objects you want to access in the result of your IntermediateEvent
 */
signalEnd(parameterName, parameter)

/*
 * Use this method to signal the end of the running process with no additional data to send back to your IntermediateEvent
 */
signalEndNoParameter()</name>
        <nameStyle>3,7
112,7
1,7
289,7
38,7
129,7
23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 263 165 1058 246 -505 -95 #rect
Ss0 f7 @|IBIcon #fIcon
Ss0 f7 -5972572|-5972572|-16777216 #nodeStyle
>Proto Ss0 .type ch.ivyteam.ivy.addons.process.parameter.Data #txt
>Proto Ss0 .processKind CALLABLE_SUB #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f4 mainIn #connect
Ss0 f4 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f5 mainOut f6 tail #connect
Ss0 f6 head f4 mainIn #connect
