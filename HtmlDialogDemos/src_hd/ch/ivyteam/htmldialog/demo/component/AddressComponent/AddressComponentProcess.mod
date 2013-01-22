[Ivy]
[>Created: Tue Jan 22 18:40:42 CET 2013]
13B69F6D60FCC080 3.17 #module
>Proto >Proto Collection #zClass
As0 AddressComponentProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AddressComponentProcess #zField
As0 f0 guid 13B69F6D63DF676C #txt
As0 f0 type ch.ivyteam.htmldialog.demo.component.AddressComponent.AddressComponentData #txt
As0 f0 method start(ch.ivyteam.htmldialog.demo.Address) #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.htmldialog.demo.Address address> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.address=param.address.clone();
' #txt
As0 f0 outParameterDecl '<ch.ivyteam.htmldialog.demo.Address address> result;
' #txt
As0 f0 outParameterMapAction 'result.address=in.address;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Address)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 86 54 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.htmldialog.demo.component.AddressComponent.AddressComponentData #txt
As0 f1 86 150 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 96 74 96 150 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.component.AddressComponent.AddressComponentData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
