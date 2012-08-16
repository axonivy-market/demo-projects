[Ivy]
[>Created: Fri Aug 10 17:28:06 EDT 2012]
121BFB282D85B7B5 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TextViewerProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogProcessStep f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogProcessStart f5 '' #zField
Ts0 @RichDialogEnd f6 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @RichDialogInitStart f8 '' #zField
Ts0 @RichDialogProcessEnd f9 '' #zField
Ts0 @PushWFArc f10 '' #zField
>Proto Ts0 Ts0 TextViewerProcess #zField
Ts0 f0 guid 121BFB282F8BE41B #txt
Ts0 f0 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f0 method start(String,String,Boolean,Boolean) #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String textToDisplay,java.lang.String shortDescr,java.lang.Boolean doWrap,java.lang.Boolean isCode> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.descr=param.shortDescr;
out.doWrap=param.doWrap;
out.isCode=param.isCode;
out.text=param.textToDisplay;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String,Boolean)</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 70 38 20 20 16 -6 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f1 67 195 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import com.ulcjava.base.application.util.Font;
panel.infoLabel.text = in.descr;
panel.text.text = in.text;
panel.text.wrapStyleWord = in.doWrap;
if (in.isCode)
{
	Font courier = new Font("Courier New", Font.PLAIN, 11);
	panel.text.setFont(courier);
}' #txt
Ts0 f3 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>configure</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 62 108 36 24 28 -8 #rect
Ts0 f3 @|RichDialogProcessStepIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 80 58 80 108 #arcP
Ts0 f2 expr out #txt
Ts0 f2 80 132 80 195 #arcP
Ts0 f5 guid 121BFC39834E9743 #txt
Ts0 f5 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f5 actionDecl 'ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 342 38 20 20 13 0 #rect
Ts0 f5 @|RichDialogProcessStartIcon #fIcon
Ts0 f6 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f6 guid 121BFC3AE3FFAA2E #txt
Ts0 f6 339 91 26 26 14 0 #rect
Ts0 f6 @|RichDialogEndIcon #fIcon
Ts0 f7 expr out #txt
Ts0 f7 352 58 352 91 #arcP
Ts0 f8 guid 139126FD3FD37E71 #txt
Ts0 f8 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f8 method start() #txt
Ts0 f8 disableUIEvents true #txt
Ts0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f8 outParameterDecl '<> result;
' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f8 158 214 20 20 13 0 #rect
Ts0 f8 @|RichDialogInitStartIcon #fIcon
Ts0 f9 type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
Ts0 f9 158 294 20 20 13 0 #rect
Ts0 f9 @|RichDialogProcessEndIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 168 234 168 294 #arcP
>Proto Ts0 .type ch.ivyteam.ivy.demo.util.TextViewer.TextViewerData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f5 mainOut f7 tail #connect
Ts0 f7 head f6 mainIn #connect
Ts0 f8 mainOut f10 tail #connect
Ts0 f10 head f9 mainIn #connect
