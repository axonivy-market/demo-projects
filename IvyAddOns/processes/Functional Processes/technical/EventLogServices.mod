[Ivy]
[>Created: Mon Oct 18 14:01:30 CEST 2010]
12844EFAEBB78898 3.13.1 #module
>Proto >Proto Collection #zClass
Es0 EventLogServices Big #zClass
Es0 B #cInfo
Es0 #process
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @StartSub f0 '' #zField
Es0 @EndSub f1 '' #zField
Es0 @StartSub f3 '' #zField
Es0 @EndSub f8 '' #zField
Es0 @GridStep f10 '' #zField
Es0 @PushWFArc f11 '' #zField
Es0 @PushWFArc f13 '' #zField
Es0 @GridStep f15 '' #zField
Es0 @PushWFArc f16 '' #zField
Es0 @PushWFArc f14 '' #zField
>Proto Es0 Es0 EventLogServices #zField
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readListByCaseId</name>
        <nameStyle>16,9
</nameStyle>
        <desc>Get all event log entries for a given case identifier.</desc>
    </language>
</elementInfo>
' #txt
Es0 f0 inParamDecl '<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId searchByCaseId> param;' #txt
Es0 f0 inParamTable 'out.readListId=param.searchByCaseId.caseId;
' #txt
Es0 f0 outParamDecl '<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus,List<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog> eventLogEntries> result;
' #txt
Es0 f0 outParamTable 'result.ivyResultStatus=in.ivyResultStatus;
result.eventLogEntries=in.eventLogs;
' #txt
Es0 f0 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices out;
' #txt
Es0 f0 callSignature readListByCaseId(ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId) #txt
Es0 f0 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f0 67 27 26 26 14 0 #rect
Es0 f0 @|StartSubIcon #fIcon
Es0 f1 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f1 67 267 26 26 14 0 #rect
Es0 f1 @|EndSubIcon #fIcon
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
        <nameStyle>6,5,7,9
</nameStyle>
        <desc>Add a new entry to the event log for the current case.</desc>
    </language>
</elementInfo>
' #txt
Es0 f3 inParamDecl '<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogData eventLogData> param;' #txt
Es0 f3 inParamTable 'out.eventLog.data=param.eventLogData;
' #txt
Es0 f3 outParamDecl '<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus> result;
' #txt
Es0 f3 outParamTable 'result.ivyResultStatus=in.ivyResultStatus;
' #txt
Es0 f3 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices out;
' #txt
Es0 f3 callSignature create(ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogData) #txt
Es0 f3 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f3 395 27 26 26 14 0 #rect
Es0 f3 @|StartSubIcon #fIcon
Es0 f8 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f8 395 267 26 26 14 0 #rect
Es0 f8 @|EndSubIcon #fIcon
Es0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call APIs to insert a new event log entry</name>
        <nameStyle>41,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f10 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices out;
' #txt
Es0 f10 actionTable 'out=in;
' #txt
Es0 f10 actionCode 'import ch.ivyteam.ivy.workflow.eventlog.EventLogDescription;
import ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity;

EventLogDescription eventLogDescription;

eventLogDescription = new EventLogDescription(in.eventLog.data.message, in.eventLog.data.eventType, in.eventLog.data.eventSubType);

