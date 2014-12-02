[Ivy]
[>Created: Mon Apr 30 11:20:21 CEST 2012]
117B5597058AFD7D 3.17 #module
>Proto >Proto Collection #zClass
As0 AdministratorUIProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogMethodStart f1 '' #zField
As0 @RichDialogProcessEnd f2 '' #zField
As0 @RichDialogProcessEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogProcessEnd f7 '' #zField
As0 @RichDialogProcessStart f9 '' #zField
As0 @RichDialogProcessStart f10 '' #zField
As0 @RichDialogProcessEnd f13 '' #zField
As0 @RichDialogProcessEnd f14 '' #zField
As0 @RichDialogBroadcastStart f18 '' #zField
As0 @PushWFArc f6 '' #zField
As0 @RichDialogProcessStart f8 '' #zField
As0 @RichDialogProcessEnd f19 '' #zField
As0 @PushWFArc f20 '' #zField
As0 @RichDialog f21 '' #zField
As0 @RichDialog f25 '' #zField
As0 @PushWFArc f26 '' #zField
As0 @PushWFArc f15 '' #zField
As0 @Alternative f27 '' #zField
As0 @PushWFArc f28 '' #zField
As0 @RichDialogProcessStep f30 '' #zField
As0 @PushWFArc f31 '' #zField
As0 @PushWFArc f32 '' #zField
As0 @RichDialogProcessStep f16 '' #zField
As0 @PushWFArc f33 '' #zField
As0 @PushWFArc f3 '' #zField
As0 @RichDialogInitStart f34 '' #zField
As0 @RichDialogProcessEnd f35 '' #zField
As0 @PushWFArc f36 '' #zField
As0 @RichDialogProcessStart f37 '' #zField
As0 @RichDialog f38 '' #zField
As0 @RichDialogProcessEnd f40 '' #zField
As0 @PushWFArc f41 '' #zField
As0 @PushWFArc f29 '' #zField
As0 @Alternative f42 '' #zField
As0 @PushWFArc f43 '' #zField
As0 @PushWFArc f39 '' #zField
As0 @PushWFArc f44 '' #zField
As0 @Alternative f11 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f17 '' #zField
As0 @PushWFArc f22 '' #zField
>Proto As0 As0 AdministratorUIProcess #zField
As0 f0 guid 117B58DF0E1C3BF4 #txt
As0 f0 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f0 method start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
As0 f0 disableUIEvents false #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.Configuration configuration> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.administratorManager=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getAdministratorManager();
out.configuration=param.configuration;
out.connectionTester=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getConnectionTester();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Configuration)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 62 46 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 guid 117B58DFE2DBA712 #txt
As0 f1 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f1 method save() #txt
As0 f1 disableUIEvents false #txt
As0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f1 outParameterDecl '<> result;
' #txt
As0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save()</name>
    </language>
</elementInfo>
' #txt
As0 f1 190 46 20 20 13 0 #rect
As0 f1 @|RichDialogMethodStartIcon #fIcon
As0 f2 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f2 190 134 20 20 11 0 #rect
As0 f2 @|RichDialogProcessEndIcon #fIcon
As0 f4 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f4 62 134 20 20 11 0 #rect
As0 f4 @|RichDialogProcessEndIcon #fIcon
As0 f5 expr out #txt
As0 f5 72 66 72 134 #arcP
As0 f7 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f7 318 134 20 20 11 0 #rect
As0 f7 @|RichDialogProcessEndIcon #fIcon
As0 f9 guid 117B59C944D1FC53 #txt
As0 f9 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f9 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 62 238 20 20 13 0 #rect
As0 f9 @|RichDialogProcessStartIcon #fIcon
As0 f10 guid 117B59CA189C4EF0 #txt
As0 f10 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f10 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f10 actionTable 'out=in;
' #txt
As0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f10 318 230 20 20 13 0 #rect
As0 f10 @|RichDialogProcessStartIcon #fIcon
As0 f13 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f13 318 454 20 20 11 0 #rect
As0 f13 @|RichDialogProcessEndIcon #fIcon
As0 f14 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f14 62 342 20 20 11 0 #rect
As0 f14 @|RichDialogProcessEndIcon #fIcon
As0 f18 guid 117C115F59259D6C #txt
As0 f18 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f18 broadcast connectionStateChanged #txt
As0 f18 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f18 actionTable 'out=in;
' #txt
As0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accepted broadcast: connectionStateChanged</name>
        <nameStyle>42,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f18 318 46 20 20 20 -4 #rect
