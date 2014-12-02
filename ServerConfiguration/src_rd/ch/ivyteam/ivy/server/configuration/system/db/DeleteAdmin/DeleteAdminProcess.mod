[Ivy]
[>Created: Thu Jan 27 17:41:51 CET 2011]
117C136105F84684 3.15 #module
>Proto >Proto Collection #zClass
Ds0 DeleteAdminProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @RichDialogProcessStart f5 '' #zField
Ds0 @RichDialogEnd f6 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @RichDialogInitStart f11 '' #zField
Ds0 @RichDialogProcessEnd f12 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @PushWFArc f7 '' #zField
>Proto Ds0 Ds0 DeleteAdminProcess #zField
Ds0 f0 guid 117C13A8E4A9259A #txt
Ds0 f0 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f0 method start(ch.ivyteam.ivy.security.Administrator) #txt
Ds0 f0 disableUIEvents false #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.Administrator administrator> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<java.lang.Boolean result> result;
' #txt
Ds0 f0 outParameterMapAction 'result.result=in.result;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Administrator)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 54 54 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f1 51 147 26 26 14 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 64 74 64 147 #arcP
Ds0 f3 guid 117C13AB1045E2D1 #txt
Ds0 f3 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData out;
' #txt
Ds0 f3 actionTable 'out=in;
out.result=true;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 190 54 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f4 guid 117C13AB81941782 #txt
Ds0 f4 187 147 26 26 14 0 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 guid 117C13AC0F28DB95 #txt
Ds0 f5 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f5 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData out;
' #txt
Ds0 f5 actionTable 'out=in;
out.result=false;
' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 374 54 20 20 13 0 #rect
Ds0 f5 @|RichDialogProcessStartIcon #fIcon
Ds0 f6 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f6 guid 117C13AC6BF2AA31 #txt
Ds0 f6 371 147 26 26 14 0 #rect
Ds0 f6 @|RichDialogEndIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 384 74 384 147 #arcP
Ds0 f11 guid 11B458E6A3B760EF #txt
Ds0 f11 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f11 method start() #txt
Ds0 f11 disableUIEvents false #txt
Ds0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f11 outParameterDecl '<> result;
' #txt
Ds0 f11 embeddedRdInitializations '* ' #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 54 230 20 20 13 0 #rect
Ds0 f11 @|RichDialogInitStartIcon #fIcon
Ds0 f12 type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
Ds0 f12 51 291 26 26 14 0 #rect
Ds0 f12 @|RichDialogProcessEndIcon #fIcon
Ds0 f13 expr out #txt
Ds0 f13 64 250 64 291 #arcP
Ds0 f7 expr out #txt
Ds0 f7 200 74 200 147 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin.DeleteAdminData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f5 mainOut f10 tail #connect
Ds0 f10 head f6 mainIn #connect
Ds0 f11 mainOut f13 tail #connect
Ds0 f13 head f12 mainIn #connect
Ds0 f3 mainOut f7 tail #connect
Ds0 f7 head f4 mainIn #connect
