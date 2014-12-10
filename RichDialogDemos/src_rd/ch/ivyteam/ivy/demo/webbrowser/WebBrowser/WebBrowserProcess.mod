[Ivy]
[>Created: Tue Feb 09 11:27:36 CET 2010]
125B199405C320BD 3.13 #module
>Proto >Proto Collection #zClass
Ws0 WebBrowserProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 @RichDialogProcessStart f9 '' #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 @RichDialogProcessEnd f7 '' #zField
Ws0 @RichDialogProcessStart f12 '' #zField
Ws0 @RichDialogProcessEnd f4 '' #zField
Ws0 @RichDialogProcessStart f17 '' #zField
Ws0 @RichDialogProcessEnd f15 '' #zField
Ws0 @RichDialogProcessStart f3 '' #zField
Ws0 @RichDialogProcessStart f6 '' #zField
Ws0 @RichDialogProcessEnd f10 '' #zField
Ws0 @RichDialogProcessEnd f13 '' #zField
Ws0 @PushWFArc f5 '' #zField
Ws0 @PushWFArc f8 '' #zField
Ws0 @PushWFArc f11 '' #zField
Ws0 @PushWFArc f14 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @PushWFArc f16 '' #zField
>Proto Ws0 Ws0 WebBrowserProcess #zField
Ws0 f1 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f1 102 158 20 20 13 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f9 guid 126B230C79ADBA9A #txt
Ws0 f9 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f9 actionDecl 'ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData out;
' #txt
Ws0 f9 actionTable 'out=in;
' #txt
Ws0 f9 actionCode panel.webBrowser.back(); #txt
Ws0 f9 102 246 20 20 13 0 #rect
Ws0 f9 @|RichDialogProcessStartIcon #fIcon
Ws0 f0 guid 126B230C7AA3FD2F #txt
Ws0 f0 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f0 method start() #txt
Ws0 f0 disableUIEvents true #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/web_browser\";\nparam.title=\"Embedded Web Browser\";\nparam.subtitle=\"Display of HTML, Flash and PDF content inside an embedded Web browser view. Press \''Go\'' to start ...\";\n"/initScript ""}}' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 102 54 20 20 13 0 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 f7 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f7 366 158 20 20 13 0 #rect
Ws0 f7 @|RichDialogProcessEndIcon #fIcon
Ws0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>forward</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f12 guid 126B230C7B9F7F12 #txt
Ws0 f12 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f12 actionDecl 'ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData out;
' #txt
Ws0 f12 actionTable 'out=in;
' #txt
Ws0 f12 actionCode panel.webBrowser.forward(); #txt
Ws0 f12 230 246 20 20 13 0 #rect
Ws0 f12 @|RichDialogProcessStartIcon #fIcon
Ws0 f4 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f4 230 158 20 20 13 0 #rect
Ws0 f4 @|RichDialogProcessEndIcon #fIcon
Ws0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f17 guid 126B230C7AA82299 #txt
Ws0 f17 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f17 actionDecl 'ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData out;
' #txt
Ws0 f17 actionTable 'out=in;
' #txt
Ws0 f17 actionCode panel.webBrowser.setUrl(panel.urlTextField.getText()); #txt
Ws0 f17 366 246 20 20 13 0 #rect
Ws0 f17 @|RichDialogProcessStartIcon #fIcon
Ws0 f15 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f15 366 334 20 20 13 0 #rect
Ws0 f15 @|RichDialogProcessEndIcon #fIcon
Ws0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>goToUrl</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f3 guid 126B230C7B999D14 #txt
Ws0 f3 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f3 actionDecl 'ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 actionCode 'String url = panel.urlTextField.getText();

panel.statusLabel.setText("Requesting ''" + url + "'' ...");
panel.webBrowser.setUrl(url);' #txt
Ws0 f3 230 54 20 20 13 0 #rect
Ws0 f3 @|RichDialogProcessStartIcon #fIcon
Ws0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateStatusBarAndNavigationStatus</name>
        <nameStyle>34,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f6 guid 126B230C7B97A556 #txt
Ws0 f6 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f6 actionDecl 'ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData out;
' #txt
Ws0 f6 actionTable 'out=in;
' #txt
Ws0 f6 actionCode 'import ch.ivyteam.ivy.ulc.server.webbrowser.WebBrowserEvent;

WebBrowserEvent webBrowserEvent = event as WebBrowserEvent;
panel.statusLabel.setText("Loaded ''" + webBrowserEvent.getEventData() + "''");

out.backEnabled = panel.webBrowser.isBackEnabled();
out.forwardEnabled = panel.webBrowser.isForwardEnabled();' #txt
Ws0 f6 366 54 20 20 13 0 #rect
Ws0 f6 @|RichDialogProcessStartIcon #fIcon
Ws0 f10 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f10 102 342 20 20 13 0 #rect
Ws0 f10 @|RichDialogProcessEndIcon #fIcon
Ws0 f13 type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
Ws0 f13 230 342 20 20 13 0 #rect
Ws0 f13 @|RichDialogProcessEndIcon #fIcon
Ws0 f5 expr out #txt
Ws0 f5 240 74 240 158 #arcP
Ws0 f8 expr out #txt
Ws0 f8 376 74 376 158 #arcP
Ws0 f11 expr out #txt
Ws0 f11 112 266 112 342 #arcP
Ws0 f14 expr out #txt
Ws0 f14 240 266 240 342 #arcP
Ws0 f2 expr out #txt
Ws0 f2 112 74 112 158 #arcP
Ws0 f16 expr out #txt
Ws0 f16 376 266 376 334 #arcP
>Proto Ws0 .type ch.ivyteam.ivy.demo.webbrowser.WebBrowser.WebBrowserData #txt
>Proto Ws0 .processKind RICH_DIALOG #txt
>Proto Ws0 .rdData2UIAction 'panel.backButton.enabled=in.backEnabled;
panel.forwardButton.enabled=in.forwardEnabled;
' #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f3 mainOut f5 tail #connect
Ws0 f5 head f4 mainIn #connect
Ws0 f6 mainOut f8 tail #connect
Ws0 f8 head f7 mainIn #connect
Ws0 f9 mainOut f11 tail #connect
Ws0 f11 head f10 mainIn #connect
Ws0 f12 mainOut f14 tail #connect
Ws0 f14 head f13 mainIn #connect
Ws0 f0 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f17 mainOut f16 tail #connect
Ws0 f16 head f15 mainIn #connect
