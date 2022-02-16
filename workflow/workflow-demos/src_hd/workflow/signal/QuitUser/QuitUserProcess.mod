[Ivy]
151CA244D672B3A4 9.4.0 #module
>Proto >Proto Collection #zClass
Qs0 QuitUserProcess Big #zClass
Qs0 RD #cInfo
Qs0 #process
Qs0 @TextInP .type .type #zField
Qs0 @TextInP .processKind .processKind #zField
Qs0 @AnnotationInP-0n ai ai #zField
Qs0 @MessageFlowInP-0n messageIn messageIn #zField
Qs0 @MessageFlowOutP-0n messageOut messageOut #zField
Qs0 @TextInP .xml .xml #zField
Qs0 @TextInP .responsibility .responsibility #zField
Qs0 @UdInit f0 '' #zField
Qs0 @UdProcessEnd f1 '' #zField
Qs0 @UdEvent f3 '' #zField
Qs0 @UdExitEnd f4 '' #zField
Qs0 @PushWFArc f5 '' #zField
Qs0 @GridStep f6 '' #zField
Qs0 @PushWFArc f7 '' #zField
Qs0 @PushWFArc f2 '' #zField
>Proto Qs0 Qs0 QuitUserProcess #zField
Qs0 f0 guid 151CA244D8521FFA #txt
Qs0 f0 method start() #txt
Qs0 f0 inParameterDecl '<> param;' #txt
Qs0 f0 inParameterMapAction 'out.quitUserEvent.reason="";
' #txt
Qs0 f0 outParameterDecl '<workflow.signal.QuitUserEvent quitUserEvent> result;' #txt
Qs0 f0 outParameterMapAction 'result.quitUserEvent=in.quitUserEvent;
' #txt
Qs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Qs0 f0 83 51 26 26 -16 15 #rect
Qs0 f1 339 51 26 26 0 12 #rect
Qs0 f3 guid 151CA244D9266BBE #txt
Qs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Qs0 f3 83 147 26 26 -15 12 #rect
Qs0 f4 211 147 26 26 0 12 #rect
Qs0 f5 expr out #txt
Qs0 f5 109 160 211 160 #arcP
Qs0 f6 actionTable 'out=in;
' #txt
Qs0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.query.CaseQuery;
import com.fasterxml.jackson.databind.ser.PropertyFilter;

CaseQuery query = CaseQuery.create().where()
	.state().isEqual(ch.ivyteam.ivy.workflow.CaseState.RUNNING);

out.cases = ivy.wf.getCaseQueryExecutor().getResults(query, 0, -1);
' #txt
Qs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find active cases</name>
    </language>
</elementInfo>
' #txt
Qs0 f6 168 42 112 44 -45 -8 #rect
Qs0 f7 expr out #txt
Qs0 f7 109 64 168 64 #arcP
Qs0 f2 expr out #txt
Qs0 f2 280 64 339 64 #arcP
>Proto Qs0 .type workflow.signal.QuitUser.QuitUserData #txt
>Proto Qs0 .processKind HTML_DIALOG #txt
>Proto Qs0 -8 -8 16 16 16 26 #rect
Qs0 f3 mainOut f5 tail #connect
Qs0 f5 head f4 mainIn #connect
Qs0 f0 mainOut f7 tail #connect
Qs0 f7 head f6 mainIn #connect
Qs0 f6 mainOut f2 tail #connect
Qs0 f2 head f1 mainIn #connect
