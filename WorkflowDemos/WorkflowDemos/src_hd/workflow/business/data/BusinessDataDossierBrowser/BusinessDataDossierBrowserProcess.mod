[Ivy]
[>Created: Wed Aug 10 16:44:06 CEST 2016]
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
Bs0 @RichDialogProcessStart f8 '' #zField
Bs0 @RichDialogProcessEnd f9 '' #zField
Bs0 @GridStep f11 '' #zField
Bs0 @PushWFArc f12 '' #zField
Bs0 @PushWFArc f10 '' #zField
Bs0 @RichDialogProcessStart f13 '' #zField
Bs0 @RichDialogProcessEnd f14 '' #zField
Bs0 @GridStep f16 '' #zField
Bs0 @PushWFArc f17 '' #zField
Bs0 @PushWFArc f15 '' #zField
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
Bs0 f6 actionCode 'import workflow.business.data.Dossier;

in.businessData = ivy.businessdata.findAll(Dossier.class);

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
Bs0 f8 guid 15627E1B09E15483 #txt
Bs0 f8 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f8 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f8 actionTable 'out=in;
' #txt
Bs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search</name>
    </language>
</elementInfo>
' #txt
Bs0 f8 83 243 26 26 -19 12 #rect
Bs0 f8 @|RichDialogProcessStartIcon #fIcon
Bs0 f9 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f9 339 243 26 26 0 12 #rect
Bs0 f9 @|RichDialogProcessEndIcon #fIcon
Bs0 f11 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f11 actionTable 'out=in;
' #txt
Bs0 f11 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.QueryHelper;
import workflow.business.data.Dossier;

in.businessData = ivy.businessdata.searchRaw(Dossier.class,QueryHelper.queryFullText(in.searchText)).getAll();

in.dossiers = null;
for (int i = 0; i < in.businessData.size(); i++) {
  in.dossiers.add(in.businessData.get(i).value() as Dossier);
}
' #txt
Bs0 f11 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do a fulltext search</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f11 168 234 112 44 -51 -8 #rect
Bs0 f11 @|StepIcon #fIcon
Bs0 f12 expr out #txt
Bs0 f12 109 256 168 256 #arcP
Bs0 f10 expr out #txt
Bs0 f10 280 256 339 256 #arcP
Bs0 f13 guid 1562B2CE3F5EEE02 #txt
Bs0 f13 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f13 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f13 actionTable 'out=in;
' #txt
Bs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>searchLastName</name>
    </language>
</elementInfo>
' #txt
Bs0 f13 83 339 26 26 -48 12 #rect
Bs0 f13 @|RichDialogProcessStartIcon #fIcon
Bs0 f14 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f14 339 339 26 26 0 12 #rect
Bs0 f14 @|RichDialogProcessEndIcon #fIcon
Bs0 f16 actionDecl 'workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f16 actionTable 'out=in;
' #txt
Bs0 f16 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.QueryHelper;
import workflow.business.data.Dossier;

in.businessData = ivy.businessdata.searchRaw(Dossier.class,QueryHelper.queryLastName(in.searchLastName)).getAll();

in.dossiers = null;
for (int i = 0; i < in.businessData.size(); i++) {
  in.dossiers.add(in.businessData.get(i).value() as Dossier);
}
' #txt
Bs0 f16 type workflow.business.data.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for LastName</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f16 160 330 128 44 -58 -8 #rect
Bs0 f16 @|StepIcon #fIcon
Bs0 f17 expr out #txt
Bs0 f17 109 352 160 352 #arcP
Bs0 f15 expr out #txt
Bs0 f15 288 352 339 352 #arcP
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
Bs0 f8 mainOut f12 tail #connect
Bs0 f12 head f11 mainIn #connect
Bs0 f11 mainOut f10 tail #connect
Bs0 f10 head f9 mainIn #connect
Bs0 f13 mainOut f17 tail #connect
Bs0 f17 head f16 mainIn #connect
Bs0 f16 mainOut f15 tail #connect
Bs0 f15 head f14 mainIn #connect
