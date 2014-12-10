[Ivy]
[>Created: Wed Jul 03 14:51:22 CEST 2013]
13F9FE2E4E816406 3.17 #module
>Proto >Proto Collection #zClass
Vs0 PdfViewerProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @PushWFArc f2 '' #zField
Vs0 @RichDialogProcessStart f3 '' #zField
Vs0 @RichDialogProcessStart f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @PushWFArc f6 '' #zField
Vs0 @RichDialogProcessStart f7 '' #zField
Vs0 @PushWFArc f8 '' #zField
Vs0 @InfoButton f9 '' #zField
Vs0 @InfoButton f10 '' #zField
>Proto Vs0 Vs0 PdfViewerProcess #zField
Vs0 f0 guid 13DC4D57813D91D3 #txt
Vs0 f0 type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
Vs0 f0 method start() #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 outParameterDecl '<> result;
' #txt
Vs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/pdf\";\nparam.title=\"PDF Viewer Demo\";\nparam.subtitle=\"This demo shows how to use the PDF viewer widget and how to set the document to read\";\n"/initScript ""/userContext * }}' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f0 86 54 20 20 13 0 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
Vs0 f1 86 150 20 20 13 0 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f2 expr out #txt
Vs0 f2 96 74 96 150 #arcP
Vs0 f3 guid 13ED033DF8790B11 #txt
Vs0 f3 type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
Vs0 f3 actionDecl 'ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData out;
' #txt
Vs0 f3 actionTable 'out=in;
' #txt
Vs0 f3 actionCode 'panel.viewer.toolBarVisible = panel.ckbToolBar.selected;' #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>switchToolBar</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f3 262 102 20 20 13 0 #rect
Vs0 f3 @|RichDialogProcessStartIcon #fIcon
Vs0 f4 guid 13ED033E92D75443 #txt
Vs0 f4 type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
Vs0 f4 actionDecl 'ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData out;
' #txt
Vs0 f4 actionTable 'out=in;
' #txt
Vs0 f4 actionCode 'panel.viewer.statusBarVisible = panel.ckbStatusBar.selected;' #txt
Vs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>switchStatusBar</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f4 262 182 20 20 13 0 #rect
Vs0 f4 @|RichDialogProcessStartIcon #fIcon
Vs0 f5 expr out #txt
Vs0 f5 262 114 105 157 #arcP
Vs0 f6 expr out #txt
Vs0 f6 262 190 105 161 #arcP
Vs0 f7 guid 13FA4801B00F2E1A #txt
Vs0 f7 type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
Vs0 f7 actionDecl 'ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData out;
' #txt
Vs0 f7 actionTable 'out=in;
' #txt
Vs0 f7 actionCode 'import java.net.URL;

URL location = new URL(panel.tfdPath.getText());
panel.viewer.openDocument(location);' #txt
Vs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load document</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f7 262 30 20 20 13 0 #rect
Vs0 f7 @|RichDialogProcessStartIcon #fIcon
Vs0 f8 expr out #txt
Vs0 f8 263 45 104 154 #arcP
Vs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Go to the load document event start to see how a document can be loaded into the PDF viewer.</name>
        <nameStyle>92,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f9 353 11 526 26 -258 -8 #rect
Vs0 f9 @|IBIcon #fIcon
Vs0 f9 -1|-1|-16777216 #nodeStyle
Vs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>See the two events to see how you can configure
the visual appearance of the viewer</name>
        <nameStyle>83,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f10 343 139 275 42 -132 -16 #rect
Vs0 f10 @|IBIcon #fIcon
Vs0 f10 -1|-1|-16777216 #nodeStyle
>Proto Vs0 .type ch.ivyteam.ivy.demo.pdf.PdfViewer.PdfViewerData #txt
>Proto Vs0 .processKind RICH_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f0 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f1 mainIn #connect
Vs0 f4 mainOut f6 tail #connect
Vs0 f6 head f1 mainIn #connect
Vs0 f7 mainOut f8 tail #connect
Vs0 f8 head f1 mainIn #connect
