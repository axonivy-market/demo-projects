[Ivy]
155BB5BDEDF19356 9.3.0 #module
>Proto >Proto Collection #zClass
Bs0 BusinessDataDossierBrowserProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @UdEvent f3 '' #zField
Bs0 @UdExitEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @UdEvent f8 '' #zField
Bs0 @UdProcessEnd f9 '' #zField
Bs0 @GridStep f11 '' #zField
Bs0 @PushWFArc f10 '' #zField
Bs0 @UdProcessEnd f14 '' #zField
Bs0 @GridStep f16 '' #zField
Bs0 @PushWFArc f15 '' #zField
Bs0 @UdEvent f19 '' #zField
Bs0 @UdProcessEnd f20 '' #zField
Bs0 @UdProcessEnd f21 '' #zField
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
Bs0 @UdProcessEnd f31 '' #zField
Bs0 @GridStep f33 '' #zField
Bs0 @PushWFArc f32 '' #zField
Bs0 @UdMethod f18 '' #zField
Bs0 @PushWFArc f24 '' #zField
Bs0 @UdInit f0 '' #zField
Bs0 @UdProcessEnd f36 '' #zField
Bs0 @GridStep f37 '' #zField
Bs0 @PushWFArc f38 '' #zField
Bs0 @PushWFArc f39 '' #zField
Bs0 @PushWFArc f2 '' #zField
>Proto Bs0 Bs0 BusinessDataDossierBrowserProcess #zField
Bs0 f3 guid 155BB5BDF10FCA85 #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 627 26 26 -16 12 #rect
Bs0 f4 211 627 26 26 0 12 #rect
Bs0 f5 expr out #txt
Bs0 f5 109 640 211 640 #arcP
Bs0 f8 guid 15627E1B09E15483 #txt
Bs0 f8 actionTable 'out=in;
' #txt
Bs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search</name>
    </language>
</elementInfo>
' #txt
Bs0 f8 83 147 26 26 -19 12 #rect
Bs0 f9 435 147 26 26 0 12 #rect
Bs0 f11 actionTable 'out=in;
' #txt
Bs0 f11 actionCode 'import workflow.businessdata.Dossier;

										
in.searchResult = ivy.repo.search(Dossier.class)
													.score()
													.allTextFields()
													.query(in.searchText)
													.orderBy().score()
													.limit(in.limit)
													.execute();
													
in.dossiers = in.searchResult.getAll();

' #txt
Bs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do a fulltext search</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f11 264 138 112 44 -51 -8 #rect
Bs0 f10 expr out #txt
Bs0 f10 376 160 435 160 #arcP
Bs0 f14 435 211 26 26 0 12 #rect
Bs0 f16 actionTable 'out=in;
' #txt
Bs0 f16 actionCode 'import workflow.businessdata.Dossier;

in.searchResult = ivy.repo.search(Dossier.class)
													.textField("person.lastName")
													.containsWordPattern(in.searchText)
													.orderBy().textField("name")
													.limit(in.limit)
													.execute();

in.dossiers = in.searchResult.getAll();
' #txt
Bs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for LastName</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f16 256 202 128 44 -58 -8 #rect
Bs0 f15 expr out #txt
Bs0 f15 384 224 435 224 #arcP
Bs0 f19 guid 15692726A4D2F2CF #txt
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
Bs0 f19 83 435 26 26 -58 15 #rect
Bs0 f20 435 275 26 26 0 12 #rect
Bs0 f21 339 435 26 26 0 12 #rect
Bs0 f22 actionTable 'out=in;
' #txt
Bs0 f22 actionCode 'import workflow.businessdata.Dossier;

in.searchResult = ivy.repo.search(Dossier.class)
													.dateTimeField("person.birthDate")
													.isInDateRange(in.searchFromDate,in.searchToDate)
													.orderBy().textField("name")
													.limit(in.limit)
													.execute();
													
