[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13AAD55A671A1005 3.17 #module
>Proto >Proto Collection #zClass
Ws0 WFPageProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @RichDialogProcessEnd f3 '' #zField
Ws0 @RichDialogInitStart f4 '' #zField
Ws0 @PushWFArc f5 '' #zField
>Proto Ws0 Ws0 WFPageProcess #zField
Ws0 f0 guid 13AAD55A690C315A #txt
Ws0 f0 type htmlwfui.WFPage.WFPageData #txt
Ws0 f0 method start() #txt
Ws0 f0 disableUIEvents true #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 inParameterMapAction 'out.url="http://localhost:8081/ivy/pro/designer/HtmlDialogDemos/139D3A4CEEEDAA4B/OrderListDemo.ivp";
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 embeddedRdInitializations '* ' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 86 54 20 20 13 0 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 f1 type htmlwfui.WFPage.WFPageData #txt
Ws0 f1 86 150 20 20 13 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f2 expr out #txt
Ws0 f2 96 74 96 150 #arcP
Ws0 f3 type htmlwfui.WFPage.WFPageData #txt
Ws0 f3 246 150 20 20 13 0 #rect
Ws0 f3 @|RichDialogProcessEndIcon #fIcon
Ws0 f4 guid 13AAD59BDB020DC5 #txt
Ws0 f4 type htmlwfui.WFPage.WFPageData #txt
Ws0 f4 method start(String) #txt
Ws0 f4 disableUIEvents true #txt
Ws0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String url> param = methodEvent.getInputArguments();
' #txt
Ws0 f4 inParameterMapAction 'out.url="http://www.ivyteam.ch";
' #txt
Ws0 f4 outParameterDecl '<> result;
' #txt
Ws0 f4 embeddedRdInitializations '* ' #txt
Ws0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f4 246 54 20 20 13 0 #rect
Ws0 f4 @|RichDialogInitStartIcon #fIcon
Ws0 f5 expr out #txt
Ws0 f5 256 74 256 150 #arcP
>Proto Ws0 .type htmlwfui.WFPage.WFPageData #txt
>Proto Ws0 .processKind HTML_DIALOG #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f0 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f4 mainOut f5 tail #connect
Ws0 f5 head f3 mainIn #connect
