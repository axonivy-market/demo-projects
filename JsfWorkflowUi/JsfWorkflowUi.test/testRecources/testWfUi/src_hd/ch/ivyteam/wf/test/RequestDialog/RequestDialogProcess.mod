[Ivy]
[>Created: Thu Apr 10 08:45:41 CEST 2014]
13F3DB5D589E405E 3.17 #module
>Proto >Proto Collection #zClass
Rs0 RequestDialogProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @RichDialogProcessStart f3 '' #zField
Rs0 @RichDialogEnd f6 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @GridStep f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @PushWFArc f2 '' #zField
>Proto Rs0 Rs0 RequestDialogProcess #zField
Rs0 f0 guid 13F3DB5D5986E0D4 #txt
Rs0 f0 type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
Rs0 f0 method start(ch.ivyteam.wf.test.Data) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.wf.test.Data data> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Rs0 f0 outParameterDecl '<ch.ivyteam.wf.test.Data data> result;
' #txt
Rs0 f0 outParameterMapAction 'result.data=in.data;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 86 54 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
Rs0 f1 86 182 20 20 13 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 13F4168E82115B16 #txt
Rs0 f3 type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
Rs0 f3 actionDecl 'ch.ivyteam.wf.test.RequestDialog.RequestDialogData out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submitForm</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 182 54 20 20 13 0 #rect
Rs0 f3 @|RichDialogProcessStartIcon #fIcon
Rs0 f6 type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
Rs0 f6 guid 13F416B6E5B444EF #txt
Rs0 f6 182 182 20 20 13 0 #rect
Rs0 f6 @|RichDialogEndIcon #fIcon
Rs0 f7 expr out #txt
Rs0 f7 192 74 192 182 #arcP
Rs0 f4 actionDecl 'ch.ivyteam.wf.test.RequestDialog.RequestDialogData out;
' #txt
Rs0 f4 actionTable 'out=in;
out.data.caption="";
out.data.description="";
out.data.expiryDate=null;
out.data.prio=2;
' #txt
Rs0 f4 type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f4 78 116 36 24 20 -2 #rect
Rs0 f4 @|StepIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 96 74 96 116 #arcP
Rs0 f2 expr out #txt
Rs0 f2 96 140 96 182 #arcP
>Proto Rs0 .type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f3 mainOut f7 tail #connect
Rs0 f7 head f6 mainIn #connect
Rs0 f0 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f4 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
