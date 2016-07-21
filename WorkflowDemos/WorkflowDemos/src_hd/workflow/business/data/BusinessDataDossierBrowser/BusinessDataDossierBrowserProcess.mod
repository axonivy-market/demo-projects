[Ivy]
[>Created: Thu Jul 21 12:10:33 CEST 2016]
155BB5BDEDF19356 3.18 #module
>Proto >Proto Collection #zClass
Bs0 BusinessDataDossierBrowserProcess Big #zClass
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
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f6 '' #zField
Bs0 @PushWFArc f7 '' #zField
Bs0 @PushWFArc f2 '' #zField
>Proto Bs0 Bs0 BusinessDataDossierBrowserProcess #zField
Bs0 f0 guid 155BB5BDEFEF8285 #txt
Bs0 f0 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f0 method start() #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 outParameterDecl '<> result;
' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -20 15 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f1 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f1 339 51 26 26 0 12 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f3 guid 155BB5BDF10FCA85 #txt
Bs0 f3 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f3 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
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
Bs0 f4 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f4 guid 155BB5BDF11AEBB5 #txt
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|RichDialogEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
Bs0 f6 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f6 actionTable 'out=in;
' #txt
Bs0 f6 actionCode 'import ch.ivyteam.ivy.business.data.store.BusinessData;
import workflow.business.data.Dossier;
import ch.ivyteam.ivy.business.data.store.BusinessDataRepository;

BusinessDataRepository repo = BusinessDataRepository.get();
in.businessData = repo.findAll(Dossier.class);

in.dossiers = null;
for (int i = 0; i < in.businessData.size(); i++) {
  in.dossiers.add(in.businessData.get(i).value() as Dossier);
}
' #txt
Bs0 f6 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load dossiers</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f6 168 42 112 44 -42 -7 #rect
Bs0 f6 @|StepIcon #fIcon
Bs0 f7 expr out #txt
Bs0 f7 109 64 168 64 #arcP
Bs0 f2 expr out #txt
Bs0 f2 280 64 339 64 #arcP
>Proto Bs0 .type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f0 mainOut f7 tail #connect
Bs0 f7 head f6 mainIn #connect
Bs0 f6 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
