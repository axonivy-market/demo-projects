[Ivy]
169B3B7F5EF38D8F 9.4.1 #module
>Proto >Proto Collection #zClass
fd0 fileUpload Big #zClass
fd0 B #cInfo
fd0 #process
fd0 @TextInP .colors .colors #zField
fd0 @TextInP color color #zField
fd0 @TextInP .type .type #zField
fd0 @TextInP .processKind .processKind #zField
fd0 @AnnotationInP-0n ai ai #zField
fd0 @MessageFlowInP-0n messageIn messageIn #zField
fd0 @MessageFlowOutP-0n messageOut messageOut #zField
fd0 @TextInP .xml .xml #zField
fd0 @TextInP .responsibility .responsibility #zField
fd0 @StartRequest f0 '' #zField
fd0 @EndTask f1 '' #zField
fd0 @UserDialog f3 '' #zField
fd0 @PushWFArc f4 '' #zField
fd0 @PushWFArc f2 '' #zField
fd0 @InfoButton f5 '' #zField
fd0 @StartRequest f6 '' #zField
fd0 @EndTask f7 '' #zField
fd0 @RestClientCall f8 '' #zField
fd0 @PushWFArc f9 '' #zField
fd0 @PushWFArc f10 '' #zField
fd0 @StartRequest f16 '' #zField
fd0 @RestClientCall f17 '' #zField
fd0 @EndTask f18 '' #zField
fd0 @PushWFArc f19 '' #zField
fd0 @RestClientCall f21 '' #zField
fd0 @PushWFArc f23 '' #zField
fd0 @PushWFArc f20 '' #zField
fd0 @EndTask f11 '' #zField
fd0 @RestClientCall f12 '' #zField
fd0 @StartRequest f13 '' #zField
fd0 @PushWFArc f14 '' #zField
fd0 @PushWFArc f15 '' #zField
>Proto fd0 fd0 fileUpload #zField
fd0 f0 outLink fileClient.ivp #txt
fd0 f0 inParamDecl '<> param;' #txt
fd0 f0 requestEnabled true #txt
fd0 f0 triggerEnabled false #txt
fd0 f0 callSignature fileClient() #txt
fd0 f0 persist false #txt
fd0 f0 startName '6.4.0 Upload file UI' #txt
fd0 f0 startCategory rest/mapping/file #txt
fd0 f0 startCustomFields 'cssIcon=fa fa-upload' #txt
fd0 f0 caseData businessCase.attach=true #txt
fd0 f0 showInStartList 1 #txt
fd0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileClient.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f0 @C|.responsibility Everybody #txt
fd0 f0 81 105 30 30 -25 17 #rect
fd0 f1 337 105 30 30 0 15 #rect
fd0 f3 dialogId com.axonivy.connectivity.rest.FileUpload #txt
fd0 f3 startMethod start(com.axonivy.connectivity.Data) #txt
fd0 f3 requestActionDecl '<com.axonivy.connectivity.Data data> param;' #txt
fd0 f3 responseActionDecl 'com.axonivy.connectivity.Data out;
' #txt
fd0 f3 responseMappingAction 'out=in;
' #txt
fd0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>File Upload Form</name>
    </language>
</elementInfo>
' #txt
fd0 f3 168 98 112 44 -52 -7 #rect
fd0 f4 expr out #txt
fd0 f4 111 120 168 120 #arcP
fd0 f2 expr out #txt
fd0 f2 280 120 337 120 #arcP
fd0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This Demo uses a Rest Service Call to upload a File</name>
    </language>
</elementInfo>
' #txt
fd0 f5 56 17 336 30 -159 -7 #rect
fd0 f6 outLink fileMultipart.ivp #txt
fd0 f6 inParamDecl '<> param;' #txt
fd0 f6 actionCode 'import com.axonivy.connectivity.rest.client.file.FileUpload;
out.file = FileUpload.getIvyLogo();' #txt
fd0 f6 requestEnabled true #txt
fd0 f6 triggerEnabled false #txt
fd0 f6 callSignature fileMultipart() #txt
fd0 f6 persist false #txt
fd0 f6 startName '6.4.1 Upload file multipart' #txt
fd0 f6 startCategory rest/mapping/file #txt
fd0 f6 startCustomFields 'cssIcon=fa fa-upload' #txt
fd0 f6 caseData businessCase.attach=true #txt
fd0 f6 showInStartList 1 #txt
fd0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileMultipart.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f6 @C|.responsibility Everybody #txt
fd0 f6 81 305 30 30 -38 17 #rect
fd0 f7 337 305 30 30 0 15 #rect
fd0 f8 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
fd0 f8 path /file #txt
fd0 f8 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
fd0 f8 method PUT #txt
fd0 f8 clientCode '



' #txt
fd0 f8 bodyInputType FORM #txt
fd0 f8 bodyMediaType multipart/form-data #txt
fd0 f8 bodyForm 'file=in.file;
description=;
ownerId=;
file=com.axonivy.connectivity.rest.client.file.FileUpload.getIvyLogo();
' #txt
fd0 f8 bodyObjectType ivy.local.client.Body3 #txt
fd0 f8 responseCode 'String result = response.readEntity(String.class) as String;
ivy.log.info(result);
out.result = result;' #txt
fd0 f8 clientErrorCode ivy:error:rest:client #txt
fd0 f8 statusErrorCode ivy:error:rest:client #txt
fd0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Upload File
(multi/part)</name>
    </language>
