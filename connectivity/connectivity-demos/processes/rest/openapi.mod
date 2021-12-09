[Ivy]
16F375741231763F 9.3.1 #module
>Proto >Proto Collection #zClass
oi0 openapi Big #zClass
oi0 B #cInfo
oi0 #process
oi0 @TextInP .type .type #zField
oi0 @TextInP .processKind .processKind #zField
oi0 @TextInP .xml .xml #zField
oi0 @TextInP .responsibility .responsibility #zField
oi0 @EndTask f1 '' #zField
oi0 @RestClientCall f3 '' #zField
oi0 @PushWFArc f2 '' #zField
oi0 @InfoButton f5 '' #zField
oi0 @RestClientCall f6 '' #zField
oi0 @StartRequest f7 '' #zField
oi0 @EndTask f8 '' #zField
oi0 @PushWFArc f10 '' #zField
oi0 @PushWFArc f9 '' #zField
oi0 @StartRequest f11 '' #zField
oi0 @EndTask f13 '' #zField
oi0 @RestClientCall f14 '' #zField
oi0 @PushWFArc f16 '' #zField
oi0 @RestClientCall f12 '' #zField
oi0 @PushWFArc f17 '' #zField
oi0 @PushWFArc f15 '' #zField
oi0 @PushWFArc f4 '' #zField
oi0 @StartRequest f0 '' #zField
>Proto oi0 oi0 openapi #zField
oi0 f1 305 145 30 30 0 15 #rect
oi0 f3 clientId ae69ba01-79b7-4dce-9049-900f8f420907 #txt
oi0 f3 path /pet/findByStatus #txt
oi0 f3 queryParams 'status="available";
' #txt
oi0 f3 resultType java.util.List<io.swagger.petstore3.client.Pet> #txt
oi0 f3 responseMapping 'out.pets=result;
' #txt
oi0 f3 responseCode 'ivy.log.info("some pets are available: "+out.pets.size());' #txt
oi0 f3 clientErrorCode ivy:error:rest:client #txt
oi0 f3 statusErrorCode ivy:error:rest:client #txt
oi0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>available
PETs</name>
    </language>
</elementInfo>
' #txt
oi0 f3 136 138 112 44 -27 -15 #rect
oi0 f2 248 160 305 160 #arcP
oi0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Open API client sample
Rest services written in openapi compatible manor expose their 
resources and datas in a standard schema.</name>
        <nameStyle>22,5,0
106,5
</nameStyle>
    </language>
</elementInfo>
' #txt
oi0 f5 32 34 416 60 -201 -22 #rect
oi0 f6 clientId ae69ba01-79b7-4dce-9049-900f8f420907 #txt
oi0 f6 path /user/login #txt
oi0 f6 queryParams 'username="IvyPowerUser";
password=ivy.session.getAttribute("pet.secret") as String;
' #txt
oi0 f6 resultType java.lang.String #txt
oi0 f6 responseCode 'import org.apache.commons.lang.StringUtils;
String id = StringUtils.substringAfterLast(result, "session: ");
ivy.session.setAttribute("pet.session.id", id);' #txt
oi0 f6 clientErrorCode ivy:error:rest:client #txt
oi0 f6 statusErrorCode ivy:error:rest:client #txt
oi0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>    Login User
(query params)</name>
    </language>
</elementInfo>
' #txt
oi0 f6 136 234 112 44 -44 -15 #rect
oi0 f7 outLink login.ivp #txt
oi0 f7 inParamDecl '<> param;' #txt
oi0 f7 requestEnabled true #txt
oi0 f7 triggerEnabled false #txt
oi0 f7 callSignature login() #txt
oi0 f7 startName '8.1.2 open api query' #txt
oi0 f7 startCategory rest/openapi #txt
oi0 f7 startCustomFields 'cssIcon=fa fa-sign-in' #txt
oi0 f7 caseData businessCase.attach=true #txt
oi0 f7 showInStartList 1 #txt
oi0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login.ivp</name>
    </language>
</elementInfo>
' #txt
oi0 f7 @C|.responsibility Everybody #txt
oi0 f7 49 241 30 30 -25 17 #rect
oi0 f8 305 241 30 30 0 15 #rect
oi0 f10 248 256 305 256 #arcP
oi0 f9 79 256 136 256 #arcP
oi0 f11 outLink upload.ivp #txt
oi0 f11 inParamDecl '<> param;' #txt
oi0 f11 requestEnabled true #txt
oi0 f11 triggerEnabled false #txt
oi0 f11 callSignature upload() #txt
oi0 f11 startName '8.1.3 open api upload file' #txt
oi0 f11 startDescription 'Use any undocummented feature' #txt
oi0 f11 startCategory rest/openapi #txt
oi0 f11 startCustomFields 'cssIcon=fa fa-upload' #txt
oi0 f11 caseData businessCase.attach=true #txt
oi0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>upload.ivp</name>
    </language>
