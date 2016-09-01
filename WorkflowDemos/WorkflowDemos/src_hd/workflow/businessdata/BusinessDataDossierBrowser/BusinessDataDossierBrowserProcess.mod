[Ivy]
[>Created: Thu Sep 01 17:04:06 CEST 2016]
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
Bs0 @RichDialogProcessEnd f1 '' #zField
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f6 '' #zField
Bs0 @RichDialogProcessStart f8 '' #zField
Bs0 @RichDialogProcessEnd f9 '' #zField
Bs0 @GridStep f11 '' #zField
Bs0 @PushWFArc f10 '' #zField
Bs0 @RichDialogProcessEnd f14 '' #zField
Bs0 @GridStep f16 '' #zField
Bs0 @PushWFArc f15 '' #zField
Bs0 @RichDialogProcessStart f19 '' #zField
Bs0 @RichDialogProcessEnd f20 '' #zField
Bs0 @RichDialogProcessEnd f21 '' #zField
Bs0 @GridStep f22 '' #zField
Bs0 @GridStep f23 '' #zField
Bs0 @PushWFArc f25 '' #zField
Bs0 @PushWFArc f26 '' #zField
Bs0 @PushWFArc f27 '' #zField
Bs0 @Alternative f28 '' #zField
Bs0 @PushWFArc f29 '' #zField
Bs0 @PushWFArc f12 '' #zField
Bs0 @PushWFArc f13 '' #zField
Bs0 @PushWFArc f17 '' #zField
Bs0 @RichDialogProcessEnd f31 '' #zField
Bs0 @GridStep f33 '' #zField
Bs0 @PushWFArc f32 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @RichDialogMethodStart f18 '' #zField
Bs0 @PushWFArc f24 '' #zField
Bs0 @RichDialogInitStart f30 '' #zField
Bs0 @PushWFArc f34 '' #zField
>Proto Bs0 Bs0 BusinessDataDossierBrowserProcess #zField
Bs0 f1 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f1 339 51 26 26 0 12 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f3 guid 155BB5BDF10FCA85 #txt
Bs0 f3 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f3 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
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
Bs0 f4 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f4 guid 155BB5BDF11AEBB5 #txt
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|RichDialogEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
Bs0 f6 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f6 actionTable 'out=in;
' #txt
Bs0 f6 actionCode 'import workflow.businessdata.Dossier;

in.dossiers = ivy.repo.search(Dossier.class).orderBy().field("name").limit(20).execute().getAll();
' #txt
Bs0 f6 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
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
Bs0 f8 guid 15627E1B09E15483 #txt
Bs0 f8 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f8 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
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
Bs0 f9 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f9 435 243 26 26 0 12 #rect
Bs0 f9 @|RichDialogProcessEndIcon #fIcon
Bs0 f11 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f11 actionTable 'out=in;
' #txt
Bs0 f11 actionCode 'import workflow.businessdata.Dossier;

in.dossiers = ivy.repo.search(Dossier.class)
													.allFields()
													.containsWordPattern(in.searchText)
													.orderBy().field("name")
													.limit(20)
													.execute()
													.getAll();

' #txt
Bs0 f11 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do a fulltext search</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f11 264 234 112 44 -51 -8 #rect
Bs0 f11 @|StepIcon #fIcon
Bs0 f10 expr out #txt
Bs0 f10 376 256 435 256 #arcP
Bs0 f14 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f14 435 339 26 26 0 12 #rect
Bs0 f14 @|RichDialogProcessEndIcon #fIcon
Bs0 f16 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f16 actionTable 'out=in;
' #txt
Bs0 f16 actionCode 'import workflow.businessdata.Dossier;

in.dossiers = ivy.repo.search(Dossier.class)
													.textField("person.lastName")
													.containsWordPattern(in.searchText)
													.orderBy().field("name")
													.limit(20)
													.execute()
													.getAll();
' #txt
Bs0 f16 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for LastName</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f16 256 330 128 44 -58 -8 #rect
Bs0 f16 @|StepIcon #fIcon
Bs0 f15 expr out #txt
Bs0 f15 384 352 435 352 #arcP
Bs0 f19 guid 15692726A4D2F2CF #txt
Bs0 f19 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f19 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f19 actionTable 'out=in;
' #txt
Bs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateSearchToDate</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f19 83 547 26 26 -58 15 #rect
Bs0 f19 @|RichDialogProcessStartIcon #fIcon
Bs0 f20 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f20 435 435 26 26 0 12 #rect
Bs0 f20 @|RichDialogProcessEndIcon #fIcon
Bs0 f21 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f21 339 547 26 26 0 12 #rect
Bs0 f21 @|RichDialogProcessEndIcon #fIcon
Bs0 f22 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f22 actionTable 'out=in;
' #txt
Bs0 f22 actionCode 'import workflow.businessdata.Dossier;

in.dossiers = ivy.repo.search(Dossier.class)
													.dateTimeField("person.birthDate")
													.isInDateRange(in.searchFromDate,in.searchToDate)
													.orderBy().field("name")
													.limit(20)
													.execute()
													.getAll();' #txt
