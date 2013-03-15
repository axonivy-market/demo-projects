[Ivy]
[>Created: Fri Mar 15 08:19:47 CET 2013]
13BDCA5090CA1E7B 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MailNotificationSettingProcess Big #zClass
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
Ms0 @GridStep f3 '' #zField
Ms0 @PushWFArc f4 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogEnd f6 '' #zField
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @RichDialogProcessStart f5 '' #zField
Ms0 @RichDialogProcessStart f9 '' #zField
Ms0 @RichDialogProcessEnd f10 '' #zField
Ms0 @PushWFArc f12 '' #zField
Ms0 @GridStep f13 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @PushWFArc f11 '' #zField
>Proto Ms0 Ms0 MailNotificationSettingProcess #zField
Ms0 f0 guid 13BDCA5091CE1CAA #txt
Ms0 f0 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
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
Ms0 f1 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f1 86 174 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f3 actionDecl 'htmlwfui.MailNotificationSetting.MailNotificationSettingData out;
' #txt
Ms0 f3 actionTable 'out=in;
out.temp.url=ivy.html.startref("127AE76143E89C91/HomePage.ivp");
' #txt
Ms0 f3 actionCode 'import java.util.Locale;
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
Ms0 f3 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 78 116 36 24 20 -2 #rect
Ms0 f3 @|StepIcon #fIcon
Ms0 f4 expr out #txt
Ms0 f4 96 74 96 116 #arcP
Ms0 f2 expr out #txt
Ms0 f2 96 140 96 174 #arcP
Ms0 f6 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f6 guid 13BDCAA4C798AE40 #txt
Ms0 f6 270 206 20 20 13 0 #rect
Ms0 f6 @|RichDialogEndIcon #fIcon
Ms0 f8 actionDecl 'htmlwfui.MailNotificationSetting.MailNotificationSettingData out;
' #txt
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 actionCode 'import java.util.Locale;
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
Ms0 f8 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 262 148 36 24 20 -2 #rect
Ms0 f8 @|StepIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 280 172 280 206 #arcP
Ms0 f5 guid 13BE0EC5D21AD0ED #txt
Ms0 f5 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f5 actionDecl 'htmlwfui.MailNotificationSetting.MailNotificationSettingData out;
' #txt
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveSettings</name>
    </language>
</elementInfo>
' #txt
Ms0 f5 270 54 20 20 13 0 #rect
Ms0 f5 @|RichDialogProcessStartIcon #fIcon
Ms0 f9 guid 13BE227983F923E1 #txt
Ms0 f9 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f9 actionDecl 'htmlwfui.MailNotificationSetting.MailNotificationSettingData out;
' #txt
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>test</name>
    </language>
</elementInfo>
' #txt
Ms0 f9 418 54 20 20 13 0 #rect
Ms0 f9 @|RichDialogProcessStartIcon #fIcon
Ms0 f10 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f10 418 150 20 20 13 0 #rect
Ms0 f10 @|RichDialogProcessEndIcon #fIcon
Ms0 f12 428 74 428 150 #arcP
Ms0 f13 actionDecl 'htmlwfui.MailNotificationSetting.MailNotificationSettingData out;
' #txt
Ms0 f13 actionTable 'out=in;
out.settings.fri=IF(in.settings.appDefault, false, in.settings.fri);
out.settings.mon=IF(in.settings.appDefault, false, in.settings.mon);
out.settings.notificationDisabled=IF(in.settings.appDefault, false, in.settings.notificationDisabled);
out.settings.onNewTasks=IF(in.settings.appDefault, false, in.settings.onNewTasks);
out.settings.sat=IF(in.settings.appDefault, false, in.settings.sat);
out.settings.sun=IF(in.settings.appDefault, false, in.settings.sun);
out.settings.thu=IF(in.settings.appDefault, false, in.settings.thu);
out.settings.tue=IF(in.settings.appDefault, false, in.settings.tue);
out.settings.wen=IF(in.settings.appDefault, false, in.settings.wen);
' #txt
Ms0 f13 type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f13 262 100 36 24 20 -2 #rect
Ms0 f13 @|StepIcon #fIcon
Ms0 f14 expr out #txt
Ms0 f14 280 74 280 100 #arcP
Ms0 f11 expr out #txt
Ms0 f11 280 124 280 148 #arcP
>Proto Ms0 .type htmlwfui.MailNotificationSetting.MailNotificationSettingData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f4 tail #connect
Ms0 f4 head f3 mainIn #connect
Ms0 f3 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f8 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
Ms0 f9 mainOut f12 tail #connect
Ms0 f12 head f10 mainIn #connect
Ms0 f5 mainOut f14 tail #connect
Ms0 f14 head f13 mainIn #connect
Ms0 f13 mainOut f11 tail #connect
Ms0 f11 head f8 mainIn #connect