if (out.eventLog.data.#application is initialized)
{
	eventLogDescription.applicationName = in.eventLog.data.application;
}
if (out.eventLog.data.#server is initialized)
{
	eventLogDescription.server = in.eventLog.data.server;
}
if (out.eventLog.data.#tower is initialized)
{
	eventLogDescription.system = in.eventLog.data.tower;
}
if (out.eventLog.data.#module is initialized)
{
	eventLogDescription.subsystem = in.eventLog.data.module;
}
if (out.eventLog.data.#environment is initialized)
{
	eventLogDescription.environment = in.eventLog.data.environment;
}
if (out.eventLog.data.#groupId is initialized)
{
	eventLogDescription.groupId = in.eventLog.data.groupId;
}

if (out.eventLog.data.#eventDate is initialized)
{
	eventLogDescription.setEventDateAndTime(out.eventLog.data.#eventDate, out.eventLog.data.#eventTime);
}

if (out.eventLog.data.#initiator is initialized)
{
	eventLogDescription.initiator = in.eventLog.data.initiator;
}

if (out.eventLog.data.#userName is initialized)
{
	eventLogDescription.userName = in.eventLog.data.userName;
}
if (out.eventLog.data.#source is initialized)
{
	eventLogDescription.source = in.eventLog.data.source;
}
if (out.eventLog.data.#severity is initialized)
{
	if (in.eventLog.data.severity == EventLogSeverity.INFO)
	{
			eventLogDescription.severity = ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.INFO;
	}
	else if (in.eventLog.data.severity == EventLogSeverity.WARNING)
	{
			eventLogDescription.severity = ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.WARNING;
	}
	else if (in.eventLog.data.severity == EventLogSeverity.ERROR)
	{
			eventLogDescription.severity = ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.ERROR;
	}
	else if (in.eventLog.data.severity == EventLogSeverity.FATAL)
	{
			eventLogDescription.severity = ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.FATAL;
	}
}
if (out.eventLog.data.#objectId is initialized)
{
	eventLogDescription.objectId = in.eventLog.data.objectId;
}
if (out.eventLog.data.#context is initialized)
{
	eventLogDescription.context = in.eventLog.data.context;
}
if (out.eventLog.data.#isBusinessEvent is initialized)
{
	eventLogDescription.businessEvent = in.eventLog.data.isBusinessEvent;
}
if (out.eventLog.data.#userComment is initialized)
{
	eventLogDescription.userComment = in.eventLog.data.userComment;
}
if (out.eventLog.data.#errorCode is initialized)
{
	eventLogDescription.errorCode = in.eventLog.data.errorCode;
}
if (out.eventLog.data.#userName is initialized)
{
	eventLogDescription.userName = in.eventLog.data.userName;
}
if (out.eventLog.data.#eventData is initialized)
{
	eventLogDescription.data = in.eventLog.data.eventData;
}

ivy.wf.createEventLog(eventLogDescription, true);
' #txt
Es0 f10 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f10 390 140 36 24 20 -2 #rect
Es0 f10 @|StepIcon #fIcon
Es0 f11 expr out #txt
Es0 f11 408 53 408 140 #arcP
Es0 f13 expr out #txt
Es0 f13 408 164 408 267 #arcP
Es0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call APIs to read the event logs of the case</name>
        <nameStyle>44,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f15 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices out;
' #txt
Es0 f15 actionTable 'out=in;
' #txt
Es0 f15 actionCode 'import ch.ivyteam.ivy.addons.technical.MessageCodes;
import ch.ivyteam.ivy.addons.data.technical.IvyResultStatusSeverity;
import ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity;
import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.ivy.workflow.eventlog.IEventLog;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.eventlog.IEventLog;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.eventlog.EventLogProperty;
import ch.ivyteam.ivy.workflow.IPropertyFilter;

EventLog ev;

IPropertyFilter filter;
IQueryResult result;

try
{
	out.events = ivy.wf.findEventLogs(ivy.wf.findCase(in.readListId));
	for (IEventLog log : ivy.wf.findEventLogs(ivy.wf.findCase(in.readListId)))
	{
		ev = null;
		ev.eventLogId = log.getIdentifier();
		ev.timeStamp = log.getTimestamp();
		ev.data.application = log.getApplicationName();
		ev.data.context = log.getContext();
		ev.data.environment = log.getEnvironment();
		ev.data.errorCode = log.getErrorCode();
		ev.data.eventData = log.getEventData();
		ev.data.eventDate = log.getEventDate();
		ev.data.eventTime = log.getEventTime();
		ev.data.eventSubType = log.getEventSubType();
		ev.data.eventType = log.getEventType();
		ev.data.groupId = log.getGroupId();
		ev.data.initiator = log.getInitiator();
		ev.data.isBusinessEvent = log.isBusinessEvent();
		ev.data.message = log.getMessage();
		ev.data.module = log.getSubsystem();
		ev.data.objectId = log.getObjectId();
		ev.data.server = log.getServer();
		ev.data.tower = log.getSystem();
		ev.data.userComment = log.getUserComment();
		ev.data.userName = log.getUserName();
		if (log.getSeverity() == EventLogSeverity.FATAL)
		{
			ev.data.severity = ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity.FATAL;
		}
		if (log.getSeverity() == EventLogSeverity.ERROR)
		{
			ev.data.severity = ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity.ERROR;
		}
		if (log.getSeverity() == EventLogSeverity.WARNING)
		{
			ev.data.severity = ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity.WARNING;
		}
		if (log.getSeverity() == EventLogSeverity.INFO)
		{
			ev.data.severity = ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity.INFO;
		}
		ev.data.source = log.getSource();
		
		out.eventLogs.add(ev);
	}
	out.ivyResultStatus.successful = true;
}
catch (Exception e)
{
	out.ivyResultStatus.severity = IvyResultStatusSeverity.FATAL;
	out.ivyResultStatus.successful = false;
	out.ivyResultStatus.javaException = e;
	out.ivyResultStatus.detail = e.getClass().getName() + " - " + e.getMessage() + " - " + e.getCause();
	out.ivyResultStatus.code = MessageCodes.XIVY_ADD_EVT_002.toString();
	out.ivyResultStatus.message = ivy.cms.co("/messages/" + out.ivyResultStatus.code);
	
	ivy.log.error(out.ivyResultStatus.code + " - " + out.ivyResultStatus.message + " - " + out.ivyResultStatus.detail + " - " + e);
}
' #txt
Es0 f15 type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
Es0 f15 62 140 36 24 20 -2 #rect
Es0 f15 @|StepIcon #fIcon
Es0 f16 expr out #txt
Es0 f16 80 53 80 140 #arcP
Es0 f14 expr out #txt
Es0 f14 80 164 80 267 #arcP
>Proto Es0 .type ch.ivyteam.ivy.addons.data.restricted.technical.EventLogServices #txt
>Proto Es0 .processKind CALLABLE_SUB #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Es0 0 0 32 24 18 0 #rect
>Proto Es0 @|BIcon #fIcon
Es0 f3 mainOut f11 tail #connect
Es0 f11 head f10 mainIn #connect
Es0 f10 mainOut f13 tail #connect
Es0 f13 head f8 mainIn #connect
Es0 f0 mainOut f16 tail #connect
Es0 f16 head f15 mainIn #connect
Es0 f15 mainOut f14 tail #connect
Es0 f14 head f1 mainIn #connect
