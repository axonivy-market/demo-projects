[Ivy]
[>Created: Fri May 09 10:03:12 CEST 2014]
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
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @GridStep f10 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @RichDialogProcessStart f15 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @PushWFArc f13 '' #zField
Ms0 @GridStep f5 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @PushWFArc f12 '' #zField
Ms0 @RichDialogProcessEnd f14 '' #zField
Ms0 @PushWFArc f16 '' #zField
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
Ms0 f0 83 51 26 26 -16 12 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f0 -1|-1|-9671572 #nodeStyle
Ms0 f1 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f1 499 51 26 26 0 12 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f1 -1|-1|-9671572 #nodeStyle
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
Ms0 f3 83 211 26 26 -35 12 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f3 -1|-1|-9671572 #nodeStyle
Ms0 f6 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.security.IEMailNotificationSettings;

out.languages.clear();
out.languages.add(ivy.cms.co("/labels/settings/mailNotification/appDefault") + " (" + ivy.wf.getApplication().getDefaultEMailLanguage().getDisplayName() + ")");
for(Locale locale : ivy.cms.getSupportedLanguages())
{
	out.languages.add(locale.getDisplayName());
}
out.language = ivy.session.getSessionUser().getEMailLanguage() != null ? ivy.session.getSessionUser().getEMailLanguage().getDisplayName() : "";

if(in.isUseApplicationDefault)
{
	IEMailNotificationSettings defaultSettings = ivy.wf.getApplication().getDefaultEMailNotifcationSettings();
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
Ms0 f6 328 42 112 44 -42 -8 #rect
Ms0 f6 @|StepIcon #fIcon
Ms0 f6 -1|-1|-9671572 #nodeStyle
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
Ms0 f8 168 202 112 44 -8 -8 #rect
Ms0 f8 @|StepIcon #fIcon
Ms0 f8 -1|-1|-9671572 #nodeStyle
Ms0 f9 expr out #txt
Ms0 f9 109 224 168 224 #arcP
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
        <name>save settings</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f10 328 202 112 44 -36 -8 #rect
Ms0 f10 @|StepIcon #fIcon
Ms0 f10 -1|-1|-9671572 #nodeStyle
Ms0 f11 expr out #txt
Ms0 f11 280 224 328 224 #arcP
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
Ms0 f15 83 147 26 26 -58 12 #rect
Ms0 f15 @|RichDialogProcessStartIcon #fIcon
Ms0 f15 -1|-1|-9671572 #nodeStyle
Ms0 f2 expr out #txt
Ms0 f2 109 160 384 86 #arcP
Ms0 f2 1 384 160 #addKink
Ms0 f2 1 0.37470337429825346 0 0 #arcLabel
Ms0 f13 expr out #txt
Ms0 f13 440 64 499 64 #arcP
Ms0 f5 actionDecl 'ch.ivyteam.wf.settings.MailNotification.MailNotificationData out;
' #txt
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 actionCode 'out.emailNotificationSettings = ivy.session.getSessionUser().getEMailNotificationSettings();
in.isUseApplicationDefault = out.emailNotificationSettings.useApplicationDefault;' #txt
Ms0 f5 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>appDefault</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f5 168 42 112 44 -30 -8 #rect
Ms0 f5 @|StepIcon #fIcon
Ms0 f5 -1|-1|-9671572 #nodeStyle
Ms0 f7 expr out #txt
Ms0 f7 109 64 168 64 #arcP
Ms0 f12 expr out #txt
Ms0 f12 280 64 328 64 #arcP
Ms0 f14 type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
Ms0 f14 499 211 26 26 0 12 #rect
Ms0 f14 @|RichDialogProcessEndIcon #fIcon
Ms0 f14 -1|-1|-9671572 #nodeStyle
Ms0 f16 expr out #txt
Ms0 f16 440 224 499 224 #arcP
Ms0 f16 0 0.40866560034576793 0 0 #arcLabel
>Proto Ms0 .type ch.ivyteam.wf.settings.MailNotification.MailNotificationData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f3 mainOut f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f8 mainOut f11 tail #connect
Ms0 f11 head f10 mainIn #connect
Ms0 f15 mainOut f2 tail #connect
Ms0 f2 head f6 mainIn #connect
Ms0 f6 mainOut f13 tail #connect
Ms0 f13 head f1 mainIn #connect
Ms0 f0 mainOut f7 tail #connect
Ms0 f7 head f5 mainIn #connect
Ms0 f5 mainOut f12 tail #connect
Ms0 f12 head f6 mainIn #connect
Ms0 f10 mainOut f16 tail #connect
Ms0 f16 head f14 mainIn #connect