</elementInfo>
' #txt
oi0 f11 @C|.responsibility Everybody #txt
oi0 f11 49 337 30 30 -25 17 #rect
oi0 f13 465 337 30 30 0 15 #rect
oi0 f14 clientId ae69ba01-79b7-4dce-9049-900f8f420907 #txt
oi0 f14 path /pet/{petId}/uploadImage #txt
oi0 f14 queryParams 'additionalMetadata="Ivy is everywhere";
' #txt
oi0 f14 templateParams 'petId=in.pets.get(0).getId();
' #txt
oi0 f14 method JAX_RS #txt
oi0 f14 clientCode 'import com.axonivy.connectivity.rest.client.file.FileUpload;
import io.swagger.petstore3.client.Pet;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.client.Entity;

java.io.File logo = FileUpload.getIvyLogo();
Pet pet = client.request()
	.post(Entity.entity(logo, MediaType.APPLICATION_OCTET_STREAM_TYPE), Pet.class) as Pet;

ivy.log.info("Screenshots: "+pet.photoUrls);
out.pets.set(0, pet);' #txt
oi0 f14 bodyInputType RAW #txt
oi0 f14 bodyMediaType application/octet-stream #txt
oi0 f14 resultType io.swagger.petstore3.client.ApiResponse #txt
oi0 f14 clientErrorCode ivy:error:rest:client #txt
oi0 f14 statusErrorCode ivy:error:rest:client #txt
oi0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>     Upload File
(programmatic)</name>
        <desc>Show that the presence of a strictly defined service descriptor is not a blocker to use advanced JAX-RS Api to interact with the remote service.
This is usefull during prototyping or to overcome technical boundaries caused by weakly defined services.</desc>
    </language>
</elementInfo>
' #txt
oi0 f14 296 328 112 48 -44 -15 #rect
oi0 f16 408 352 465 352 #arcP
oi0 f12 clientId ae69ba01-79b7-4dce-9049-900f8f420907 #txt
oi0 f12 path /pet/findByStatus #txt
oi0 f12 queryParams 'status="available";
' #txt
oi0 f12 resultType java.util.List<io.swagger.petstore3.client.Pet> #txt
oi0 f12 responseMapping 'out.pets=result;
' #txt
oi0 f12 clientErrorCode ivy:error:rest:client #txt
oi0 f12 statusErrorCode ivy:error:rest:client #txt
oi0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read Pets</name>
    </language>
</elementInfo>
' #txt
oi0 f12 136 330 112 44 -30 -7 #rect
oi0 f17 79 352 136 352 #arcP
oi0 f15 248 352 296 352 #arcP
oi0 f4 79 160 136 160 #arcP
oi0 f0 outLink listPets.ivp #txt
oi0 f0 inParamDecl '<> param;' #txt
oi0 f0 requestEnabled true #txt
oi0 f0 triggerEnabled false #txt
oi0 f0 callSignature listPets() #txt
oi0 f0 startName '8.1.1 open api read collection' #txt
oi0 f0 startCategory rest/openapi #txt
oi0 f0 startCustomFields 'cssIcon=fa fa-paw' #txt
oi0 f0 caseData businessCase.attach=true #txt
oi0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>listPets.ivp</name>
    </language>
</elementInfo>
' #txt
oi0 f0 @C|.responsibility Everybody #txt
oi0 f0 49 145 30 30 -25 17 #rect
>Proto oi0 .type com.axonivy.connectivity.rest.OpenApiData #txt
>Proto oi0 .processKind NORMAL #txt
>Proto oi0 0 0 32 24 18 0 #rect
>Proto oi0 @|BIcon #fIcon
oi0 f0 mainOut f4 tail #connect
oi0 f4 head f3 mainIn #connect
oi0 f3 mainOut f2 tail #connect
oi0 f2 head f1 mainIn #connect
oi0 f6 mainOut f10 tail #connect
oi0 f10 head f8 mainIn #connect
oi0 f7 mainOut f9 tail #connect
oi0 f9 head f6 mainIn #connect
oi0 f14 mainOut f16 tail #connect
oi0 f16 head f13 mainIn #connect
oi0 f11 mainOut f17 tail #connect
oi0 f17 head f12 mainIn #connect
oi0 f12 mainOut f15 tail #connect
oi0 f15 head f14 mainIn #connect
