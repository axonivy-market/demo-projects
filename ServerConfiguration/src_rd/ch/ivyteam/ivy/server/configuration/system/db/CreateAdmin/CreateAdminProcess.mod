[Ivy]
[>Created: Mon Apr 30 10:32:02 CEST 2012]
117C13F91A0AD37D 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CreateAdminProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessStart f1 '' #zField
Cs0 @RichDialogProcessStart f2 '' #zField
Cs0 @RichDialogEnd f3 '' #zField
Cs0 @RichDialogEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessEnd f11 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogInitStart f19 '' #zField
Cs0 @RichDialogProcessEnd f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @RichDialogInitStart f22 '' #zField
Cs0 @RichDialogProcessStart f25 '' #zField
Cs0 @RichDialogProcessStep f26 '' #zField
Cs0 @RichDialogProcessEnd f27 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @RichDialogProcessStep f30 '' #zField
Cs0 @PushWFArc f31 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogProcessStep f7 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f12 '' #zField
>Proto Cs0 Cs0 CreateAdminProcess #zField
Cs0 f0 guid 117C4D56CD95CBD3 #txt
Cs0 f0 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f0 method createAdmin() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<ch.ivyteam.ivy.security.Administrator createdAdmin> result;
' #txt
Cs0 f0 outActionCode 'import ch.ivyteam.ivy.security.Administrator;

if(in.ok)
{
	result.createdAdmin = new Administrator(in.name, in.fullName, in.eMailAddress, 	
in.password);
}' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createAdmin()</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 54 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 117C4D571DA575FC #txt
Cs0 f1 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f1 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f1 actionTable 'out=in;
' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 358 38 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessStartIcon #fIcon
Cs0 f2 guid 117C4D577382301D #txt
Cs0 f2 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f2 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f2 actionTable 'out=in;
out.ok=false;
' #txt
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f2 494 38 20 20 13 0 #rect
Cs0 f2 @|RichDialogProcessStartIcon #fIcon
Cs0 f3 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f3 guid 117C4D5B7E1DD949 #txt
Cs0 f3 491 107 26 26 14 0 #rect
Cs0 f3 @|RichDialogEndIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f4 guid 117C4D5C03C73E43 #txt
Cs0 f4 355 163 26 26 14 0 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 504 58 504 107 #arcP
Cs0 f11 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f11 115 171 26 26 14 0 #rect
Cs0 f11 @|RichDialogProcessEndIcon #fIcon
Cs0 f13 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f13 actionTable 'out=in;
out.ok=true;
' #txt
Cs0 f13 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set ok=true</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 350 100 36 24 23 -7 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 368 124 368 163 #arcP
Cs0 f19 guid 11B458E37CCE64F1 #txt
Cs0 f19 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f19 method start() #txt
Cs0 f19 disableUIEvents false #txt
Cs0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f19 outParameterDecl '<> result;
' #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f19 54 230 20 20 13 0 #rect
Cs0 f19 @|RichDialogInitStartIcon #fIcon
Cs0 f20 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f20 51 283 26 26 14 0 #rect
Cs0 f20 @|RichDialogProcessEndIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 64 250 64 283 #arcP
Cs0 f22 guid 11EFE883E0CB3153 #txt
Cs0 f22 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f22 method editAdmin(ch.ivyteam.ivy.security.Administrator) #txt
Cs0 f22 disableUIEvents false #txt
Cs0 f22 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.Administrator admin> param = methodEvent.getInputArguments();
' #txt
Cs0 f22 inParameterMapAction 'out.admin=param.admin;
out.confirmPassword="********";
out.eMailAddress=param.admin.eMailAddress;
out.fullName=param.admin.fullName;
out.hasPasswordChanged=false;
out.name=param.admin.getName();
out.password="********";
' #txt
Cs0 f22 outParameterDecl '<ch.ivyteam.ivy.security.Administrator admin> result;
' #txt
Cs0 f22 outActionCode 'import ch.ivyteam.ivy.security.Administrator;

if(in.ok)
{
	in.admin.setEMailAddress(in.eMailAddress);
	in.admin.setFullName(in.fullName);
	if (!in.password.equalsIgnoreCase("********"))
	{
		in.admin.changePassword(in.password);
	}	
}
panel.getRootPane().setDefaultButton(panel.okButton);' #txt
Cs0 f22 embeddedRdInitializations '* ' #txt
Cs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editAdmin(Administrator)</name>
        <nameStyle>24,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f22 166 38 20 20 13 0 #rect
