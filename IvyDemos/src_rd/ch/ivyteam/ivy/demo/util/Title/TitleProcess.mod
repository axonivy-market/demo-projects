[Ivy]
[>Created: Tue Jul 22 09:23:48 CEST 2008]
11B462C847F76FBC 3.10 #module
>Proto >Proto Collection #zClass
Ws0 WizardTitleProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 f0 guid 11B462C850CD557A #txt
Ws0 f0 type ch.ivyteam.ivy.demo.util.Title.TitleData #txt
Ws0 f0 method start() #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 inParameterMapAction 'out.iconUri="/Images/question_large";
out.subtitle="The title of this component has not been initialized.";
out.title="I have no title";
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 embeddedRdInitializations '* ' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 90 40 20 20 13 0 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 f1 type ch.ivyteam.ivy.demo.util.Title.TitleData #txt
Ws0 f1 87 137 26 26 14 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 @RichDialogProcessStep f3 '' #zField
Ws0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ws0 f3 actionDecl 'ch.ivyteam.ivy.demo.util.Title.TitleData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 panelTable 'panel.titleLabel.iconUri=in.iconUri;
panel.titleLabel.text=in.title;
panel.subtitleLabel.text=in.subtitle;
' #txt
Ws0 f3 type ch.ivyteam.ivy.demo.util.Title.TitleData #txt
Ws0 f3 82 92 36 24 20 -2 #rect
Ws0 f3 @|RichDialogProcessStepIcon #fIcon
Ws0 @PushWFArc f4 '' #zField
Ws0 f4 expr out #txt
Ws0 f4 100 60 100 92 #arcP
Ws0 @PushWFArc f2 '' #zField
Ws0 f2 expr out #txt
Ws0 f2 100 116 100 137 #arcP
Ws0 @RichDialogInitStart f5 '' #zField
Ws0 f5 guid 11B463224E8E2FCC #txt
Ws0 f5 type ch.ivyteam.ivy.demo.util.Title.TitleData #txt
Ws0 f5 method startInitialized(String,String,String) #txt
Ws0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String iconUri,java.lang.String title,java.lang.String subtitle> param = methodEvent.getInputArguments();
' #txt
Ws0 f5 inParameterMapAction 'out.iconUri=param.iconUri;
out.subtitle=param.subtitle;
out.title=param.title;
' #txt
Ws0 f5 outParameterDecl '<> result;
' #txt
Ws0 f5 embeddedRdInitializations '* ' #txt
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startInitialized(String,String,String)</name>
        <nameStyle>38,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f5 174 40 20 20 13 0 #rect
Ws0 f5 @|RichDialogInitStartIcon #fIcon
Ws0 @PushWFArc f6 '' #zField
Ws0 f6 expr out #txt
Ws0 f6 184 60 118 104 #arcP
Ws0 f6 1 184 104 #addKink
Ws0 f6 1 0.11399481868762437 0 0 #arcLabel
Ws0 f0 mainOut f4 tail #connect
Ws0 f4 head f3 mainIn #connect
Ws0 f3 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f5 mainOut f6 tail #connect
Ws0 f6 head f3 mainIn #connect
>Proto Ws0 Ws0 WizardTitleProcess #zField
>Proto Ws0 .type ch.ivyteam.ivy.demo.util.Title.TitleData #txt
>Proto Ws0 .processKind RICH_DIALOG #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