</elementInfo>
' #txt
fd0 f8 168 298 112 44 -35 -15 #rect
fd0 f9 expr out #txt
fd0 f9 111 320 168 320 #arcP
fd0 f10 280 320 337 320 #arcP
fd0 f16 outLink upAndDown.ivp #txt
fd0 f16 inParamDecl '<> param;' #txt
fd0 f16 actionCode 'import com.axonivy.connectivity.rest.client.file.FileUpload;
out.file = FileUpload.getIvyLogo();' #txt
fd0 f16 requestEnabled true #txt
fd0 f16 triggerEnabled false #txt
fd0 f16 callSignature upAndDown() #txt
fd0 f16 startName '6.4.2 Upload and Download file octet-stream' #txt
fd0 f16 startCategory rest/mapping/file #txt
fd0 f16 startCustomFields 'cssIcon=fa fa-upload' #txt
fd0 f16 caseData businessCase.attach=true #txt
fd0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>upAndDown.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f16 @C|.responsibility Everybody #txt
fd0 f16 81 209 30 30 -42 17 #rect
fd0 f17 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
fd0 f17 path /file/{fileName} #txt
fd0 f17 templateParams 'fileName=in.file.getName();
' #txt
fd0 f17 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
fd0 f17 method POST #txt
fd0 f17 clientCode 'import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.client.Entity;

Response response = client.request()
	.header("X-Requested-By", "ivy")
	.post(Entity.entity(in.file, MediaType.APPLICATION_OCTET_STREAM_TYPE));

String uploaded = response.getHeaderString("uploadedFile");
ivy.session.setAttribute("lastUpload", uploaded);

ivy.log.info("Result: "+response.readEntity(String.class));
' #txt
fd0 f17 bodyInputType ENTITY #txt
fd0 f17 bodyMediaType application/octet-stream #txt
fd0 f17 bodyObjectType java.io.File #txt
fd0 f17 bodyObjectMapping 'param=in.file;
' #txt
fd0 f17 resultType '[B' #txt
fd0 f17 responseMapping 'out.result=response.getHeaderString("uploadedFile");
' #txt
fd0 f17 clientErrorCode ivy:error:rest:client #txt
fd0 f17 statusErrorCode ivy:error:rest:client #txt
fd0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>  Upload File
(octet stream)</name>
    </language>
</elementInfo>
' #txt
fd0 f17 168 200 112 48 -42 -15 #rect
fd0 f18 497 209 30 30 0 15 #rect
fd0 f19 111 224 168 224 #arcP
fd0 f21 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
fd0 f21 path /file/{fileName} #txt
fd0 f21 templateParams 'fileName=in.result;
' #txt
fd0 f21 resultType java.io.File #txt
fd0 f21 responseCode 'ivy.log.info("got file: "+result);' #txt
fd0 f21 clientErrorCode ivy:error:rest:client #txt
fd0 f21 statusErrorCode ivy:error:rest:client #txt
fd0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Download File
(octet stream)</name>
    </language>
</elementInfo>
' #txt
fd0 f21 320 202 128 44 -42 -15 #rect
fd0 f23 280 224 320 224 #arcP
fd0 f20 448 224 497 224 #arcP
fd0 f11 337 401 30 30 0 15 #rect
fd0 f12 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
fd0 f12 path /file/multi #txt
fd0 f12 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
fd0 f12 method PUT #txt
fd0 f12 clientCode '



' #txt
fd0 f12 bodyInputType FORM #txt
fd0 f12 bodyMediaType multipart/form-data #txt
fd0 f12 bodyForm 'files=[in.file, com.axonivy.connectivity.rest.client.file.FileUpload.getIvyLogo()];
description="some logos";
ownerId=-1;
' #txt
fd0 f12 bodyObjectType ivy.local.client.Body3 #txt
fd0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Upload Files
(multi/part)</name>
    </language>
</elementInfo>
' #txt
fd0 f12 168 394 112 44 -38 -15 #rect
fd0 f13 outLink multipleFiles.ivp #txt
fd0 f13 inParamDecl '<> param;' #txt
fd0 f13 actionCode 'import com.axonivy.connectivity.rest.client.file.FileUpload;
out.file = FileUpload.getIvyLogo();' #txt
fd0 f13 requestEnabled true #txt
fd0 f13 triggerEnabled false #txt
fd0 f13 callSignature multipleFiles() #txt
fd0 f13 persist false #txt
fd0 f13 startName '6.4.2 Upload many files at once' #txt
fd0 f13 startCategory rest/mapping/file #txt
fd0 f13 startCustomFields 'cssIcon=fa fa-upload' #txt
fd0 f13 caseData businessCase.attach=true #txt
fd0 f13 showInStartList 1 #txt
fd0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>multipleFiles.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f13 @C|.responsibility Everybody #txt
fd0 f13 81 401 30 30 -38 17 #rect
fd0 f14 280 416 337 416 #arcP
fd0 f15 expr out #txt
fd0 f15 111 416 168 416 #arcP
>Proto fd0 .type com.axonivy.connectivity.Data #txt
>Proto fd0 .processKind NORMAL #txt
>Proto fd0 0 0 32 24 18 0 #rect
>Proto fd0 @|BIcon #fIcon
fd0 f0 mainOut f4 tail #connect
fd0 f4 head f3 mainIn #connect
fd0 f3 mainOut f2 tail #connect
fd0 f2 head f1 mainIn #connect
fd0 f6 mainOut f9 tail #connect
fd0 f9 head f8 mainIn #connect
fd0 f8 mainOut f10 tail #connect
fd0 f10 head f7 mainIn #connect
fd0 f16 mainOut f19 tail #connect
fd0 f19 head f17 mainIn #connect
fd0 f17 mainOut f23 tail #connect
fd0 f23 head f21 mainIn #connect
fd0 f21 mainOut f20 tail #connect
fd0 f20 head f18 mainIn #connect
fd0 f13 mainOut f15 tail #connect
fd0 f15 head f12 mainIn #connect
fd0 f12 mainOut f14 tail #connect
fd0 f14 head f11 mainIn #connect