Cs0 f22 @|RichDialogInitStartIcon #fIcon
Cs0 f25 guid 136F2D6EC8F51895 #txt
Cs0 f25 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f25 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f25 actionTable 'out=in;
' #txt
Cs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fieldValueChanged</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f25 598 46 20 20 14 -7 #rect
Cs0 f25 @|RichDialogProcessStartIcon #fIcon
Cs0 f26 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f26 actionTable 'out=in;
' #txt
Cs0 f26 actionCode 'panel.okButton.enabled != in.errors;' #txt
Cs0 f26 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable okButton</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 590 196 36 24 20 -2 #rect
Cs0 f26 @|RichDialogProcessStepIcon #fIcon
Cs0 f27 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f27 598 286 20 20 13 0 #rect
Cs0 f27 @|RichDialogProcessEndIcon #fIcon
Cs0 f29 expr out #txt
Cs0 f29 608 220 608 286 #arcP
Cs0 f30 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f30 actionTable 'out=in;
' #txt
Cs0 f30 actionCode 'import ch.ivyteam.ivy.ulc.server.validation.IValidator;
import ch.ivyteam.ivy.ulc.server.validation.ValidationConstants;
import com.ulcjava.base.application.util.Color;

Color errorColor = ValidationConstants.ERROR_BACKGROUND;
														
in.errors = false;
										
// Username
IValidator nameValidator = panel.nameTextField.getValidator();
if (in.name.trim().length() == 0)
{
	nameValidator.showErrorMessage("A name must be specified for the administrator!", null);
}
if (nameValidator.hasErrors())
{
	in.errors = true;
}


// Password
Boolean wasValidLastTime = panel.confirmPasswordField.getToolTipText() == "";
if (in.password != in.confirmPassword)
{
	in.errors = true;
	if (wasValidLastTime) // avoid unneeded UI manipulations > performance bottleneck
	{
		panel.passwordPasswordField.setBackground(errorColor);
		panel.confirmPasswordField.setBackground(errorColor);
		panel.confirmPasswordField.setToolTipText("The entered passwords do not match!");
	}
}
else
{
	if (!wasValidLastTime) // avoid unneeded UI manipulations > performance bottleneck
	{
		panel.passwordPasswordField.setBackground(Color.white);
		panel.confirmPasswordField.setBackground(Color.white);
		panel.confirmPasswordField.setToolTipText(null);
	}
	if (in.password.trim().length() == 0)
	{
		in.errors = true;
	}
}

// Check for email
IValidator mailValidator = panel.eMailAddressTextField.getValidator();
if (in.eMailAddress.length() > 0 && !ch.ivyteam.ivy.checking.CommonFormats.EMAIL.test(in.eMailAddress))
{
	in.errors = true;
	mailValidator.showErrorMessage("Email address wrong",null);
}
else
{
	mailValidator.clearErrorMessage();
}
' #txt
Cs0 f30 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validation</name>
        <nameStyle>10,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f30 590 116 36 24 20 -2 #rect
Cs0 f30 @|RichDialogProcessStepIcon #fIcon
Cs0 f31 expr out #txt
Cs0 f31 608 66 608 116 #arcP
Cs0 f28 expr out #txt
Cs0 f28 608 140 608 196 #arcP
Cs0 f28 0 0.4999999999999999 0 0 #arcLabel
Cs0 f6 expr out #txt
Cs0 f6 368 58 368 100 #arcP
Cs0 f7 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode panel.getRootPane().setDefaultButton(panel.okButton); #txt
Cs0 f7 type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Ok button = default</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 111 116 34 24 20 -2 #rect
Cs0 f7 @|RichDialogProcessStepIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 70 55 118 116 #arcP
Cs0 f10 expr out #txt
Cs0 f10 128 140 128 171 #arcP
Cs0 f12 expr out #txt
Cs0 f12 170 56 135 116 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin.CreateAdminData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .ui2RdDataAction 'out.confirmPassword=panel.confirmPasswordField.text;
out.eMailAddress=panel.eMailAddressTextField.text;
out.fullName=panel.fullNameTextField.text;
out.name=panel.nameTextField.text;
out.password=panel.passwordPasswordField.text;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.confirmPasswordField.text=in.confirmPassword;
panel.eMailAddressTextField.text=in.eMailAddress;
panel.fullNameTextField.text=in.fullName;
panel.nameTextField.enabled=in.#admin==null;
panel.nameTextField.text=in.name;
panel.okButton.enabled=!in.errors;
panel.passwordPasswordField.text=in.password;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f2 mainOut f5 tail #connect
Cs0 f5 head f3 mainIn #connect
Cs0 f13 mainOut f8 tail #connect
Cs0 f8 head f4 mainIn #connect
Cs0 f19 mainOut f21 tail #connect
Cs0 f21 head f20 mainIn #connect
Cs0 f26 mainOut f29 tail #connect
Cs0 f29 head f27 mainIn #connect
Cs0 f25 mainOut f31 tail #connect
Cs0 f31 head f30 mainIn #connect
Cs0 f30 mainOut f28 tail #connect
Cs0 f28 head f26 mainIn #connect
Cs0 f1 mainOut f6 tail #connect
Cs0 f6 head f13 mainIn #connect
Cs0 f0 mainOut f9 tail #connect
Cs0 f9 head f7 mainIn #connect
Cs0 f7 mainOut f10 tail #connect
Cs0 f10 head f11 mainIn #connect
Cs0 f22 mainOut f12 tail #connect
Cs0 f12 head f7 mainIn #connect
