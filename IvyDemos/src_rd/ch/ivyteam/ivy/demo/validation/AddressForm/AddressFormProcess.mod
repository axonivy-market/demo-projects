[Ivy]
[>Created: Fri Jun 26 16:02:15 CEST 2009]
120EB8BF4273C3CD 3.12 #module
>Proto >Proto Collection #zClass
As0 AdressFormProcess Big #zClass
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
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogProcessEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
>Proto As0 As0 AdressFormProcess #zField
As0 f0 guid 120EB8BF44679102 #txt
As0 f0 type ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents false #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 90 40 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData #txt
As0 f1 87 137 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 100 60 100 137 #arcP
As0 f3 guid 120EBB59A9142557 #txt
As0 f3 type ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData #txt
As0 f3 actionDecl 'ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode 'import ch.ivyteam.ivy.ulc.server.validation.IValidator;


if ((in.Data.Zip >0) && (in.Data.Zip != 6304))
{
	IValidator validator = ivy.rd.getValidator(panel.Zip_RTextField);
  validator.showErrorMessage("This is not the zip of Zug (6304).",in.Data.Zip);
}' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>zip</name>
        <nameStyle>3,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 318 46 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f4 type ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData #txt
As0 f4 315 139 26 26 14 0 #rect
As0 f4 @|RichDialogProcessEndIcon #fIcon
As0 f5 expr out #txt
As0 f5 328 66 328 139 #arcP
>Proto As0 .ui2RdDataAction 'out.Data.Zip=panel.Zip_RTextField.valueAsNumber;
' #txt
>Proto As0 .rdData2UIAction 'panel.titleComboBox.enumClassName="ch.ivyteam.ivy.demo.validation.Title";
panel.Zip_RTextField.valueAsNumber=in.Data.Zip;
' #txt
>Proto As0 .type ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
