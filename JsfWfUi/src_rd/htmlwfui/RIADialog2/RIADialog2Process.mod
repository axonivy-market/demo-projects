[Ivy]
[>Created: Fri Mar 01 15:43:27 CET 2013]
13D16BA3DD44839E 3.17 #module
>Proto >Proto Collection #zClass
Rs0 RIADialog2Process Big #zClass
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
Rs0 @PushWFArc f2 '' #zField
Rs0 @RichDialogProcessStart f3 '' #zField
Rs0 @RichDialogEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
>Proto Rs0 Rs0 RIADialog2Process #zField
Rs0 f0 guid 13D16BA3DF397723 #txt
Rs0 f0 type htmlwfui.RIADialog2.RIADialog2Data #txt
Rs0 f0 method start(String,String) #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String txt,java.lang.String titel> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 inParameterMapAction 'out.msg=param.txt;
out.titel=param.titel;
' #txt
Rs0 f0 outParameterDecl '<java.lang.String txt> result;
' #txt
Rs0 f0 embeddedRdInitializations '* ' #txt
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
Rs0 f1 type htmlwfui.RIADialog2.RIADialog2Data #txt
Rs0 f1 86 150 20 20 13 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f2 expr out #txt
Rs0 f2 96 74 96 150 #arcP
Rs0 f3 guid 13D16BED3EB287AA #txt
Rs0 f3 type htmlwfui.RIADialog2.RIADialog2Data #txt
Rs0 f3 actionDecl 'htmlwfui.RIADialog2.RIADialog2Data out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 214 54 20 20 13 0 #rect
Rs0 f3 @|RichDialogProcessStartIcon #fIcon
Rs0 f4 type htmlwfui.RIADialog2.RIADialog2Data #txt
Rs0 f4 guid 13D16BEF993198E9 #txt
Rs0 f4 214 150 20 20 13 0 #rect
Rs0 f4 @|RichDialogEndIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 224 74 224 150 #arcP
>Proto Rs0 .ui2RdDataAction 'out.titel=panel.Label4.text;
out.msg=panel.Label5.text;
' #txt
>Proto Rs0 .rdData2UIAction 'panel.Label4.text=in.titel;
panel.Label5.text=in.msg;
' #txt
>Proto Rs0 .type htmlwfui.RIADialog2.RIADialog2Data #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
