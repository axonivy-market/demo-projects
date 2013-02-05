[Ivy]
[>Created: Tue Jan 22 18:40:43 CET 2013]
13A3F854E6D3A3F7 3.17 #module
>Proto >Proto Collection #zClass
As0 AjaxMethodCallDemoProcess Big #zClass
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
As0 @RichDialogMethodStart f3 '' #zField
As0 @RichDialogProcessEnd f5 '' #zField
As0 @GridStep f4 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @PushWFArc f6 '' #zField
>Proto As0 As0 AjaxMethodCallDemoProcess #zField
As0 f0 guid 13A3F854E8424F18 #txt
As0 f0 type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
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
As0 f0 86 54 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
As0 f1 86 150 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 96 74 96 150 #arcP
As0 f3 guid 13A3FA51C962D77C #txt
As0 f3 type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
As0 f3 method helloWorld(String) #txt
As0 f3 disableUIEvents false #txt
As0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name> param = methodEvent.getInputArguments();
' #txt
As0 f3 inParameterMapAction 'out.name=param.name;
' #txt
As0 f3 outParameterDecl '<java.lang.String result> result;
' #txt
As0 f3 outParameterMapAction 'result.result=in.welcomeMessage;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>helloWorld(String)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 190 54 20 20 13 0 #rect
As0 f3 @|RichDialogMethodStartIcon #fIcon
As0 f5 type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
As0 f5 190 158 20 20 13 0 #rect
As0 f5 @|RichDialogProcessEndIcon #fIcon
As0 f4 actionDecl 'ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData out;
' #txt
As0 f4 actionTable 'out=in;
out.welcomeMessage="Welcome "+in.name;
' #txt
As0 f4 type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
As0 f4 182 100 36 24 20 -2 #rect
As0 f4 @|StepIcon #fIcon
As0 f7 expr out #txt
As0 f7 200 74 200 100 #arcP
As0 f6 expr out #txt
As0 f6 200 124 200 158 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f7 tail #connect
As0 f7 head f4 mainIn #connect
As0 f4 mainOut f6 tail #connect
As0 f6 head f5 mainIn #connect
