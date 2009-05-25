[Ivy]
[>Created: Thu Feb 28 16:08:27 CET 2008]
1185BB08FD3A86F6 3.10 #module
>Proto >Proto Collection #zClass
Hs0 HeaderProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Hs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @TextInP .resExport .resExport #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @MessageFlowInP-0n messageIn messageIn #zField
Hs0 @MessageFlowOutP-0n messageOut messageOut #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @RichDialogInitStart f0 '' #zField
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 guid 1185BB6420988C8D #txt
Hs0 f0 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f0 method start() #txt
Hs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f0 outParameterDecl '<> result;
' #txt
Hs0 f0 158 70 20 20 13 0 #rect
Hs0 f0 @|RichDialogInitStartIcon #fIcon
Hs0 @RichDialogProcessEnd f1 '' #zField
Hs0 f1 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f1 155 251 26 26 14 0 #rect
Hs0 f1 @|RichDialogProcessEndIcon #fIcon
Hs0 @RichDialogProcessStep f2 '' #zField
Hs0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData out;
' #txt
Hs0 f2 actionTable 'out=in;
' #txt
Hs0 f2 actionCode 'panel.titleLabel.setText(in.title);
panel.textHtmlPane.setText(in.text);
panel.iconLabel.setIconUri(in.iconUri);' #txt
Hs0 f2 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Hs0 f2 150 172 36 24 20 -2 #rect
Hs0 f2 @|RichDialogProcessStepIcon #fIcon
Hs0 @PushWFArc f3 '' #zField
Hs0 f3 expr out #txt
Hs0 f3 168 196 168 251 #arcP
Hs0 @PushWFArc f4 '' #zField
Hs0 f4 expr out #txt
Hs0 f4 168 90 168 172 #arcP
Hs0 @RichDialogInitStart f5 '' #zField
Hs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String,String)</name>
        <nameStyle>27,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f5 guid 1185BB68FB6FDC1F #txt
Hs0 f5 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f5 method start(String,String,String) #txt
Hs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String iconUri,java.lang.String title,java.lang.String text> param = methodEvent.getInputArguments();
' #txt
Hs0 f5 inParameterMapAction 'out.iconUri=param.iconUri;
out.text=param.text;
out.title=param.title;
' #txt
Hs0 f5 outParameterDecl '<> result;
' #txt
Hs0 f5 embeddedRdInitializations '* ' #txt
Hs0 f5 246 70 20 20 13 0 #rect
Hs0 f5 @|RichDialogInitStartIcon #fIcon
Hs0 @PushWFArc f6 '' #zField
Hs0 f6 expr out #txt
Hs0 f6 256 90 186 174 #arcP
Hs0 f6 1 256 136 #addKink
Hs0 f6 1 0.21191220097720292 0 0 #arcLabel
Hs0 @RichDialogMethodStart f7 '' #zField
Hs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getIconUri()</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f7 guid 1185BB6A8EAC865A #txt
Hs0 f7 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f7 method getIconUri() #txt
Hs0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f7 outParameterDecl '<java.lang.String iconUri> result;
' #txt
Hs0 f7 outParameterMapAction 'result.iconUri=in.iconUri;
' #txt
Hs0 f7 870 86 20 20 13 0 #rect
Hs0 f7 @|RichDialogMethodStartIcon #fIcon
Hs0 @RichDialogMethodStart f8 '' #zField
Hs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getText()</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f8 guid 1185BB6B67DADDD1 #txt
Hs0 f8 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f8 method getText() #txt
Hs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f8 outParameterDecl '<java.lang.String text> result;
' #txt
Hs0 f8 outParameterMapAction 'result.text=in.text;
' #txt
Hs0 f8 966 86 20 20 13 0 #rect
Hs0 f8 @|RichDialogMethodStartIcon #fIcon
Hs0 @RichDialogMethodStart f9 '' #zField
Hs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getTitle()</name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f9 guid 1185BB6C41039837 #txt
Hs0 f9 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f9 method getTitle() #txt
Hs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f9 outParameterDecl '<java.lang.String title> result;
' #txt
Hs0 f9 outParameterMapAction 'result.title=in.title;
' #txt
Hs0 f9 1046 86 20 20 13 0 #rect
Hs0 f9 @|RichDialogMethodStartIcon #fIcon
Hs0 @RichDialogMethodStart f10 '' #zField
Hs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setIconUri(String)</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f10 guid 1185BB6D53A8BFF0 #txt
Hs0 f10 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f10 method setIconUri(String) #txt
Hs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String iconUri> param = methodEvent.getInputArguments();
' #txt
Hs0 f10 inParameterMapAction 'out.iconUri=param.iconUri;
' #txt
Hs0 f10 outParameterDecl '<> result;
' #txt
Hs0 f10 406 70 20 20 13 0 #rect
Hs0 f10 @|RichDialogMethodStartIcon #fIcon
Hs0 @RichDialogMethodStart f11 '' #zField
Hs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setText(String)</name>
        <nameStyle>15,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f11 guid 1185BB6E1C5D95CB #txt