Bs0 f22 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for birthdate</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f22 264 426 112 44 -53 -8 #rect
Bs0 f22 @|StepIcon #fIcon
Bs0 f23 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f23 actionTable 'out=in;
' #txt
Bs0 f23 actionCode 'if (in.searchToDate < in.searchFromDate)
{
	in.searchToDate = in.searchFromDate;
}' #txt
Bs0 f23 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toDate=fromDate</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f23 168 538 112 44 -47 -8 #rect
Bs0 f23 @|StepIcon #fIcon
Bs0 f25 expr out #txt
Bs0 f25 376 448 435 448 #arcP
Bs0 f26 expr out #txt
Bs0 f26 109 560 168 560 #arcP
Bs0 f27 expr out #txt
Bs0 f27 280 560 339 560 #arcP
Bs0 f28 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f28 176 240 32 32 0 16 #rect
Bs0 f28 @|AlternativeIcon #fIcon
Bs0 f29 expr out #txt
Bs0 f29 109 256 176 256 #arcP
Bs0 f12 expr in #txt
Bs0 f12 outCond in.searchType=="FullText" #txt
Bs0 f12 208 256 264 256 #arcP
Bs0 f13 expr in #txt
Bs0 f13 outCond in.searchType=="LastName" #txt
Bs0 f13 192 272 256 352 #arcP
Bs0 f13 1 192 352 #addKink
Bs0 f13 1 0.1556203489120305 0 0 #arcLabel
Bs0 f17 expr in #txt
Bs0 f17 192 272 264 448 #arcP
Bs0 f17 1 192 448 #addKink
Bs0 f17 0 0.5387700534759359 0 0 #arcLabel
Bs0 f31 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f31 339 627 26 26 0 12 #rect
Bs0 f31 @|RichDialogProcessEndIcon #fIcon
Bs0 f33 actionDecl 'workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData out;
' #txt
Bs0 f33 actionTable 'out=in;
' #txt
Bs0 f33 actionCode 'import org.primefaces.event.SelectEvent;
import javax.faces.context.FacesContext;

if (!in.lastEditedId.isEmpty())
{
	// create message for pop-up (p:growl)
	FacesContext.getCurrentInstance().addMessage(null,
		new javax.faces.application.FacesMessage(
		"Search index might not be immediately up-to-date", 
		"If your newly created dossier does not show up in the list yet, then press search to refresh the list."
	));
}
in.lastEditedId = "";' #txt
Bs0 f33 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display growl
message (index)</name>
        <nameStyle>21,7
8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f33 160 618 128 44 -43 -16 #rect
Bs0 f33 @|StepIcon #fIcon
Bs0 f32 expr out #txt
Bs0 f32 288 640 339 640 #arcP
Bs0 f2 expr out #txt
Bs0 f2 280 64 339 64 #arcP
Bs0 f18 guid 1569CFB6E45ABE22 #txt
Bs0 f18 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f18 method displayMessage() #txt
Bs0 f18 disableUIEvents false #txt
Bs0 f18 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Bs0 f18 outParameterDecl '<> result;
' #txt
Bs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayMessage()</name>
    </language>
</elementInfo>
' #txt
Bs0 f18 83 627 26 26 -49 15 #rect
Bs0 f18 @|RichDialogMethodStartIcon #fIcon
Bs0 f24 expr out #txt
Bs0 f24 109 640 160 640 #arcP
Bs0 f30 guid 1569D05C213FCF19 #txt
Bs0 f30 type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
Bs0 f30 method start(String) #txt
Bs0 f30 disableUIEvents true #txt
Bs0 f30 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String id> param = methodEvent.getInputArguments();
' #txt
Bs0 f30 inParameterMapAction 'out.lastEditedId=param.id;
out.searchType="FullText";
' #txt
Bs0 f30 outParameterDecl '<> result;
' #txt
Bs0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f30 83 51 26 26 -33 15 #rect
Bs0 f30 @|RichDialogInitStartIcon #fIcon
Bs0 f34 expr out #txt
Bs0 f34 109 64 168 64 #arcP
>Proto Bs0 .type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f11 mainOut f10 tail #connect
Bs0 f10 head f9 mainIn #connect
Bs0 f16 mainOut f15 tail #connect
Bs0 f15 head f14 mainIn #connect
Bs0 f22 mainOut f25 tail #connect
Bs0 f25 head f20 mainIn #connect
Bs0 f19 mainOut f26 tail #connect
Bs0 f26 head f23 mainIn #connect
Bs0 f23 mainOut f27 tail #connect
Bs0 f27 head f21 mainIn #connect
Bs0 f8 mainOut f29 tail #connect
Bs0 f29 head f28 in #connect
Bs0 f28 out f12 tail #connect
Bs0 f12 head f11 mainIn #connect
Bs0 f28 out f13 tail #connect
Bs0 f13 head f16 mainIn #connect
Bs0 f28 out f17 tail #connect
Bs0 f17 head f22 mainIn #connect
Bs0 f33 mainOut f32 tail #connect
Bs0 f32 head f31 mainIn #connect
Bs0 f6 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
Bs0 f18 mainOut f24 tail #connect
Bs0 f24 head f33 mainIn #connect
Bs0 f30 mainOut f34 tail #connect
Bs0 f34 head f6 mainIn #connect
