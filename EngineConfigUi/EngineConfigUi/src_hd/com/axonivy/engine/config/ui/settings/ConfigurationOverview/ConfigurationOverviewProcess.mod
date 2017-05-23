[Ivy]
[>Created: Mon May 22 15:55:47 CEST 2017]
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
ss0 @PushWFArc f10 '' #zField
ss0 @RichDialogMethodStart f11 '' #zField
ss0 @RichDialogProcessEnd f12 '' #zField
ss0 @GridStep f14 '' #zField
ss0 @PushWFArc f15 '' #zField
ss0 @PushWFArc f13 '' #zField
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
    </language>
</elementInfo>
' #txt
ss0 f0 83 51 26 26 -16 15 #rect
ss0 f0 @|RichDialogInitStartIcon #fIcon
ss0 f1 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f1 339 51 26 26 0 12 #rect
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
ss0 f4 109 64 168 64 #arcP
ss0 f2 expr out #txt
ss0 f2 280 64 339 64 #arcP
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
ss0 f5 83 115 26 26 -47 15 #rect
ss0 f5 @|RichDialogProcessStartIcon #fIcon
ss0 f6 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f6 339 115 26 26 0 12 #rect
ss0 f6 @|RichDialogProcessEndIcon #fIcon
ss0 f7 109 128 339 128 #arcP
ss0 f8 guid 15BC386770BD0A74 #txt
ss0 f8 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData out;
' #txt
ss0 f8 actionTable 'out=in;
' #txt
ss0 f8 actionCode out.databaseSettings.saveAll(); #txt
ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveAll</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ss0 f8 83 179 26 26 -19 15 #rect
ss0 f8 @|RichDialogProcessStartIcon #fIcon
ss0 f9 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f9 339 179 26 26 0 12 #rect
ss0 f9 @|RichDialogProcessEndIcon #fIcon
ss0 f10 109 192 339 192 #arcP
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
ss0 f11 83 243 26 26 -49 15 #rect
ss0 f11 @|RichDialogMethodStartIcon #fIcon
ss0 f12 type com.axonivy.engine.config.ui.settings.ConfigurationOverview.ConfigurationOverviewData #txt
ss0 f12 339 243 26 26 0 12 #rect
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
ss0 f14 144 234 160 44 -77 -8 #rect
ss0 f14 @|StepIcon #fIcon
ss0 f15 expr out #txt
ss0 f15 109 256 144 256 #arcP
ss0 f13 expr out #txt
ss0 f13 304 256 339 256 #arcP
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
ss0 f8 mainOut f10 tail #connect
ss0 f10 head f9 mainIn #connect
ss0 f11 mainOut f15 tail #connect
ss0 f15 head f14 mainIn #connect
ss0 f14 mainOut f13 tail #connect
ss0 f13 head f12 mainIn #connect
