[Ivy]
[>Created: Mon Jul 24 17:44:02 CEST 2017]
157E2C1BEC4930AC 3.20 #module
>Proto >Proto Collection #zClass
ss0 ConfigurationOverviewProcess Big #zClass
ss0 RD #cInfo
ss0 #process
ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ss0 @TextInP .resExport .resExport #zField
ss0 @TextInP .type .type #zField
ss0 @TextInP .processKind .processKind #zField
ss0 @AnnotationInP-0n ai ai #zField
ss0 @MessageFlowInP-0n messageIn messageIn #zField
ss0 @MessageFlowOutP-0n messageOut messageOut #zField
ss0 @TextInP .xml .xml #zField
ss0 @TextInP .responsibility .responsibility #zField
ss0 @RichDialogInitStart f0 '' #zField
ss0 @RichDialogProcessEnd f1 '' #zField
ss0 @GridStep f3 '' #zField
ss0 @PushWFArc f4 '' #zField
ss0 @PushWFArc f2 '' #zField
ss0 @RichDialogProcessStart f5 '' #zField
ss0 @RichDialogProcessEnd f6 '' #zField
ss0 @PushWFArc f7 '' #zField
ss0 @RichDialogProcessStart f8 '' #zField
ss0 @RichDialogProcessEnd f9 '' #zField
ss0 @RichDialogMethodStart f11 '' #zField
ss0 @RichDialogProcessEnd f12 '' #zField
ss0 @GridStep f14 '' #zField
ss0 @GridStep f16 '' #zField
ss0 @GridStep f18 '' #zField
ss0 @PushWFArc f20 '' #zField
ss0 @PushWFArc f17 '' #zField
ss0 @PushWFArc f15 '' #zField
ss0 @PushWFArc f13 '' #zField
ss0 @RichDialogEnd f19 '' #zField
ss0 @RichDialogProcessStart f21 '' #zField
ss0 @GridStep f22 '' #zField
ss0 @PushWFArc f23 '' #zField
ss0 @PushWFArc f24 '' #zField
ss0 @GridStep f25 '' #zField
ss0 @PushWFArc f26 '' #zField
ss0 @PushWFArc f10 '' #zField
>Proto ss0 ss0 ConfigurationOverviewProcess #zField
ss0 f0 guid 157E2C1BEDF33419 #txt
ss0 f0 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f0 method start() #txt
ss0 f0 disableUIEvents true #txt
ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
ss0 f0 outParameterDecl '<> result;
' #txt
ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f0 82 51 26 26 -16 15 #rect
ss0 f0 @|RichDialogInitStartIcon #fIcon
ss0 f1 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f1 371 51 26 26 0 12 #rect
ss0 f1 @|RichDialogProcessEndIcon #fIcon
ss0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f3 actionTable 'out=in;
out.activeTabIndex=0;
out.databaseSettings=com.axon.ivy.engine.config.SystemDatabaseSettings.create();
' #txt
ss0 f3 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f3 168 42 112 44 -8 -8 #rect
ss0 f3 @|StepIcon #fIcon
ss0 f4 expr out #txt
ss0 f4 108 64 168 64 #arcP
ss0 f2 expr out #txt
ss0 f2 280 64 371 64 #arcP
ss0 f5 guid 15B5C5DB30A4F328 #txt
ss0 f5 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f5 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f5 actionTable 'out=in;
' #txt
ss0 f5 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

if(in.databaseSettings.getConnectionInfo().connectionState == ConnectionState.NOT_CONNECTED)
{
	in.databaseSettings.testConnection();
}' #txt
ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkConnection</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f5 82 115 26 26 -47 15 #rect
ss0 f5 @|RichDialogProcessStartIcon #fIcon
ss0 f6 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f6 371 115 26 26 0 12 #rect
ss0 f6 @|RichDialogProcessEndIcon #fIcon
ss0 f7 108 128 371 128 #arcP
ss0 f8 guid 15BC386770BD0A74 #txt
ss0 f8 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f8 actionTable 'out=in;
' #txt
ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveAll</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f8 82 179 26 26 -19 15 #rect
ss0 f8 @|RichDialogProcessStartIcon #fIcon
ss0 f9 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f9 371 179 26 26 0 12 #rect
ss0 f9 @|RichDialogProcessEndIcon #fIcon
ss0 f11 guid 15C0B18249EAF4B3 #txt
ss0 f11 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f11 method tabChange(org.primefaces.event.TabChangeEvent) #txt
ss0 f11 disableUIEvents false #txt
ss0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<org.primefaces.event.TabChangeEvent event> param = methodEvent.getInputArguments();
' #txt
ss0 f11 inActionCode 'import org.primefaces.context.RequestContext;
import org.primefaces.component.accordionpanel.AccordionPanel;
import org.primefaces.component.tabview.TabView;
import org.primefaces.event.TabChangeEvent;

TabChangeEvent event = param.event as TabChangeEvent;
AccordionPanel tv = event.getComponent() as AccordionPanel;
out.activeTabIndex = tv.getChildren().indexOf(event.getTab());
out.tabChangeEvent = event;' #txt
ss0 f11 outParameterDecl '<> result;
' #txt
ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>tabChange(Event)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f11 82 243 26 26 -49 15 #rect
ss0 f11 @|RichDialogMethodStartIcon #fIcon
ss0 f12 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f12 723 243 26 26 0 12 #rect
ss0 f12 @|RichDialogProcessEndIcon #fIcon
ss0 f14 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f14 actionTable 'out=in;
' #txt
ss0 f14 actionCode 'import org.primefaces.context.RequestContext;

