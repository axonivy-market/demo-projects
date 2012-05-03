[Ivy]
[>Created: Thu May 03 10:27:49 CEST 2012]
136F4341B49EA302 3.17 #module
>Proto >Proto Collection #zClass
Mg0 MailNotificationSetting Big #zClass
Mg0 B #cInfo
Mg0 #process
Mg0 @TextInP .resExport .resExport #zField
Mg0 @TextInP .type .type #zField
Mg0 @TextInP .processKind .processKind #zField
Mg0 @AnnotationInP-0n ai ai #zField
Mg0 @TextInP .xml .xml #zField
Mg0 @TextInP .responsibility .responsibility #zField
Mg0 @StartRequest f0 '' #zField
Mg0 @GridStep f3 '' #zField
Mg0 @CallSub f8 '' #zField
Mg0 @Page f1 '' #zField
Mg0 @GridStep f16 '' #zField
Mg0 @PushWFArc f17 '' #zField
Mg0 @PushWFArc f9 '' #zField
Mg0 @PushWFArc f4 '' #zField
Mg0 @PushWFArc f2 '' #zField
Mg0 @EndRequest f6 '' #zField
Mg0 @PushWFArc f10 '' #zField
Mg0 @PushWFArc f11 '' #zField
>Proto Mg0 Mg0 MailNotificationSetting #zField
Mg0 f0 outLink start.ivp #txt
Mg0 f0 type htmlwfui.Data #txt
Mg0 f0 inParamDecl '<> param;' #txt
Mg0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Mg0 f0 guid 136F4343BDF2121D #txt
Mg0 f0 requestEnabled true #txt
Mg0 f0 triggerEnabled false #txt
Mg0 f0 callSignature start() #txt
Mg0 f0 persist false #txt
Mg0 f0 taskData '#
#Wed May 02 17:11:02 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Mg0 f0 caseData '#
#Wed May 02 17:11:02 CEST 2012
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Mg0 f0 showInStartList 0 #txt
Mg0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Mg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f0 @C|.responsibility Everybody #txt
Mg0 f0 195 51 26 26 14 0 #rect
Mg0 f0 @|StartRequestIcon #fIcon
Mg0 f3 actionDecl 'htmlwfui.Data out;
' #txt
Mg0 f3 actionTable 'out=in;
' #txt
Mg0 f3 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.security.IUserEMailNotificationSettings;

	out.settings.emailNotificationSettings.setUseApplicationDefault(in.settings.appDefault);
	out.settings.emailNotificationSettings.setNotificationDisabled(in.settings.notificationDisabled);
	out.settings.emailNotificationSettings.setSendOnNewWorkTasks(in.settings.onNewTasks);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY, in.settings.mon);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY, in.settings.tue);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY, in.settings.wen);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY, in.settings.thu);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY, in.settings.fri);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY, in.settings.sat);
	out.settings.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY, in.settings.sun);

ivy.session.getSessionUser().setEMailNotificationSettings(out.settings.emailNotificationSettings);

if(in.settings.language == ivy.cms.co("/labels/mailDefaultLanguage"))
{
	ivy.session.getSessionUser().setEMailLanguage(null);
}
else
{
	for(Locale l: ivy.cms.getSupportedLanguages())
	{
		if(in.settings.language == l.toString())
		{
			ivy.session.getSessionUser().setEMailLanguage(l);
			break;	
		}
	}
}	' #txt
Mg0 f3 type htmlwfui.Data #txt
Mg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f3 190 316 36 24 8 16 #rect
Mg0 f3 @|StepIcon #fIcon
Mg0 f8 type htmlwfui.Data #txt
Mg0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Mg0 f8 doCall true #txt
Mg0 f8 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Mg0 f8 requestMappingAction 'param.in=in;
' #txt
Mg0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Mg0 f8 responseMappingAction 'out=result.out;
' #txt
Mg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f8 190 100 36 24 20 -2 #rect
Mg0 f8 @|CallSubIcon #fIcon
Mg0 f1 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Mg0 f1 outLinks "LinkE.ivp","LinkA.ivp" #txt
Mg0 f1 template "/ProcessPages/MailNotificationSetting/EmailNotificationSettings.ivc" #txt
Mg0 f1 type htmlwfui.Data #txt
Mg0 f1 skipLink skip.ivp #txt
Mg0 f1 sortLink sort.ivp #txt
Mg0 f1 templateWizard '#
#Fri Apr 27 16:39:16 CEST 2012
' #txt
Mg0 f1 pageArchivingActivated false #txt
Mg0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotification Setting</name>
        <nameStyle>24
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f1 @C|.responsibility Everybody #txt
Mg0 f1 190 244 36 24 24 -9 #rect
Mg0 f1 @|PageIcon #fIcon
Mg0 f16 actionDecl 'htmlwfui.Data out;
' #txt
Mg0 f16 actionTable 'out=in;
out.temp.url=ivy.html.startref("127AE76143E89C91/DefaultApplicationHomePage.ivp");
' #txt
Mg0 f16 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.security.IEMailNotificationSettings;

