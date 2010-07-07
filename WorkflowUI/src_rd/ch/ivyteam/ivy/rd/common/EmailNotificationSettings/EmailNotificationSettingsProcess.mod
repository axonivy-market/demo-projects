[Ivy]
[>Created: Mon Jul 05 10:43:18 CEST 2010]
1296F93C3323A403 3.14 #module
>Proto >Proto Collection #zClass
Es0 EmailNotificationSettingsProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessStep f3 '' #zField
Es0 @RichDialogMethodStart f5 '' #zField
Es0 @RichDialogProcessEnd f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @RichDialogProcessStart f8 '' #zField
Es0 @RichDialogProcessEnd f9 '' #zField
Es0 @RichDialogProcessStep f11 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogInitStart f13 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @RichDialogProcessStep f1 '' #zField
Es0 @PushWFArc f2 '' #zField
Es0 @PushWFArc f14 '' #zField
Es0 @RichDialogMethodStart f16 '' #zField
Es0 @RichDialogProcessEnd f17 '' #zField
Es0 @PushWFArc f18 '' #zField
Es0 @PushWFArc f19 '' #zField
>Proto Es0 Es0 EmailNotificationSettingsProcess #zField
Es0 f0 guid 1296F93C34EADB35 #txt
Es0 f0 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f0 method start(ch.ivyteam.ivy.security.IEMailNotificationSettings,java.util.Locale) #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IEMailNotificationSettings settings,java.util.Locale emailLanguage> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inParameterMapAction 'out.applicationDefaultLanguage=param.#emailLanguage;
out.emailSettings=param.#settings;
out.isUserEmailSettings=false;
out.selectedEmailLanguage=param.#emailLanguage;
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 embeddedRdInitializations '* ' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IEMailNotificationSettings,Locale)</name>
        <nameStyle>40,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 54 38 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f3 actionDecl 'ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData out;
' #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 actionCode 'import com.ulcjava.base.application.enabler.ULCNotEnabler;
import ch.ivyteam.util.date.Weekday;

if (in.isUserEmailSettings)
{
	// set up enabler
	panel.whatSettingsPanel.visible = true;
	panel.whenPanel.setEnabler(panel.customSettingsRadioButton);
	
	// conditional up-binding
	panel.appSettingsRadioButton.selected = in.userEmailSettings.useApplicationDefault;
	panel.customSettingsRadioButton.selected = !in.userEmailSettings.useApplicationDefault;
}
else
{
	panel.whatSettingsPanel.visible = false;
}

ULCNotEnabler doNotSend = new ULCNotEnabler(panel.doNotSendCheckBox);
panel.alwaysSendCheckBox.setEnabler(doNotSend);
panel.dailySummaryPane.setEnabler(doNotSend);' #txt
Es0 f3 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup GUI state</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f3 46 196 36 24 20 -2 #rect
Es0 f3 @|RichDialogProcessStepIcon #fIcon
Es0 f5 guid 1297F39FB9554879 #txt
Es0 f5 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f5 method getSettings() #txt
Es0 f5 disableUIEvents false #txt
Es0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f5 outParameterDecl '<ch.ivyteam.ivy.security.IEMailNotificationSettings settings> result;
' #txt
Es0 f5 outActionCode 'if (in.isUserEmailSettings)
{
	result.settings = in.userEmailSettings;
}
else
{
	result.settings = in.emailSettings;
}' #txt
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSettings()</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f5 270 262 20 20 13 0 #rect
Es0 f5 @|RichDialogMethodStartIcon #fIcon
Es0 f6 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f6 270 366 20 20 13 0 #rect
Es0 f6 @|RichDialogProcessEndIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 280 282 280 366 #arcP
Es0 f8 guid 1297F3BC84FB1E3D #txt
Es0 f8 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f8 actionDecl 'ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData out;
' #txt
Es0 f8 actionTable 'out=in;
' #txt
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f8 94 262 20 20 13 0 #rect
Es0 f8 @|RichDialogProcessStartIcon #fIcon
Es0 f9 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f9 94 366 20 20 13 0 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f11 actionDecl 'ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData out;
' #txt
Es0 f11 actionTable 'out=in;
' #txt
Es0 f11 actionCode 'import ch.ivyteam.util.date.Weekday;

// downbind weekdays (no downbinding in start method)
if (ivy.rd.isUiEventEnabled())
{
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.MONDAY, panel.monCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.TUESDAY, panel.tueCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.WEDNESDAY, panel.wedCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.THURSDAY, panel.thuCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.FRIDAY, panel.friCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.SATURDAY, panel.satCheckBox.selected);
	in.emailSettings.setSendDailyTaskSummaryOnDay(Weekday.SUNDAY, panel.sunCheckBox.selected);
}

if (in.isUserEmailSettings)
{
	boolean useAppSettings = panel.appSettingsRadioButton.selected;
	in.userEmailSettings.useApplicationDefault = useAppSettings;

	if (useAppSettings)
	{
		// transfer application default settings to the settings shown on the panel
		in.emailSettings = in.applicationDefaultSettings;
	}
	else
	{
		// transfer user settings to the settings shown on the panel
		in.emailSettings = in.userEmailSettings;
	}
}

// upbind weekdays
panel.monCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.MONDAY);
panel.tueCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.TUESDAY);
panel.wedCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.WEDNESDAY);
panel.thuCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.THURSDAY);
panel.friCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.FRIDAY);
panel.satCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.SATURDAY);
panel.sunCheckBox.selected = in.emailSettings.isSendDailyTaskSummaryOnDay(Weekday.SUNDAY);' #txt
Es0 f11 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set user email settings
weekdays up-binding</name>
        <nameStyle>43,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f11 86 316 36 24 24 -13 #rect