As0 f18 @|RichDialogBroadcastStartIcon #fIcon
As0 f6 expr out #txt
As0 f6 328 66 328 134 #arcP
As0 f8 guid 117C1334C926FCC3 #txt
As0 f8 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f8 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f8 actionTable 'out=in;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>adminSelected</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f8 190 238 20 20 13 0 #rect
As0 f8 @|RichDialogProcessStartIcon #fIcon
As0 f19 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f19 190 342 20 20 11 0 #rect
As0 f19 @|RichDialogProcessEndIcon #fIcon
As0 f20 expr out #txt
As0 f20 200 258 200 342 #arcP
As0 f21 targetWindow NEW:card: #txt
As0 f21 targetDisplay TOP #txt
As0 f21 richDialogId ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin #txt
As0 f21 startMethod start(ch.ivyteam.ivy.security.Administrator) #txt
As0 f21 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f21 requestActionDecl '<ch.ivyteam.ivy.security.Administrator administrator> param;' #txt
As0 f21 requestMappingAction 'param.administrator=in.selectedAdministrator;
' #txt
As0 f21 responseActionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f21 responseMappingAction 'out=in;
out.result=result.result;
' #txt
As0 f21 windowConfiguration '{/title "Delete Administrator <%=in.selectedAdministrator.getName()%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
As0 f21 isAsynch false #txt
As0 f21 isInnerRd true #txt
As0 f21 isDialog true #txt
As0 f21 userContext '* ' #txt
As0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f21 310 340 36 24 20 -2 #rect
As0 f21 @|RichDialogIcon #fIcon
As0 f25 targetWindow NEW:card: #txt
As0 f25 targetDisplay TOP #txt
As0 f25 richDialogId ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin #txt
As0 f25 startMethod createAdmin() #txt
As0 f25 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f25 requestActionDecl '<> param;' #txt
As0 f25 responseActionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f25 responseMappingAction 'out=in;
' #txt
As0 f25 responseActionCode 'if (result.#createdAdmin != null)
{
  in.administratorManager.addAdministrator(result.createdAdmin);
}' #txt
As0 f25 windowConfiguration '{/title "Create new Administrator"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
As0 f25 isAsynch false #txt
As0 f25 isInnerRd true #txt
As0 f25 isDialog true #txt
As0 f25 userContext '* ' #txt
As0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f25 54 284 36 24 19 -2 #rect
As0 f25 @|RichDialogIcon #fIcon
As0 f26 expr out #txt
As0 f26 72 258 72 284 #arcP
As0 f15 expr out #txt
As0 f15 72 308 72 342 #arcP
As0 f27 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f27 314 386 28 28 14 0 #rect
As0 f27 @|AlternativeIcon #fIcon
As0 f28 expr out #txt
As0 f28 328 364 328 386 #arcP
As0 f30 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f30 actionTable 'out=in;
' #txt
As0 f30 actionCode 'in.administratorManager.getAdministrators().remove(in.selectedAdministrator);
in.selectedAdministrator = null;' #txt
As0 f30 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f30 382 420 36 24 20 -2 #rect
As0 f30 @|RichDialogProcessStepIcon #fIcon
As0 f31 expr in #txt
As0 f31 outCond in.result #txt
As0 f31 338 404 382 424 #arcP
As0 f32 expr out #txt
As0 f32 382 440 337 459 #arcP
As0 f16 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f16 actionTable 'out=in;
' #txt
As0 f16 actionCode in.administratorManager.storeAdministrators(); #txt
As0 f16 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f16 198 84 36 24 20 -2 #rect
As0 f16 @|RichDialogProcessStepIcon #fIcon
As0 f33 expr out #txt
As0 f33 203 65 211 84 #arcP
As0 f3 expr out #txt
As0 f3 212 108 203 134 #arcP
As0 f34 guid 11B458DC5B3A7C0F #txt
As0 f34 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f34 method start() #txt
As0 f34 disableUIEvents false #txt
As0 f34 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f34 outParameterDecl '<> result;
' #txt
As0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f34 62 430 20 20 13 0 #rect
As0 f34 @|RichDialogInitStartIcon #fIcon
As0 f35 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f35 62 486 20 20 11 0 #rect
As0 f35 @|RichDialogProcessEndIcon #fIcon
As0 f36 expr out #txt
As0 f36 72 450 72 486 #arcP
As0 f37 guid 11EFEFB2B9187221 #txt
As0 f37 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f37 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f37 actionTable 'out=in;
' #txt
As0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f37 190 430 20 20 13 0 #rect
As0 f37 @|RichDialogProcessStartIcon #fIcon
As0 f38 targetWindow NEW:card: #txt
As0 f38 targetDisplay TOP #txt
As0 f38 richDialogId ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin #txt
As0 f38 startMethod editAdmin(ch.ivyteam.ivy.security.Administrator) #txt
As0 f38 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f38 requestActionDecl '<ch.ivyteam.ivy.security.Administrator admin> param;' #txt
As0 f38 requestMappingAction 'param.admin=in.selectedAdministrator;
' #txt
As0 f38 responseActionDecl 'ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData out;
' #txt
As0 f38 responseMappingAction 'out=in;
' #txt
As0 f38 responseActionCode panel.adminTable.getListData().elementChanged(in.selectedAdministrator); #txt
As0 f38 windowConfiguration '{/title "Edit Administrator"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
As0 f38 isAsynch false #txt
As0 f38 isInnerRd true #txt
As0 f38 isDialog true #txt
As0 f38 userContext '* ' #txt
As0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
As0 f38 182 532 36 24 20 -2 #rect
As0 f38 @|RichDialogIcon #fIcon
As0 f40 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f40 190 590 20 20 11 0 #rect
As0 f40 @|RichDialogProcessEndIcon #fIcon
As0 f41 expr out #txt
As0 f41 200 556 200 590 #arcP
As0 f29 expr in #txt
As0 f29 328 414 328 454 #arcP
As0 f42 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f42 186 466 28 28 14 0 #rect
As0 f42 @|AlternativeIcon #fIcon
As0 f43 expr out #txt
As0 f43 200 450 200 466 #arcP
As0 f39 expr in #txt
As0 f39 outCond 'in.#selectedAdministrator != null' #txt
As0 f39 200 494 200 532 #arcP
As0 f44 expr in #txt
As0 f44 193 487 192 592 #arcP
As0 f44 1 144 544 #addKink
As0 f44 0 0.9585900980710121 0 0 #arcLabel
As0 f11 type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
As0 f11 314 282 28 28 14 0 #rect
As0 f11 @|AlternativeIcon #fIcon
As0 f12 expr out #txt
As0 f12 328 250 328 282 #arcP
As0 f17 expr in #txt
As0 f17 outCond 'in.#selectedAdministrator!=null' #txt
As0 f17 328 310 328 340 #arcP
As0 f22 expr in #txt
As0 f22 322 304 322 455 #arcP
As0 f22 1 272 368 #addKink
As0 f22 1 0.003769328456035178 0 0 #arcLabel
>Proto As0 .ui2RdDataAction 'out.selectedAdministrator=panel.adminTable.getSelectedListEntry() as ch.ivyteam.ivy.security.Administrator;
' #txt
>Proto As0 .rdData2UIAction 'panel.adminTable.listData=in.administratorManager.getAdministrators();
panel.deleteButton.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED&&
in.#selectedAdministrator != null;
panel.editButton.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED
&& in.#selectedAdministrator != null;
panel.createButton.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED;
' #txt
>Proto As0 .type ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI.AdministratorUIData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f18 mainOut f6 tail #connect
As0 f6 head f7 mainIn #connect
As0 f8 mainOut f20 tail #connect
As0 f20 head f19 mainIn #connect
As0 f9 mainOut f26 tail #connect
As0 f26 head f25 mainIn #connect
As0 f25 mainOut f15 tail #connect
As0 f15 head f14 mainIn #connect
As0 f21 mainOut f28 tail #connect
As0 f28 head f27 in #connect
As0 f31 head f30 mainIn #connect
As0 f30 mainOut f32 tail #connect
As0 f32 head f13 mainIn #connect
As0 f1 mainOut f33 tail #connect
As0 f33 head f16 mainIn #connect
As0 f16 mainOut f3 tail #connect
As0 f3 head f2 mainIn #connect
As0 f34 mainOut f36 tail #connect
As0 f36 head f35 mainIn #connect
As0 f38 mainOut f41 tail #connect
As0 f41 head f40 mainIn #connect
As0 f27 out f31 tail #connect
As0 f27 out f29 tail #connect
As0 f29 head f13 mainIn #connect
As0 f37 mainOut f43 tail #connect
As0 f43 head f42 in #connect
As0 f42 out f39 tail #connect
As0 f39 head f38 mainIn #connect
As0 f42 out f44 tail #connect
As0 f44 head f40 mainIn #connect
As0 f10 mainOut f12 tail #connect
As0 f12 head f11 in #connect
As0 f11 out f17 tail #connect
As0 f17 head f21 mainIn #connect
As0 f11 out f22 tail #connect
As0 f22 head f13 mainIn #connect
