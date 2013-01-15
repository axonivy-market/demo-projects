[Ivy]
[>Created: Fri Jan 04 13:48:13 CET 2013]
13C05941AA57FB13 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TestProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @DBStep f3 '' #zField
Ts0 @RichDialogProcessStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @RichDialogProcessStart f7 '' #zField
Ts0 @RichDialogProcessEnd f8 '' #zField
Ts0 @RichDialogProcessStep f2 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f9 '' #zField
>Proto Ts0 Ts0 TestProcess #zField
Ts0 f0 guid 13C05941AC4B22BA #txt
Ts0 f0 type htmlwfui.Test.TestData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 86 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type htmlwfui.Test.TestData #txt
Ts0 f1 86 150 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'htmlwfui.Test.TestData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 lotSize 2147483647 #txt
Ts0 f3 startIdx 0 #txt
Ts0 f3 type htmlwfui.Test.TestData #txt
Ts0 f3 262 100 36 24 20 -2 #rect
Ts0 f3 @|DBStepIcon #fIcon
Ts0 f4 actionDecl 'htmlwfui.Test.TestData out;
' #txt
Ts0 f4 actionTable 'out=in;
out.name="guido";
' #txt
Ts0 f4 type htmlwfui.Test.TestData #txt
Ts0 f4 78 100 36 24 20 -2 #rect
Ts0 f4 @|RichDialogProcessStepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 96 74 96 100 #arcP
Ts0 f5 expr out #txt
Ts0 f5 96 124 96 150 #arcP
Ts0 f7 guid 13C059A698E10AAD #txt
Ts0 f7 type htmlwfui.Test.TestData #txt
Ts0 f7 actionDecl 'htmlwfui.Test.TestData out;
' #txt
Ts0 f7 actionTable 'out=in;
' #txt
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>test</name>
    </language>
</elementInfo>
' #txt
Ts0 f7 218 54 20 20 13 0 #rect
Ts0 f7 @|RichDialogProcessStartIcon #fIcon
Ts0 f8 type htmlwfui.Test.TestData #txt
Ts0 f8 218 150 20 20 13 0 #rect
Ts0 f8 @|RichDialogProcessEndIcon #fIcon
Ts0 f2 actionDecl 'htmlwfui.Test.TestData out;
' #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 type htmlwfui.Test.TestData #txt
Ts0 f2 206 100 36 24 20 -2 #rect
Ts0 f2 @|RichDialogProcessStepIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 227 74 225 100 #arcP
Ts0 f9 expr out #txt
Ts0 f9 225 124 227 150 #arcP
>Proto Ts0 .type htmlwfui.Test.TestData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f4 mainOut f5 tail #connect
Ts0 f5 head f1 mainIn #connect
Ts0 f7 mainOut f10 tail #connect
Ts0 f10 head f2 mainIn #connect
Ts0 f2 mainOut f9 tail #connect
Ts0 f9 head f8 mainIn #connect