Es0 f11 @|RichDialogProcessStepIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 104 282 104 316 #arcP
Es0 f10 expr out #txt
Es0 f10 104 340 104 366 #arcP
Es0 f13 guid 1297F753F54B5010 #txt
Es0 f13 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f13 method start(ch.ivyteam.ivy.security.IUserEMailNotificationSettings,java.util.Locale,ch.ivyteam.ivy.security.IEMailNotificationSettings,java.util.Locale) #txt
Es0 f13 disableUIEvents true #txt
Es0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IUserEMailNotificationSettings userSettings,java.util.Locale userLanguage,ch.ivyteam.ivy.security.IEMailNotificationSettings applicationDefaultSettings,java.util.Locale applicationDefaultLanguage> param = methodEvent.getInputArguments();
' #txt
Es0 f13 inParameterMapAction 'out.applicationDefaultLanguage=param.#applicationDefaultLanguage;
out.applicationDefaultSettings=param.#applicationDefaultSettings;
out.emailSettings=param.#userSettings;
out.isUserEmailSettings=true;
out.selectedEmailLanguage=param.#userLanguage;
out.userEmailSettings=param.#userSettings;
' #txt
Es0 f13 outParameterDecl '<> result;
' #txt
Es0 f13 embeddedRdInitializations '* ' #txt
Es0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IUserEMailNotificationSettings,Locale,IEMailNotificationSettings,Locale)</name>
        <nameStyle>78,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f13 94 70 20 20 13 0 #rect
Es0 f13 @|RichDialogInitStartIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 64 220 94 316 #arcP
Es0 f15 1 64 280 #addKink
Es0 f15 0 0.9347390455972342 0 0 #arcLabel
Es0 f1 actionDecl 'ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData out;
' #txt
Es0 f1 actionTable 'out=in;
' #txt
Es0 f1 actionCode 'import java.util.Locale;

in.emailLanguages = ivy.cms.getSupportedLanguages();
if(in.isUserEmailSettings)
{
	String language = in.applicationDefaultLanguage.getLanguage();
	String country = in.applicationDefaultLanguage.getCountry();
	Locale defaultLocale = new Locale(language, country, "APPLICATION_DEFAULT");
	in.emailLanguages.add(0, defaultLocale);
	
	if (in.#selectedEmailLanguage is initialized)
	{
		if (!in.emailLanguages.contains(in.#selectedEmailLanguage))
		{
			in.emailLanguages.add(in.#selectedEmailLanguage);
		}
	}
	else
	{
		in.selectedEmailLanguage = defaultLocale;
	}
}
else
{
	if (in.#selectedEmailLanguage is initialized)
	{
		if (!in.emailLanguages.contains(in.#selectedEmailLanguage))
		{
			in.emailLanguages.add(in.#selectedEmailLanguage);
		}
	}
	else
	{
		in.selectedEmailLanguage = in.emailLanguages.get(0);
	}
}' #txt
Es0 f1 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load languages</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f1 46 116 36 24 20 -2 #rect
Es0 f1 @|RichDialogProcessStepIcon #fIcon
Es0 f2 expr out #txt
Es0 f2 97 87 74 116 #arcP
Es0 f2 0 0.5225238968594534 0 0 #arcLabel
Es0 f14 expr out #txt
Es0 f14 64 140 64 196 #arcP
Es0 f16 guid 129926BC158E17EB #txt
Es0 f16 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f16 method getLanguage() #txt
Es0 f16 disableUIEvents false #txt
Es0 f16 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f16 outParameterDecl '<java.util.Locale emailLanguage> result;
' #txt
Es0 f16 outActionCode 'if(!in.selectedEmailLanguage.getVariant().equals("APPLICATION_DEFAULT"))
{
	result.emailLanguage = in.selectedEmailLanguage;
}' #txt
Es0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getLanguage()</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f16 382 262 20 20 13 0 #rect
Es0 f16 @|RichDialogMethodStartIcon #fIcon
Es0 f17 type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
Es0 f17 382 366 20 20 13 0 #rect
Es0 f17 @|RichDialogProcessEndIcon #fIcon
Es0 f18 expr out #txt
Es0 f18 392 282 392 366 #arcP
Es0 f19 expr out #txt
Es0 f19 64 58 64 116 #arcP
>Proto Es0 .ui2RdDataAction 'out.emailSettings.sendOnNewWorkTasks=panel.alwaysSendCheckBox.selected;
out.emailSettings.notificationDisabled=panel.doNotSendCheckBox.selected;
out.selectedEmailLanguage=panel.languageComboBox.selectedListEntry as java.util.Locale;
' #txt
>Proto Es0 .rdData2UIAction 'panel.languageComboBox.listData=in.emailLanguages;
panel.alwaysSendCheckBox.selected=in.emailSettings.sendOnNewWorkTasks;
panel.doNotSendCheckBox.selected=in.emailSettings.notificationDisabled;
panel.languageComboBox.selectedListEntry=in.selectedEmailLanguage;
' #txt
>Proto Es0 .type ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f5 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f8 mainOut f12 tail #connect
Es0 f12 head f11 mainIn #connect
Es0 f11 mainOut f10 tail #connect
Es0 f10 head f9 mainIn #connect
Es0 f3 mainOut f15 tail #connect
Es0 f15 head f11 mainIn #connect
Es0 f13 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
Es0 f1 mainOut f14 tail #connect
Es0 f14 head f3 mainIn #connect
Es0 f16 mainOut f18 tail #connect
Es0 f18 head f17 mainIn #connect
Es0 f0 mainOut f19 tail #connect
Es0 f19 head f1 mainIn #connect
