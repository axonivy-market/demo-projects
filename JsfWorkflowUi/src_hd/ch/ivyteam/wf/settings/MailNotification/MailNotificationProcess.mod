[Ivy]
[>Created: Thu Jul 25 15:00:00 CEST 2013]
13F5183CA99B58E3 3.17 #module
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
Ms0 @GridStep f6 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @GridStep f10 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @PushWFArc f4 '' #zField
Ms0 @RichDialogProcessStart f15 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @PushWFArc f13 '' #zField
>Proto Ms0 Ms0 MailNotificationProcess #zField
Ms0 f0 guid 13F5183CAB816433 #txt
Ms0 f0 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
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
Ms0 f1 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f1 86 182 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f3 guid 13F51BEAA54E44F6 #txt
Ms0 f3 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f3 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
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
Ms0 f6 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.security.IEMailNotificationSettings;

out.languages.add(ivy.cms.co("/labels/settings/mailNotification/appDefault") + " (" + ivy.wf.getApplication().getDefaultEMailLanguage().getDisplayName() + ")");
for(Locale locale : ivy.cms.getSupportedLanguages())
{
	out.languages.add(locale.getDisplayName());
}
out.language = ivy.session.getSessionUser().getEMailLanguage() != null ? ivy.session.getSessionUser().getEMailLanguage().getDisplayName() : "";

IEMailNotificationSettings defaultSettings = ivy.wf.getApplication().getDefaultEMailNotifcationSettings();

if(in.isUseApplicationDefault)
{
	out.isNotificationDisabled = defaultSettings.isNotificationDisabled();	
	out.isSendOnNewWorkTasks = defaultSettings.isSendOnNewWorkTasks();
	out.mon = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY);
	out.tue = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY);
	out.wen = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY);
	out.thu = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY);
	out.fri = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY);
	out.sat = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY);
	out.sun = defaultSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY);
}
else
{
	out.emailNotificationSettings = ivy.session.getSessionUser().getEMailNotificationSettings();
	out.isUseApplicationDefault = out.emailNotificationSettings.isUseApplicationDefault();
	out.isNotificationDisabled = out.emailNotificationSettings.isNotificationDisabled();
	out.isSendOnNewWorkTasks = out.emailNotificationSettings.isSendOnNewWorkTasks();
	
	out.mon = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY);
	out.tue = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY);
	out.wen = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY);
	out.thu = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY);
	out.fri = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY);
	out.sat = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY);
	out.sun = out.emailNotificationSettings.isSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY);
}' #txt
Ms0 f6 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default settings</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 78 116 36 24 20 -2 #rect
Ms0 f6 @|StepIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 96 74 96 116 #arcP
Ms0 f8 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f8 actionTable 'out=in;
out.fri=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.fri);
out.isNotificationDisabled=IF(in.isUseApplicationDefault, false, in.isNotificationDisabled);
out.isSendOnNewWorkTasks=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.isSendOnNewWorkTasks);
out.mon=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.mon);
out.sat=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.sat);
out.sun=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.sun);
out.thu=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.thu);
out.tue=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.tue);
out.wen=IF(in.isUseApplicationDefault || in.isNotificationDisabled, false, in.wen);
' #txt
Ms0 f8 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 366 116 36 24 20 -2 #rect
Ms0 f8 @|StepIcon #fIcon
Ms0 f9 expr out #txt
Ms0 f9 384 74 384 116 #arcP
Ms0 f10 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f10 actionTable 'out=in;
' #txt
Ms0 f10 actionCode 'import java.util.Locale;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.security.IUserEMailNotificationSettings;

	out.emailNotificationSettings.setUseApplicationDefault(in.isUseApplicationDefault);
	out.emailNotificationSettings.setNotificationDisabled(in.isNotificationDisabled);
	out.emailNotificationSettings.setSendOnNewWorkTasks(in.isSendOnNewWorkTasks);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.MONDAY, in.mon);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.TUESDAY, in.tue);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.WEDNESDAY, in.wen);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.THURSDAY, in.thu);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.FRIDAY, in.fri);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SATURDAY, in.sat);
	out.emailNotificationSettings.setSendDailyTaskSummaryOnDay(ch.ivyteam.util.date.Weekday.SUNDAY, in.sun);

ivy.session.getSessionUser().setEMailNotificationSettings(out.emailNotificationSettings);

if(in.language == ivy.cms.co("/labels/settings/mailNotification/appDefault") + " (" + ivy.wf.getApplication().getDefaultEMailLanguage().getDisplayName() + ")")
{
	ivy.session.getSessionUser().setEMailLanguage(null);
}
else
{
	for(Locale locale: ivy.cms.getSupportedLanguages())
	{
		if(in.language == locale.getDisplayName())
		{
			ivy.session.getSessionUser().setEMailLanguage(locale);
			break;	
		}
	}
}
FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, ivy.cms.co("/labels/settings/mailNotification/mailSettingsSaved"), ""));' #txt
Ms0 f10 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f10 366 180 36 24 20 -2 #rect
Ms0 f10 @|StepIcon #fIcon
Ms0 f11 expr out #txt
Ms0 f11 384 140 384 180 #arcP
Ms0 f4 expr out #txt
Ms0 f4 366 192 106 192 #arcP
Ms0 f4 0 0.484221654104243 0 0 #arcLabel
Ms0 f15 guid 13FA9961ECA1CBDA #txt
Ms0 f15 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f15 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f15 actionTable 'out=in;
' #txt
Ms0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setApplicationDefault</name>
    </language>
</elementInfo>
' #txt
Ms0 f15 214 54 20 20 13 0 #rect
Ms0 f15 @|RichDialogProcessStartIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 224 74 114 128 #arcP
Ms0 f2 1 224 128 #addKink
Ms0 f2 1 0.37470337429825346 0 0 #arcLabel
Ms0 f13 expr out #txt
Ms0 f13 96 140 96 182 #arcP
>Proto Ms0 .type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
Ms0 f3 mainOut f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f8 mainOut f11 tail #connect
Ms0 f11 head f10 mainIn #connect
Ms0 f10 mainOut f4 tail #connect
Ms0 f4 head f1 mainIn #connect
Ms0 f15 mainOut f2 tail #connect
Ms0 f2 head f6 mainIn #connect
Ms0 f6 mainOut f13 tail #connect
Ms0 f13 head f1 mainIn #connect
