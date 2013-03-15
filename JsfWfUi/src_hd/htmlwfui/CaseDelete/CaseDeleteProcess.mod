[Ivy]
[>Created: Fri Jan 18 13:58:47 CET 2013]
13C4CCC1109A2ECF 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseDeleteProcess Big #zClass
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
Cs0 @RichDialogProcessStart f0 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogEnd f9 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStep f5 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogProcessStep f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f4 '' #zField
>Proto Cs0 Cs0 CaseDeleteProcess #zField
Cs0 f1 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f1 86 150 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 13C4CCD07F59E6CE #txt
Cs0 f3 type htmlwfui.CaseDelete.CaseDeleteData #txt
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
Cs0 f0 guid 13C4CE3F24236B4E #txt
Cs0 f0 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f0 actionDecl 'htmlwfui.CaseDelete.CaseDeleteData out;
' #txt
Cs0 f0 actionTable 'out=in;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteCase</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 214 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogProcessStartIcon #fIcon
Cs0 f6 guid 13C4CE91712E0842 #txt
Cs0 f6 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f6 actionDecl 'htmlwfui.CaseDelete.CaseDeleteData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToDetailList</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 342 54 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f9 guid 13C4CE96D3D6217C #txt
Cs0 f9 278 150 20 20 13 0 #rect
Cs0 f9 @|RichDialogEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 352 74 298 160 #arcP
Cs0 f2 1 352 160 #addKink
Cs0 f2 0 0.8467803099796781 0 0 #arcLabel
Cs0 f5 actionDecl 'htmlwfui.CaseDelete.CaseDeleteData out;
' #txt
Cs0 f5 actionTable 'out=in;
' #txt
Cs0 f5 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;

ICase case =in.data.tempCase.destroy();
if(case.getState()==CaseState.DESTROYED)
{
	in.data.cases.remove(in.data.tempCase);
	out.data.temp.msg = "DESTROYED";
}
' #txt
Cs0 f5 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Case</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 206 100 36 24 20 -2 #rect
Cs0 f5 @|RichDialogProcessStepIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 224 74 224 100 #arcP
Cs0 f7 0 0.5075155769401514 0 0 #arcLabel
Cs0 f8 expr out #txt
Cs0 f8 224 124 278 160 #arcP
Cs0 f8 1 224 160 #addKink
Cs0 f8 1 0.2112680116115104 0 0 #arcLabel
Cs0 f10 actionDecl 'htmlwfui.CaseDelete.CaseDeleteData out;
' #txt
Cs0 f10 actionTable 'out=in;
out.data.temp.description=ivy.cms.co("/explainTexts/CaseDeleteDescription") + " " + in.data.tempCase.getName() + " " + ivy.cms.co("/explainTexts/CaseDeleteDescription2") + "[" + in.data.tempCase.getId() + "]" + " " + ivy.cms.co("/explainTexts/CaseDeleteDescription3");
out.data.temp.ok=false;
' #txt
Cs0 f10 type htmlwfui.CaseDelete.CaseDeleteData #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 78 100 36 24 20 -2 #rect
Cs0 f10 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 96 74 96 100 #arcP
Cs0 f4 expr out #txt
Cs0 f4 96 124 96 150 #arcP
>Proto Cs0 .type htmlwfui.CaseDelete.CaseDeleteData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f9 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f5 mainIn #connect
Cs0 f5 mainOut f8 tail #connect
Cs0 f8 head f9 mainIn #connect
Cs0 f3 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
Cs0 f10 mainOut f4 tail #connect
Cs0 f4 head f1 mainIn #connect