in.dossiers = in.searchResult.getAll();' #txt
Bs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for birthdate</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f22 264 266 112 44 -53 -8 #rect
Bs0 f23 actionTable 'out=in;
' #txt
Bs0 f23 actionCode 'if (in.searchToDate < in.searchFromDate)
{
	in.searchToDate = in.searchFromDate;
}' #txt
Bs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toDate=fromDate</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f23 168 426 112 44 -47 -8 #rect
Bs0 f25 expr out #txt
Bs0 f25 376 288 435 288 #arcP
Bs0 f26 expr out #txt
Bs0 f26 109 448 168 448 #arcP
Bs0 f27 expr out #txt
Bs0 f27 280 448 339 448 #arcP
Bs0 f28 176 144 32 32 0 16 #rect
Bs0 f29 expr out #txt
Bs0 f29 109 160 176 160 #arcP
Bs0 f12 expr in #txt
Bs0 f12 outCond in.searchType=="FullText" #txt
Bs0 f12 208 160 264 160 #arcP
Bs0 f13 expr in #txt
Bs0 f13 outCond in.searchType=="LastName" #txt
Bs0 f13 192 176 256 224 #arcP
Bs0 f13 1 192 224 #addKink
Bs0 f13 1 0.1556203489120305 0 0 #arcLabel
Bs0 f17 expr in #txt
Bs0 f17 outCond in.searchType=="BirthDate" #txt
Bs0 f17 192 176 264 288 #arcP
Bs0 f17 1 192 288 #addKink
Bs0 f17 0 0.5387700534759359 0 0 #arcLabel
Bs0 f31 339 531 26 26 0 12 #rect
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
Bs0 f33 160 522 128 44 -43 -16 #rect
Bs0 f32 expr out #txt
Bs0 f32 288 544 339 544 #arcP
Bs0 f18 guid 1569CFB6E45ABE22 #txt
Bs0 f18 method displayMessage() #txt
Bs0 f18 inParameterDecl '<> param;' #txt
Bs0 f18 outParameterDecl '<> result;' #txt
Bs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayMessage()</name>
    </language>
</elementInfo>
' #txt
Bs0 f18 83 531 26 26 -49 15 #rect
Bs0 f24 expr out #txt
Bs0 f24 109 544 160 544 #arcP
Bs0 f0 guid 156FE96D5274976E #txt
Bs0 f0 method start(String,Boolean) #txt
Bs0 f0 inParameterDecl '<String lastId,Boolean showAll> param;' #txt
Bs0 f0 inParameterMapAction 'out.lastEditedId=param.lastId;
out.limit=param.showAll ? 1000 : 5;
out.searchType="LastName";
' #txt
Bs0 f0 outParameterDecl '<> result;' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,Boolean)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -57 15 #rect
Bs0 f36 435 347 26 26 0 12 #rect
Bs0 f37 actionTable 'out=in;
' #txt
Bs0 f37 actionCode 'import workflow.businessdata.Dossier;

in.searchResult = ivy.repo.search(Dossier.class)
													.textField("name")
													.containsAnyWordsFuzzy(in.searchText)
													.orderBy().textField("name")
													.limit(in.limit)
													.execute();
													
in.dossiers = in.searchResult.getAll();' #txt
Bs0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search for name</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f37 264 338 112 44 -51 -7 #rect
Bs0 f38 expr out #txt
Bs0 f38 376 360 435 360 #arcP
Bs0 f39 expr in #txt
Bs0 f39 192 176 264 360 #arcP
Bs0 f39 1 192 360 #addKink
Bs0 f39 0 0.6451612903225806 0 0 #arcLabel
Bs0 f2 expr out #txt
Bs0 f2 109 64 192 144 #arcP
Bs0 f2 1 192 64 #addKink
Bs0 f2 1 0.4391824329877974 0 0 #arcLabel
>Proto Bs0 .type workflow.businessdata.BusinessDataDossierBrowser.BusinessDataDossierBrowserData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
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
Bs0 f18 mainOut f24 tail #connect
Bs0 f24 head f33 mainIn #connect
Bs0 f37 mainOut f38 tail #connect
Bs0 f38 head f36 mainIn #connect
Bs0 f28 out f39 tail #connect
Bs0 f39 head f37 mainIn #connect
Bs0 f0 mainOut f2 tail #connect
Bs0 f2 head f28 in #connect
