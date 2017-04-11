[Ivy]
[>Created: Tue Apr 11 15:09:34 CEST 2017]
157E7BB4142F9EFB 3.20 #module
>Proto >Proto Collection #zClass
Ss0 AdministratorsComponentProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f11 '' #zField
Ss0 @RichDialogProcessEnd f12 '' #zField
Ss0 @GridStep f14 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @RichDialogProcessStart f16 '' #zField
Ss0 @GridStep f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @GridStep f2 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f3 '' #zField
>Proto Ss0 Ss0 AdministratorsComponentProcess #zField
Ss0 f0 guid 157E7518F76CF891 #txt
Ss0 f0 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axon.ivy.engine.config.SystemDatabaseSettings settings> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.administratorManager=param.settings.getAdministratorManager();
out.connectionInfo=param.settings.getConnectionInfo();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f1 347 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f11 guid 159A6B937AA7C399 #txt
Ss0 f11 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f11 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeAdmin</name>
    </language>
</elementInfo>
' #txt
Ss0 f11 83 147 26 26 -38 12 #rect
Ss0 f11 @|RichDialogProcessStartIcon #fIcon
Ss0 f12 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f12 579 195 26 26 0 12 #rect
Ss0 f12 @|RichDialogProcessEndIcon #fIcon
Ss0 f14 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'out.administratorManager.removeAdministrator(in.#selectedAdministrator);' #txt
Ss0 f14 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Remove selected administrator</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 136 138 176 44 -85 -8 #rect
Ss0 f14 @|StepIcon #fIcon
Ss0 f15 expr out #txt
Ss0 f15 109 160 136 160 #arcP
Ss0 f16 guid 159A6C6401C7533F #txt
Ss0 f16 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f16 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f16 actionTable 'out=in;
' #txt
Ss0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNewAdmin</name>
    </language>
</elementInfo>
' #txt
Ss0 f16 83 243 26 26 -40 12 #rect
Ss0 f16 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 actionCode 'import ch.ivyteam.ivy.security.Administrator;

in.administratorManager.addAdministrator(new Administrator(in.newName, in.newFullName, in.newEMailAddress, in.newPassword));
in.newEMailAddress ="";
in.newPassword ="";
in.newName ="";
in.newFullName ="";' #txt
Ss0 f19 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new administrator</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 160 234 128 44 -61 -8 #rect
Ss0 f19 @|StepIcon #fIcon
Ss0 f20 expr out #txt
Ss0 f20 109 256 160 256 #arcP
Ss0 f2 actionDecl 'com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 actionCode in.administratorManager.storeAdministrators(); #txt
Ss0 f2 type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Admins</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 384 186 112 44 -36 -8 #rect
Ss0 f2 @|StepIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 496 208 579 208 #arcP
Ss0 f10 expr out #txt
Ss0 f10 288 256 384 208 #arcP
Ss0 f18 expr out #txt
Ss0 f18 312 180 384 208 #arcP
Ss0 f3 expr out #txt
Ss0 f3 109 64 347 64 #arcP
>Proto Ss0 .type com.axonivy.engine.config.ui.settings.component.AdministratorsComponent.AdministratorsComponentData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f11 mainOut f15 tail #connect
Ss0 f15 head f14 mainIn #connect
Ss0 f16 mainOut f20 tail #connect
Ss0 f20 head f19 mainIn #connect
Ss0 f2 mainOut f9 tail #connect
Ss0 f9 head f12 mainIn #connect
Ss0 f19 mainOut f10 tail #connect
Ss0 f10 head f2 mainIn #connect
Ss0 f14 mainOut f18 tail #connect
Ss0 f18 head f2 mainIn #connect
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
