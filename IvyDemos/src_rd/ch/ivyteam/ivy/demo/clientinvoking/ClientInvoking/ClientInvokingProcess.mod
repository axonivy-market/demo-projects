[Ivy]
[>Created: Mon May 25 12:13:52 CEST 2009]
11A29F1AD47A8679 3.11 #module
>Proto >Proto Collection #zClass
Cs0 ClientInvokingProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogProcessEnd f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogProcessStart f9 '' #zField
Cs0 @RichDialogProcessEnd f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogMethodStart f12 '' #zField
Cs0 @RichDialogProcessEnd f13 '' #zField
Cs0 @PushWFArc f14 '' #zField
>Proto Cs0 Cs0 ClientInvokingProcess #zField
Cs0 f0 guid 11A29F1B594F421F #txt
Cs0 f0 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inActionCode 'import ch.ivyteam.ivy.demo.clientinvoking.Website;

Website website = new Website();
website.name="Normal Website";
website.url="http://www.soreco.ch";
out.websites.add(website);

Website pdf = new Website();
pdf.name="PDF file";
pdf.url="http://www.xpertline.ch/pdf/en/prospekt_xpertivy_xpertline%20en.pdf";
out.websites.add(pdf);

Website flash = new Website();
flash.name="Flash";
flash.url="http://www.soreco.ch/ivy/pro/soreco/WebSite/introivy2.swf";
out.websites.add(flash);

Website video = new Website();
video.name="Video";
video.url="http://de.youtube.com/watch?v=MEd154qrFV8";
out.websites.add(video);' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/document_exchange\";\nparam.title=\"Client Document Exchange\";\nparam.subtitle=\"Up-/download documents from/to client and open documents  in a browser.\";\n"/initScript ""}}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 90 40 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f1 87 137 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 100 60 100 137 #arcP
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OpenWebsite</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 guid 11A2A83153E79BAA #txt
Cs0 f3 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 actionCode 'import ch.ivyteam.ivy.demo.clientinvoking.Website;

Website website = panel.comboUrls.getSelectedListEntry() as Website;

com.ulcjava.base.application.ClientContext.showDocument(website.url);' #txt
Cs0 f3 206 46 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f4 203 139 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 216 66 216 139 #arcP
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OpenFile</name>
        <nameStyle>8,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 guid 11A2A8AA7E0515F4 #txt
Cs0 f6 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode ch.ivyteam.ivy.demo.clientinvoking.FileHandling.readFile(panel); #txt
Cs0 f6 334 46 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f7 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f7 331 139 26 26 14 0 #rect
Cs0 f7 @|RichDialogProcessEndIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 344 66 344 139 #arcP
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WriteFile</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 guid 11A33B15F55DCBD7 #txt
Cs0 f9 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f9 actionDecl 'ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData out;
' #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 actionCode 'import ch.ivyteam.ivy.demo.clientinvoking.FileHandling;
FileHandling.writeFile(panel.TextArea.text, panel);' #txt
Cs0 f9 438 46 20 20 13 0 #rect
Cs0 f9 @|RichDialogProcessStartIcon #fIcon
Cs0 f10 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f10 435 139 26 26 14 0 #rect
Cs0 f10 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 448 66 448 139 #arcP
Cs0 f12 guid 11A345B152468CBE #txt
Cs0 f12 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f12 method updateContent(ch.ivyteam.ivy.demo.clientinvoking.FileOpsResult) #txt
Cs0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.demo.clientinvoking.FileOpsResult content> param = methodEvent.getInputArguments();
' #txt
Cs0 f12 inParameterMapAction 'out.fileresult=param.content;
' #txt
Cs0 f12 outParameterDecl '<> result;
' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateContent(FileOpsResult)</name>
        <nameStyle>28,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 526 46 20 20 13 0 #rect
Cs0 f12 @|RichDialogMethodStartIcon #fIcon
Cs0 f13 type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
Cs0 f13 523 139 26 26 14 0 #rect
Cs0 f13 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 expr out #txt
Cs0 f14 536 66 536 139 #arcP
>Proto Cs0 .rdData2UIAction 'panel.comboUrls.listData=in.websites;
panel.lblResult.text=in.fileresult.message;
panel.TextArea.text=in.fileresult.fileContent;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f9 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
Cs0 f12 mainOut f14 tail #connect
Cs0 f14 head f13 mainIn #connect
