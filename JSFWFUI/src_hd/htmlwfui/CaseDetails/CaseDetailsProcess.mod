[Ivy]
[>Created: Tue Jan 15 16:00:21 CET 2013]
13C3E6A15D98EC7B 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseDetailsProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogInitStart f3 '' #zField
Cs0 @RichDialogProcessStep f0 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @RichDialogMethodStart f5 '' #zField
Cs0 @RichDialogProcessEnd f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 @RichDialogEnd f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
>Proto Cs0 Cs0 CaseDetailsProcess #zField
Cs0 f1 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f1 86 150 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 13C3E6AFCCFA49E4 #txt
Cs0 f3 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f3 method start(htmlwfui.Data) #txt
Cs0 f3 disableUIEvents true #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f3 outParameterDecl '<> result;
' #txt
Cs0 f3 embeddedRdInitializations '* ' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 86 54 20 20 13 0 #rect
Cs0 f3 @|RichDialogInitStartIcon #fIcon
Cs0 f0 actionDecl 'htmlwfui.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f0 actionTable 'out=in;
' #txt
Cs0 f0 actionCode 'import ch.ivyteam.ivy.workflow.ICase;
out.data.tempCase = in.data.cases.get(in.data.temp.n);
out.data.tasks = out.data.tempCase.getTasks();' #txt
Cs0 f0 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Details</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 78 100 36 24 20 -2 #rect
Cs0 f0 @|RichDialogProcessStepIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 96 74 96 100 #arcP
Cs0 f4 expr out #txt
Cs0 f4 96 124 96 150 #arcP
Cs0 f5 guid 13C3EAE8B9C4B76F #txt
Cs0 f5 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f5 method taskDetail(Number) #txt
Cs0 f5 disableUIEvents false #txt
Cs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number indx> param = methodEvent.getInputArguments();
' #txt
Cs0 f5 inParameterMapAction 'out.data.temp.n=param.indx;
' #txt
Cs0 f5 outParameterDecl '<> result;
' #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail(Number)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 214 54 20 20 13 0 #rect
Cs0 f5 @|RichDialogMethodStartIcon #fIcon
Cs0 f6 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f6 214 150 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 224 74 224 150 #arcP
Cs0 f8 guid 13C3EB227805B224 #txt
Cs0 f8 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f8 actionDecl 'htmlwfui.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToCaseList</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 374 54 20 20 13 0 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 f11 type htmlwfui.CaseDetails.CaseDetailsData #txt
Cs0 f11 guid 13C3EB2458B52AA8 #txt
Cs0 f11 374 150 20 20 13 0 #rect
Cs0 f11 @|RichDialogEndIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 384 74 384 150 #arcP
>Proto Cs0 .type htmlwfui.CaseDetails.CaseDetailsData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f2 tail #connect
Cs0 f2 head f0 mainIn #connect
Cs0 f0 mainOut f4 tail #connect
Cs0 f4 head f1 mainIn #connect
Cs0 f5 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f8 mainOut f12 tail #connect
Cs0 f12 head f11 mainIn #connect
