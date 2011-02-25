[Ivy]
[>Created: Wed Feb 23 08:10:15 CET 2011]
125F987FBCF8B3EC 3.16 #module
>Proto >Proto Collection #zClass
Fs0 FileEditorCheckerProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @RichDialogProcessStep f3 '' #zField
Fs0 @PushWFArc f4 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogMethodStart f5 '' #zField
Fs0 @RichDialogMethodStart f6 '' #zField
Fs0 @RichDialogMethodStart f7 '' #zField
Fs0 @RichDialogMethodStart f9 '' #zField
Fs0 @RichDialogMethodStart f10 '' #zField
Fs0 @RichDialogProcessEnd f11 '' #zField
Fs0 @PushWFArc f12 '' #zField
Fs0 @RichDialogProcessEnd f13 '' #zField
Fs0 @PushWFArc f14 '' #zField
Fs0 @RichDialogProcessStep f15 '' #zField
Fs0 @PushWFArc f16 '' #zField
Fs0 @RichDialogProcessEnd f17 '' #zField
Fs0 @PushWFArc f18 '' #zField
Fs0 @RichDialogProcessStep f19 '' #zField
Fs0 @RichDialogProcessEnd f21 '' #zField
Fs0 @PushWFArc f22 '' #zField
Fs0 @RichDialogProcessStep f23 '' #zField
Fs0 @PushWFArc f24 '' #zField
Fs0 @RichDialogProcessEnd f25 '' #zField
Fs0 @PushWFArc f26 '' #zField
Fs0 @RichDialogProcessStep f27 '' #zField
Fs0 @RichDialogProcessEnd f28 '' #zField
Fs0 @PushWFArc f29 '' #zField
Fs0 @PushWFArc f30 '' #zField
Fs0 @RichDialogMethodStart f31 '' #zField
Fs0 @RichDialogProcessEnd f32 '' #zField
Fs0 @RichDialogFireEvent f34 '' #zField
Fs0 @PushWFArc f35 '' #zField
Fs0 @PushWFArc f33 '' #zField
Fs0 @RichDialogMethodStart f36 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @RichDialogMethodStart f20 '' #zField
Fs0 @RichDialogProcessStep f37 '' #zField
Fs0 @PushWFArc f38 '' #zField
Fs0 @RichDialogProcessEnd f39 '' #zField
Fs0 @PushWFArc f40 '' #zField
>Proto Fs0 Fs0 FileEditorCheckerProcess #zField
Fs0 f0 guid 11E259C2E7C3B828 #txt
Fs0 f0 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Fs0 f0 90 40 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f1 87 195 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f3 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode 'import ch.ivyteam.ivy.addons.filemanager.ulcextensionhandler.FileCoupleChecker;
in.fileCoupleChecker = new FileCoupleChecker(panel,"_fileModified");
in.checkPeriod=3000;
in.fileCoupleChecker.setCheckPeriod(in.checkPeriod);' #txt
Fs0 f3 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Make the 
fileCoupleChecker object</name>
        <nameStyle>34,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 82 108 36 24 20 -2 #rect
Fs0 f3 @|RichDialogProcessStepIcon #fIcon
Fs0 f4 expr out #txt
Fs0 f4 100 60 100 108 #arcP
Fs0 f4 0 0.5000000000000001 0 0 #arcLabel
Fs0 f2 expr out #txt
Fs0 f2 100 132 100 195 #arcP
Fs0 f5 guid 11E25B025EDC0BAF #txt
Fs0 f5 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f5 method getCheckPeriod() #txt
Fs0 f5 disableUIEvents false #txt
Fs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f5 outParameterDecl '<java.lang.Number checkPeriod> result;
' #txt
Fs0 f5 outParameterMapAction 'result.checkPeriod=in.checkPeriod;
' #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getCheckPeriod()</name>
        <nameStyle>16,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 534 254 20 20 -36 -35 #rect
Fs0 f5 @|RichDialogMethodStartIcon #fIcon
Fs0 f6 guid 11E25B02F534938E #txt
Fs0 f6 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f6 method getFileCouplesList() #txt
Fs0 f6 disableUIEvents false #txt
Fs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f6 outParameterDecl '<List<ch.xpertline.common.ria.component.FileCouple> fileCoupleLists> result;
' #txt
Fs0 f6 outParameterMapAction 'result.fileCoupleLists=in.fileCouplesList;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getFileCouplesList()</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 350 70 20 20 -34 -37 #rect
Fs0 f6 @|RichDialogMethodStartIcon #fIcon
Fs0 f7 guid 11E25B03A21747F8 #txt
Fs0 f7 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f7 method setCheckPeriod(Number) #txt
Fs0 f7 disableUIEvents false #txt
Fs0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number checkPeriod> param = methodEvent.getInputArguments();
' #txt
Fs0 f7 inParameterMapAction 'out.checkPeriod=param.checkPeriod;
' #txt
Fs0 f7 outParameterDecl '<> result;
' #txt
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCheckPeriod(Number)</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f7 342 246 20 20 -52 -40 #rect
Fs0 f7 @|RichDialogMethodStartIcon #fIcon
Fs0 f9 guid 11E25B0546F40994 #txt
Fs0 f9 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f9 method startFileCheck() #txt
Fs0 f9 disableUIEvents false #txt
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startFileCheck()</name>
    </language>