out.settings.languages = [];
out.settings.languages.add(ivy.cms.co("/labels/mailDefaultLanguage"));
for(Locale l : ivy.cms.getSupportedLanguages())
{
	out.settings.languages.add(l.toString());
}
out.settings.language = ivy.session.getSessionUser().getEMailLanguage().toString();

out.settings.emailNotificationSettings = ivy.session.getSessionUser().getEMailNotificationSettings();
out.settings.appDefault = out.settings.emailNotificationSettings.isUseApplicationDefault();
out.settings.notificationDisabled = out.settings.emailNotificationSettings.isNotificationDisabled();
out.settings.onNewTasks = out.settings.emailNotificationSettings.isSendOnNewWorkTasks();

out.settings.mon = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY);
out.settings.tue = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY);
out.settings.wen = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY);
out.settings.thu = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY);
out.settings.fri = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY);
out.settings.sat = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY);
out.settings.sun = out.settings.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY);

IEMailNotificationSettings defaultSettings = ivy.wf.getApplication().getDefaultEMailNotifcationSettings();
StringBuffer sb = new StringBuffer();
sb.append("(");
if(defaultSettings.isNotificationDisabled())
{
	sb.append(ivy.cms.co("/labels/mailNotificationDisabled"));	
}
else 
{
if(defaultSettings.isSendOnNewWorkTasks())
{
	sb.append(ivy.cms.co("/labels/mailOnNewTask"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/mon"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/tue"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/wen"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/thun"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/fri"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/sat"));	
		sb.append(", ");
}
if(defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY))
{
	sb.append(ivy.cms.co("/wflabels/weekdays/sun"));	
}
}
sb.append(")");
out.settings.defaultData = sb.toString();' #txt
Mg0 f16 type htmlwfui.Data #txt
Mg0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f16 190 164 36 24 28 1 #rect
Mg0 f16 @|StepIcon #fIcon
Mg0 f17 expr out #txt
Mg0 f17 208 124 208 164 #arcP
Mg0 f9 expr out #txt
Mg0 f9 208 77 208 100 #arcP
Mg0 f4 expr data #txt
Mg0 f4 outCond ivp=="LinkA.ivp" #txt
Mg0 f4 208 268 208 316 #arcP
Mg0 f2 expr out #txt
Mg0 f2 208 188 208 244 #arcP
Mg0 f6 type htmlwfui.Data #txt
Mg0 f6 template "redirect.jsp" #txt
Mg0 f6 99 243 26 26 14 0 #rect
Mg0 f6 @|EndRequestIcon #fIcon
Mg0 f10 expr data #txt
Mg0 f10 outCond ivp=="LinkE.ivp" #txt
Mg0 f10 190 256 125 256 #arcP
Mg0 f11 expr out #txt
Mg0 f11 190 328 112 269 #arcP
Mg0 f11 1 112 328 #addKink
Mg0 f11 1 0.7053812160027211 0 0 #arcLabel
>Proto Mg0 .type htmlwfui.Data #txt
>Proto Mg0 .processKind NORMAL #txt
>Proto Mg0 0 0 32 24 18 0 #rect
>Proto Mg0 @|BIcon #fIcon
Mg0 f8 mainOut f17 tail #connect
Mg0 f17 head f16 mainIn #connect
Mg0 f0 mainOut f9 tail #connect
Mg0 f9 head f8 mainIn #connect
Mg0 f4 head f3 mainIn #connect
Mg0 f16 mainOut f2 tail #connect
Mg0 f2 head f1 mainIn #connect
Mg0 f1 out f10 tail #connect
Mg0 f10 head f6 mainIn #connect
Mg0 f1 out f4 tail #connect
Mg0 f3 mainOut f11 tail #connect
Mg0 f11 head f6 mainIn #connect
