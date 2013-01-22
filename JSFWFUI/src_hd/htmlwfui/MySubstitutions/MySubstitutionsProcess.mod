[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13C197B6C1E994AC 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MySubstitutionsProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogEnd f6 '' #zField
Ms0 @PushWFArc f7 '' #zField
>Proto Ms0 Ms0 MySubstitutionsProcess #zField
Ms0 f1 type htmlwfui.MySubstitutions.MySubstitutionsData #txt
Ms0 f1 86 150 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f0 guid 13C197E5302458B3 #txt
Ms0 f0 type htmlwfui.MySubstitutions.MySubstitutionsData #txt
Ms0 f0 method start(htmlwfui.Substitute) #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Substitute substitute> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 inParameterMapAction 'out.substitute=param.substitute;
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 embeddedRdInitializations '* ' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Substitute)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 86 54 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 96 74 96 150 #arcP
Ms0 f3 guid 13C1982A12866C94 #txt
Ms0 f3 type htmlwfui.MySubstitutions.MySubstitutionsData #txt
Ms0 f3 actionDecl 'htmlwfui.MySubstitutions.MySubstitutionsData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToSubstitutesList</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 246 54 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f6 type htmlwfui.MySubstitutions.MySubstitutionsData #txt
Ms0 f6 guid 13C1982EB4348C09 #txt
Ms0 f6 246 150 20 20 13 0 #rect
Ms0 f6 @|RichDialogEndIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 256 74 256 150 #arcP
>Proto Ms0 .type htmlwfui.MySubstitutions.MySubstitutionsData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
