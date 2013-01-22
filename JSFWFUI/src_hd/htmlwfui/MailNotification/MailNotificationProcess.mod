[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13BE0F19811EB876 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MailNotificationProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogEnd f6 '' #zField
Ms0 @RichDialogProcessEnd f4 '' #zField
Ms0 @RichDialogProcessStep f7 '' #zField
Ms0 @PushWFArc f8 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogProcessStep f9 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @PushWFArc f5 '' #zField
>Proto Ms0 Ms0 MailNotificationProcess #zField
Ms0 f0 guid 13BE0F19820930F0 #txt
Ms0 f0 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 86 54 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f1 86 150 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f3 guid 13BE0F366A6612FB #txt
Ms0 f3 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f3 actionDecl 'htmlwfui.MailNotification.MailNotificationData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveSettings</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 374 54 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f6 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f6 guid 13BE10F7040C0CE2 #txt
Ms0 f6 374 150 20 20 13 0 #rect
Ms0 f6 @|RichDialogEndIcon #fIcon
Ms0 f4 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f4 438 150 20 20 13 0 #rect
Ms0 f4 @|RichDialogProcessEndIcon #fIcon
Ms0 f7 actionDecl 'htmlwfui.MailNotification.MailNotificationData out;
' #txt
Ms0 f7 actionTable 'out=in;
out.temp.url=ivy.html.startref("127AE76143E89C91/DefaultApplicationHomePage.ivp");
' #txt
Ms0 f7 actionCode 'import java.util.Locale;
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
Ms0 f7 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f7 78 100 36 24 20 -2 #rect
Ms0 f7 @|RichDialogProcessStepIcon #fIcon
Ms0 f8 expr out #txt
Ms0 f8 96 74 96 100 #arcP
Ms0 f2 expr out #txt
Ms0 f2 96 124 96 150 #arcP
Ms0 f9 actionDecl 'htmlwfui.MailNotification.MailNotificationData out;
' #txt
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 actionCode 'import java.util.Locale;
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
Ms0 f9 type htmlwfui.MailNotification.MailNotificationData #txt
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f9 366 100 36 24 20 -2 #rect
Ms0 f9 @|RichDialogProcessStepIcon #fIcon
Ms0 f10 expr out #txt
Ms0 f10 384 74 384 100 #arcP
Ms0 f5 expr out #txt
Ms0 f5 400 124 439 154 #arcP
>Proto Ms0 .type htmlwfui.MailNotification.MailNotificationData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f8 tail #connect
Ms0 f8 head f7 mainIn #connect
Ms0 f7 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f9 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