</elementInfo>
' #txt
Fs0 f9 862 70 20 20 -36 -37 #rect
Fs0 f9 @|RichDialogMethodStartIcon #fIcon
Fs0 f10 guid 11E25B063A118C97 #txt
Fs0 f10 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f10 method stopFileCheck() #txt
Fs0 f10 disableUIEvents false #txt
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>stopFileCheck()</name>
    </language>
</elementInfo>
' #txt
Fs0 f10 758 70 20 20 -31 -39 #rect
Fs0 f10 @|RichDialogMethodStartIcon #fIcon
Fs0 f11 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f11 347 139 26 26 14 0 #rect
Fs0 f11 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 expr out #txt
Fs0 f12 360 90 360 139 #arcP
Fs0 f13 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f13 531 299 26 26 14 0 #rect
Fs0 f13 @|RichDialogProcessEndIcon #fIcon
Fs0 f14 expr out #txt
Fs0 f14 544 274 544 299 #arcP
Fs0 f15 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f15 actionTable 'out=in;
' #txt
Fs0 f15 actionCode in.fileCoupleChecker.setCheckPeriod(in.checkPeriod); #txt
Fs0 f15 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f15 334 292 36 24 20 -2 #rect
Fs0 f15 @|RichDialogProcessStepIcon #fIcon
Fs0 f16 expr out #txt
Fs0 f16 352 266 352 292 #arcP
Fs0 f17 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f17 339 355 26 26 14 0 #rect
Fs0 f17 @|RichDialogProcessEndIcon #fIcon
Fs0 f18 expr out #txt
Fs0 f18 352 316 352 355 #arcP
Fs0 f19 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f19 actionTable 'out=in;
' #txt
Fs0 f19 actionCode in.fileCoupleChecker.setFileCouples(in.fileCouplesList); #txt
Fs0 f19 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f19 526 116 36 24 20 -2 #rect
Fs0 f19 @|RichDialogProcessStepIcon #fIcon
Fs0 f21 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f21 531 179 26 26 14 0 #rect
Fs0 f21 @|RichDialogProcessEndIcon #fIcon
Fs0 f22 expr out #txt
Fs0 f22 544 140 544 179 #arcP
Fs0 f23 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f23 actionTable 'out=in;
' #txt
Fs0 f23 actionCode in.fileCoupleChecker.stopFileCheck(); #txt
Fs0 f23 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f23 750 124 36 24 20 -2 #rect
Fs0 f23 @|RichDialogProcessStepIcon #fIcon
Fs0 f24 expr out #txt
Fs0 f24 768 90 768 124 #arcP
Fs0 f25 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f25 755 179 26 26 14 0 #rect
Fs0 f25 @|RichDialogProcessEndIcon #fIcon
Fs0 f26 expr out #txt
Fs0 f26 768 148 768 179 #arcP
Fs0 f27 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f27 actionTable 'out=in;
' #txt
Fs0 f27 actionCode in.fileCoupleChecker.restartFileCheck(); #txt
Fs0 f27 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f27 854 116 36 24 20 -2 #rect
Fs0 f27 @|RichDialogProcessStepIcon #fIcon
Fs0 f28 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f28 859 187 26 26 14 0 #rect
Fs0 f28 @|RichDialogProcessEndIcon #fIcon
Fs0 f29 expr out #txt
Fs0 f29 872 90 872 116 #arcP
Fs0 f30 expr out #txt
Fs0 f30 872 140 872 187 #arcP
Fs0 f31 guid 11E8CF7D6ECD0AE5 #txt
Fs0 f31 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f31 method _fileModified(java.io.File) #txt
Fs0 f31 disableUIEvents false #txt
Fs0 f31 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.io.File modifiedFile> param = methodEvent.getInputArguments();
' #txt
Fs0 f31 inParameterMapAction 'out.fileModified=param.modifiedFile;
' #txt
Fs0 f31 outParameterDecl '<> result;
' #txt
Fs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_fileModified(File)</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f31 750 286 20 20 -36 -30 #rect
Fs0 f31 @|RichDialogMethodStartIcon #fIcon
Fs0 f32 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f32 747 379 26 26 14 0 #rect
Fs0 f32 @|RichDialogProcessEndIcon #fIcon
Fs0 f34 actionDecl 'java.io.File modifiedFile;
' #txt
Fs0 f34 actionTable 'modifiedFile=in.fileModified;
' #txt
Fs0 f34 actionCode panel.fireFileModified(modifiedFile); #txt
Fs0 f34 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f34 fireEvent fileModified(java.io.File) #txt
Fs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileModified(File)</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f34 742 324 36 24 23 -8 #rect
Fs0 f34 @|RichDialogFireEventIcon #fIcon
Fs0 f35 expr out #txt
Fs0 f35 760 306 760 324 #arcP
Fs0 f33 expr out #txt
Fs0 f33 760 348 760 379 #arcP
Fs0 f36 guid 125F99D12D9BCFAE #txt
Fs0 f36 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f36 method setFileCouplesList(List<ch.ivyteam.ivy.addons.filemanager.FileCouple>) #txt
Fs0 f36 disableUIEvents false #txt
Fs0 f36 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<ch.ivyteam.ivy.addons.filemanager.FileCouple> fileCoupleLists> param = methodEvent.getInputArguments();
' #txt
Fs0 f36 inParameterMapAction 'out.fileCouplesList=param.fileCoupleLists;
' #txt
Fs0 f36 outParameterDecl '<> result;
' #txt
Fs0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFileCouplesList(List&lt;FileCouple&gt;)</name>
        <nameStyle>36,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f36 534 62 20 20 -78 -26 #rect