Hs0 f11 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f11 method setText(String) #txt
Hs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String text> param = methodEvent.getInputArguments();
' #txt
Hs0 f11 inParameterMapAction 'out.text=param.text;
' #txt
Hs0 f11 outParameterDecl '<> result;
' #txt
Hs0 f11 510 70 20 20 13 0 #rect
Hs0 f11 @|RichDialogMethodStartIcon #fIcon
Hs0 @RichDialogMethodStart f12 '' #zField
Hs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTitle(String)</name>
        <nameStyle>16,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f12 guid 1185BB6EBE05421A #txt
Hs0 f12 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f12 method setTitle(String) #txt
Hs0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String title> param = methodEvent.getInputArguments();
' #txt
Hs0 f12 inParameterMapAction 'out.title=param.title;
' #txt
Hs0 f12 outParameterDecl '<> result;
' #txt
Hs0 f12 614 70 20 20 13 0 #rect
Hs0 f12 @|RichDialogMethodStartIcon #fIcon
Hs0 @PushWFArc f13 '' #zField
Hs0 f13 expr out #txt
Hs0 f13 416 90 186 180 #arcP
Hs0 f13 1 416 128 #addKink
Hs0 f13 1 0.4019010863704377 0 0 #arcLabel
Hs0 @PushWFArc f14 '' #zField
Hs0 f14 expr out #txt
Hs0 f14 520 90 186 182 #arcP
Hs0 f14 1 520 136 #addKink
Hs0 f14 1 0.418460213219667 0 0 #arcLabel
Hs0 @PushWFArc f15 '' #zField
Hs0 f15 expr out #txt
Hs0 f15 624 90 186 183 #arcP
Hs0 f15 1 624 152 #addKink
Hs0 f15 1 0.4194444812414014 0 0 #arcLabel
Hs0 @RichDialogProcessEnd f16 '' #zField
Hs0 f16 type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
Hs0 f16 867 251 26 26 14 0 #rect
Hs0 f16 @|RichDialogProcessEndIcon #fIcon
Hs0 @PushWFArc f17 '' #zField
Hs0 f17 expr out #txt
Hs0 f17 880 106 880 251 #arcP
Hs0 @PushWFArc f18 '' #zField
Hs0 f18 expr out #txt
Hs0 f18 976 106 892 261 #arcP
Hs0 f18 1 976 248 #addKink
Hs0 f18 0 0.8126200939702862 0 0 #arcLabel
Hs0 @PushWFArc f19 '' #zField
Hs0 f19 expr out #txt
Hs0 f19 1056 106 893 264 #arcP
Hs0 f19 1 1056 264 #addKink
Hs0 f19 1 0.01508268952546683 0 0 #arcLabel
Hs0 f2 mainOut f3 tail #connect
Hs0 f3 head f1 mainIn #connect
Hs0 f0 mainOut f4 tail #connect
Hs0 f4 head f2 mainIn #connect
Hs0 f5 mainOut f6 tail #connect
Hs0 f6 head f2 mainIn #connect
Hs0 f10 mainOut f13 tail #connect
Hs0 f13 head f2 mainIn #connect
Hs0 f11 mainOut f14 tail #connect
Hs0 f14 head f2 mainIn #connect
Hs0 f12 mainOut f15 tail #connect
Hs0 f15 head f2 mainIn #connect
Hs0 f7 mainOut f17 tail #connect
Hs0 f17 head f16 mainIn #connect
Hs0 f8 mainOut f18 tail #connect
Hs0 f18 head f16 mainIn #connect
Hs0 f9 mainOut f19 tail #connect
Hs0 f19 head f16 mainIn #connect
>Proto Hs0 Hs0 HeaderProcess #zField
>Proto Hs0 .type ch.ivyteam.ivy.workflow.ui.common.Header.HeaderData #txt
>Proto Hs0 .processKind RICH_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