boolean connectionOk = out.databaseSettings.getConnectionInfo().getConnectionOK();
RequestContext context = RequestContext.getCurrentInstance();

if(connectionOk && in.tabChangeEvent.tab.id.contains("administratorsTab") && out.databaseSettings.getAdministratorManager().getAdministrators().isEmpty())
{
	context.execute("PF(''addAdminDialog'').show();");
}

if(connectionOk && in.tabChangeEvent.tab.id.contains("clusterTab") && out.databaseSettings.getAdministratorManager().getClusterNodes().isEmpty())
{
	context.execute("PF(''addLocalNodeDialog'').show();");
}	' #txt
ss0 f14 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open Dialogs for empty tabs</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f14 152 234 160 44 -77 -8 #rect
ss0 f14 @|StepIcon #fIcon
ss0 f16 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f16 actionTable 'out=in;
' #txt
ss0 f16 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

if(in.databaseSettings.getConnectionInfo().connectionState == ConnectionState.NOT_CONNECTED)
{
	in.databaseSettings.testConnection();
}' #txt
ss0 f16 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Connection</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f16 384 234 112 44 -50 -8 #rect
ss0 f16 @|StepIcon #fIcon
ss0 f18 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f18 actionTable 'out=in;
' #txt
ss0 f18 actionCode 'import java.util.concurrent.TimeUnit;
import com.axon.ivy.engine.config.FocusSetter;

if(in.tabChangeEvent.tab.id.contains("systemDatabaseTab"))
{
	FocusSetter.setFocusOnHostInput();
}

if(in.tabChangeEvent.tab.id.contains("administratorsTab") && !in.databaseSettings.getAdministratorManager().getAdministrators().isEmpty())
{
	FocusSetter.setFocusOnAdministratorsTabNextStepButton();
}

if(in.tabChangeEvent.tab.id.contains("clusterTab") && !in.databaseSettings.getAdministratorManager().getClusterNodes().isEmpty())
{
	TimeUnit.MILLISECONDS.sleep(240);
	FocusSetter.setFocusOnClusterTabNextStepButton();
}' #txt
ss0 f18 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set Focus</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f18 552 234 112 44 -27 -8 #rect
ss0 f18 @|StepIcon #fIcon
ss0 f20 expr out #txt
ss0 f20 108 256 152 256 #arcP
ss0 f17 expr out #txt
ss0 f17 312 256 384 256 #arcP
ss0 f15 expr out #txt
ss0 f15 664 256 723 256 #arcP
ss0 f13 expr out #txt
ss0 f13 496 256 552 256 #arcP
ss0 f19 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f19 guid 15D0D93DAB2ED91F #txt
ss0 f19 371 307 26 26 0 12 #rect
ss0 f19 @|RichDialogEndIcon #fIcon
ss0 f21 guid 15D0D947790DFC73 #txt
ss0 f21 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f21 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f21 actionTable 'out=in;
' #txt
ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f21 82 307 26 26 -15 15 #rect
ss0 f21 @|RichDialogProcessStartIcon #fIcon
ss0 f22 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f22 actionTable 'out=in;
' #txt
ss0 f22 actionCode out.databaseSettings.saveAll(); #txt
ss0 f22 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save all</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f22 172 298 112 44 -21 -8 #rect
ss0 f22 @|StepIcon #fIcon
ss0 f23 expr out #txt
ss0 f23 108 320 172 320 #arcP
ss0 f23 0 0.31220825344279884 0 0 #arcLabel
ss0 f24 expr out #txt
ss0 f24 284 320 371 320 #arcP
ss0 f24 0 0.2788417630134049 0 0 #arcLabel
ss0 f25 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f25 actionTable 'out=in;
' #txt
ss0 f25 actionCode out.databaseSettings.saveAll(); #txt
ss0 f25 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save all</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f25 168 170 112 44 -21 -8 #rect
ss0 f25 @|StepIcon #fIcon
ss0 f26 expr out #txt
ss0 f26 108 192 168 192 #arcP
ss0 f10 expr out #txt
ss0 f10 280 192 371 192 #arcP
>Proto ss0 .type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
>Proto ss0 .processKind HTML_DIALOG #txt
>Proto ss0 -8 -8 16 16 16 26 #rect
>Proto ss0 '' #fIcon
ss0 f0 mainOut f4 tail #connect
ss0 f4 head f3 mainIn #connect
ss0 f3 mainOut f2 tail #connect
ss0 f2 head f1 mainIn #connect
ss0 f5 mainOut f7 tail #connect
ss0 f7 head f6 mainIn #connect
ss0 f11 mainOut f20 tail #connect
ss0 f20 head f14 mainIn #connect
ss0 f14 mainOut f17 tail #connect
ss0 f17 head f16 mainIn #connect
ss0 f18 mainOut f15 tail #connect
ss0 f15 head f12 mainIn #connect
ss0 f16 mainOut f13 tail #connect
ss0 f13 head f18 mainIn #connect
ss0 f21 mainOut f23 tail #connect
ss0 f23 head f22 mainIn #connect
ss0 f22 mainOut f24 tail #connect
ss0 f24 head f19 mainIn #connect
ss0 f8 mainOut f26 tail #connect
ss0 f26 head f25 mainIn #connect
ss0 f25 mainOut f10 tail #connect
ss0 f10 head f9 mainIn #connect
