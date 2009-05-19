[Ivy]
[>Created: Tue Dec 16 09:57:04 CET 2008]
118CB700DF77F3F4 3.10 #module
>Proto >Proto Collection #zClass
Ss0 StartAProcessProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessEnd f5 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessStart f9 '' #zField
Ss0 @RichDialogProcessEnd f10 '' #zField
Ss0 @RichDialogProcessStep f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @RichDialogEnd f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessStep f11 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @RichDialogProcessStart f20 '' #zField
Ss0 @RichDialogProcessStep f23 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @PushWFArc f25 '' #zField
>Proto Ss0 Ss0 StartAProcessProcess #zField
Ss0 f0 guid 118CB806AAAF2CBB #txt
Ss0 f0 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.DISPLAY_NAME="ch.ivyteam.processstarter.display";
out.loginName="Developer";
out.loginPassword="Developer";
out.loginStatus=false;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 54 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f1 51 187 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 0118CB80CD988DA3 #txt
Ss0 f3 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start_process</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 214 246 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f5 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f5 211 395 26 26 14 0 #rect
Ss0 f5 @|RichDialogProcessEndIcon #fIcon
Ss0 f8 guid 118CB810D0121C31 #txt
Ss0 f8 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close_current_panel</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 342 246 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 guid 118CB811E0818574 #txt
Ss0 f9 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f9 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f9 actionTable 'out=in;
' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 54 246 20 20 13 0 #rect
Ss0 f9 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f10 339 395 26 26 14 0 #rect
Ss0 f10 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f16 actionTable 'out=in;
' #txt
Ss0 f16 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
if (panel.myTabbedDisplay.#selectedComponent != null)
{
	IRichDialogPanel currentPanel = panel.myTabbedDisplay.#selectedComponent as IRichDialogPanel;
	currentPanel.getPanelAPI().unload();
}' #txt
Ss0 f16 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close current</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f16 334 316 36 24 20 -2 #rect
Ss0 f16 @|RichDialogProcessStepIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 352 266 352 316 #arcP
Ss0 f12 expr out #txt
Ss0 f12 352 340 352 395 #arcP
Ss0 f13 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f13 guid 118CB819DF3A6E95 #txt
Ss0 f13 51 323 26 26 14 0 #rect
Ss0 f13 @|RichDialogEndIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 64 266 64 323 #arcP
Ss0 f6 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'ivy.log.info("Calling panel.startSelectedProcess()", [].toArray());
panel.startSelectedProcess();' #txt
Ss0 f6 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f6 206 316 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 224 266 224 316 #arcP
Ss0 f4 expr out #txt
Ss0 f4 224 340 224 395 #arcP
Ss0 f11 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'ivy.log.info("Calling panel.addProcessStarts()", [].toArray());
int i = panel.addProcessStarts();' #txt
Ss0 f11 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add process starts</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 46 108 36 24 22 14 #rect
Ss0 f11 @|RichDialogProcessStepIcon #fIcon
Ss0 f15 expr out #txt
Ss0 f15 64 58 64 108 #arcP
Ss0 f2 expr out #txt
Ss0 f2 64 132 64 187 #arcP
Ss0 f18 guid 118CC6360FAC6842 #txt
Ss0 f18 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f18 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f18 actionTable 'out=in;
' #txt
Ss0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload_list</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f18 174 38 20 20 13 0 #rect
Ss0 f18 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 expr out #txt
Ss0 f19 175 53 82 109 #arcP
Ss0 f20 guid 118EAEB033A818D7 #txt
Ss0 f20 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f20 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f20 actionTable 'out=in;
' #txt
Ss0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f20 294 38 20 20 13 0 #rect
Ss0 f20 @|RichDialogProcessStartIcon #fIcon
Ss0 f23 actionDecl 'ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData out;
' #txt
Ss0 f23 actionTable 'out=in;
' #txt
Ss0 f23 actionCode 'out.loginStatus = ivy.session.loginSessionUser(in.loginName, in.loginPassword);
if (! out.loginStatus)
{
	ivy.session.logoutSessionUser();
}
' #txt
Ss0 f23 type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do login</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 286 108 36 24 20 -2 #rect
Ss0 f23 @|RichDialogProcessStepIcon #fIcon
Ss0 f24 expr out #txt
Ss0 f24 304 58 304 108 #arcP
Ss0 f25 expr out #txt
Ss0 f25 286 120 82 120 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.demo.process.ProcessStarter.ProcessStarterData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.loginName=panel.loginTextField.text;
out.loginPassword=panel.passwordTextField.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.loginTextField.text=in.loginName;
panel.passwordTextField.text=in.loginPassword;
panel.loginStatusValueLabel.iconUri=in.loginStatus ? "/Images/ok" : "/Images/not_ok";
panel.loginStatusValueLabel.text=in.loginStatus ? "logged in" : "not logged in";
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f8 mainOut f17 tail #connect
Ss0 f17 head f16 mainIn #connect
Ss0 f16 mainOut f12 tail #connect
Ss0 f12 head f10 mainIn #connect
Ss0 f9 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f3 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f4 tail #connect
Ss0 f4 head f5 mainIn #connect
Ss0 f0 mainOut f15 tail #connect
Ss0 f15 head f11 mainIn #connect
Ss0 f11 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f18 mainOut f19 tail #connect
Ss0 f19 head f11 mainIn #connect
Ss0 f20 mainOut f24 tail #connect
Ss0 f24 head f23 mainIn #connect
Ss0 f23 mainOut f25 tail #connect
Ss0 f25 head f11 mainIn #connect