Fs0 f36 @|RichDialogMethodStartIcon #fIcon
Fs0 f8 expr out #txt
Fs0 f8 544 82 544 116 #arcP
Fs0 f20 guid 12E514B333648C69 #txt
Fs0 f20 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f20 method setClientFileSeparator(String) #txt
Fs0 f20 disableUIEvents false #txt
Fs0 f20 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String clientFileSeparator> param = methodEvent.getInputArguments();
' #txt
Fs0 f20 inParameterMapAction 'out.clientFileSeparator=param.clientFileSeparator;
' #txt
Fs0 f20 outParameterDecl '<> result;
' #txt
Fs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setClientFileSeparator(String)</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f20 342 430 20 20 13 0 #rect
Fs0 f20 @|RichDialogMethodStartIcon #fIcon
Fs0 f37 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData out;
' #txt
Fs0 f37 actionTable 'out=in;
' #txt
Fs0 f37 actionCode in.fileCoupleChecker.setClientFileSeparator(in.clientFileSeparator); #txt
Fs0 f37 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f37 334 476 36 24 20 -2 #rect
Fs0 f37 @|RichDialogProcessStepIcon #fIcon
Fs0 f38 expr out #txt
Fs0 f38 352 450 352 476 #arcP
Fs0 f39 type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
Fs0 f39 342 542 20 20 13 0 #rect
Fs0 f39 @|RichDialogProcessEndIcon #fIcon
Fs0 f40 expr out #txt
Fs0 f40 352 500 352 542 #arcP
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Getters / Setters</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>250</swimlaneSize>
    <swimlaneSize>450</swimlaneSize>
    <swimlaneSize>250</swimlaneSize>
    <swimlaneColor>-6697729</swimlaneColor>
    <swimlaneColor>-39322</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 .type ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f4 tail #connect
Fs0 f4 head f3 mainIn #connect
Fs0 f3 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f6 mainOut f12 tail #connect
Fs0 f12 head f11 mainIn #connect
Fs0 f5 mainOut f14 tail #connect
Fs0 f14 head f13 mainIn #connect
Fs0 f7 mainOut f16 tail #connect
Fs0 f16 head f15 mainIn #connect
Fs0 f15 mainOut f18 tail #connect
Fs0 f18 head f17 mainIn #connect
Fs0 f19 mainOut f22 tail #connect
Fs0 f22 head f21 mainIn #connect
Fs0 f10 mainOut f24 tail #connect
Fs0 f24 head f23 mainIn #connect
Fs0 f23 mainOut f26 tail #connect
Fs0 f26 head f25 mainIn #connect
Fs0 f9 mainOut f29 tail #connect
Fs0 f29 head f27 mainIn #connect
Fs0 f27 mainOut f30 tail #connect
Fs0 f30 head f28 mainIn #connect
Fs0 f31 mainOut f35 tail #connect
Fs0 f35 head f34 mainIn #connect
Fs0 f34 mainOut f33 tail #connect
Fs0 f33 head f32 mainIn #connect
Fs0 f36 mainOut f8 tail #connect
Fs0 f8 head f19 mainIn #connect
Fs0 f20 mainOut f38 tail #connect
Fs0 f38 head f37 mainIn #connect
Fs0 f37 mainOut f40 tail #connect
Fs0 f40 head f39 mainIn #connect
