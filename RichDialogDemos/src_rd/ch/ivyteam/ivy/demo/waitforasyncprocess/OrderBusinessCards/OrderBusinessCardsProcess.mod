[Ivy]
[>Created: Fri May 06 12:17:49 CEST 2011]
130542743C9D264A 3.17 #module
>Proto >Proto Collection #zClass
Os0 OrderBusinessCardsProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Os0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @RichDialogInitStart f0 '' #zField
Os0 @RichDialogEnd f3 '' #zField
Os0 @PushWFArc f4 '' #zField
Os0 @RichDialogInitStart f1 '' #zField
Os0 @RichDialogProcessEnd f2 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @RichDialogProcessStart f6 '' #zField
Os0 @PushWFArc f7 '' #zField
>Proto Os0 Os0 OrderBusinessCardsProcess #zField
Os0 f0 guid 12FC4C8B3837EF12 #txt
Os0 f0 type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
Os0 f0 method start() #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f0 outParameterDecl '<> result;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Os0 f0 46 102 20 20 13 0 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f3 type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
Os0 f3 guid 12FC4CA9940F453D #txt
Os0 f3 46 230 20 20 13 0 #rect
Os0 f3 @|RichDialogEndIcon #fIcon
Os0 f4 expr out #txt
Os0 f4 56 122 56 230 #arcP
Os0 f1 guid 12FC4CACCB1423D0 #txt
Os0 f1 type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
Os0 f1 method order(String,String,String) #txt
Os0 f1 disableUIEvents true #txt
Os0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name,java.lang.String email,java.lang.String branch> param = methodEvent.getInputArguments();
' #txt
Os0 f1 inParameterMapAction 'out.branch=param.branch;
out.email=param.email;
out.name=param.name;
' #txt
Os0 f1 outParameterDecl '<> result;
' #txt
Os0 f1 embeddedRdInitializations '* ' #txt
Os0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order(String,String,String)</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f1 150 86 20 20 13 0 #rect
Os0 f1 @|RichDialogInitStartIcon #fIcon
Os0 f2 type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
Os0 f2 150 158 20 20 13 0 #rect
Os0 f2 @|RichDialogProcessEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 160 106 160 158 #arcP
Os0 f6 guid 12FC4CB558CC2C51 #txt
Os0 f6 type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
Os0 f6 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData out;
' #txt
Os0 f6 actionTable 'out=in;
' #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OK</name>
        <nameStyle>2,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f6 126 254 20 20 13 0 #rect
Os0 f6 @|RichDialogProcessStartIcon #fIcon
Os0 f7 expr out #txt
Os0 f7 126 261 65 242 #arcP
>Proto Os0 .rdData2UIAction 'panel.Label1.text=in.name;
panel.Label3.text=in.email;
panel.Label5.text=in.branch;
' #txt
>Proto Os0 .type ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards.OrderBusinessCardsData #txt
>Proto Os0 .processKind RICH_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f4 tail #connect
Os0 f4 head f3 mainIn #connect
Os0 f1 mainOut f5 tail #connect
Os0 f5 head f2 mainIn #connect
Os0 f6 mainOut f7 tail #connect
Os0 f7 head f3 mainIn #connect
