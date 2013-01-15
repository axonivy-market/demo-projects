[Ivy]
[>Created: Tue Jan 15 09:51:54 CET 2013]
13C396BFDDBEC687 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskHistoryProcess Big #zClass
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
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @RichDialogMethodStart f0 '' #zField
Ts0 @RichDialogEnd f6 '' #zField
Ts0 @RichDialogProcessStep f2 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TaskHistoryProcess #zField
Ts0 f1 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f1 86 150 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 guid 13C39848937EF5EF #txt
Ts0 f3 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f3 method start(htmlwfui.Data) #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.data=param.data;
' #txt
Ts0 f3 outParameterDecl '<java.lang.String option> result;
' #txt
Ts0 f3 embeddedRdInitializations '* ' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 86 54 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f5 expr out #txt
Ts0 f5 96 74 96 150 #arcP
Ts0 f0 guid 13C39A85B32BB07D #txt
Ts0 f0 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f0 method taskDetail(Number) #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number indx> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.data.temp.n=param.indx;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail(Number)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 214 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogMethodStartIcon #fIcon
Ts0 f6 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f6 guid 13C3D3293CEA9000 #txt
Ts0 f6 214 150 20 20 13 0 #rect
Ts0 f6 @|RichDialogEndIcon #fIcon
Ts0 f2 actionDecl 'htmlwfui.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f2 actionTable 'out=in;
out.option="detail";
' #txt
Ts0 f2 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f2 206 92 36 24 20 -2 #rect
Ts0 f2 @|RichDialogProcessStepIcon #fIcon
Ts0 f7 expr out #txt
Ts0 f7 224 74 224 92 #arcP
Ts0 f4 expr out #txt
Ts0 f4 224 116 224 150 #arcP
>Proto Ts0 .type htmlwfui.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f3 mainOut f5 tail #connect
Ts0 f5 head f1 mainIn #connect
Ts0 f0 mainOut f7 tail #connect
Ts0 f7 head f2 mainIn #connect
Ts0 f2 mainOut f4 tail #connect
Ts0 f4 head f6 mainIn #connect
