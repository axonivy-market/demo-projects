[Ivy]
[>Created: Tue Jul 05 15:43:56 CEST 2016]
155BB4D0A6771B1B 3.18 #module
>Proto >Proto Collection #zClass
Bs0 BusinessDataDossierModifierProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Bs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Bs0 @TextInP .resExport .resExport #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @RichDialogInitStart f0 '' #zField
Bs0 @RichDialogProcessEnd f1 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
>Proto Bs0 Bs0 BusinessDataDossierModifierProcess #zField
Bs0 f0 guid 155BB4D0A807E003 #txt
Bs0 f0 type workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
Bs0 f0 method start(workflow.business.data.Dossier) #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<workflow.business.data.Dossier dossier> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 inParameterMapAction 'out.dossier=param.dossier;
' #txt
Bs0 f0 outParameterDecl '<workflow.business.data.Dossier dossier> result;
' #txt
Bs0 f0 outParameterMapAction 'result.dossier=in.dossier;
' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Dossier)</name>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -43 15 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f1 type workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
Bs0 f1 211 51 26 26 0 12 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f2 expr out #txt
Bs0 f2 109 64 211 64 #arcP
Bs0 f3 guid 155BB4D0A93C5899 #txt
Bs0 f3 type workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
Bs0 f3 actionDecl 'workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData out;
' #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 147 26 26 -16 12 #rect
Bs0 f3 @|RichDialogProcessStartIcon #fIcon
Bs0 f4 type workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
Bs0 f4 guid 155BB4D0A94981CF #txt
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|RichDialogEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
>Proto Bs0 .type workflow.business.data.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f0 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
