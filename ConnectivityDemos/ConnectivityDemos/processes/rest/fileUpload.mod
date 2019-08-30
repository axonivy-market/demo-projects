[Ivy]
169B3B7F5EF38D8F 3.28 #module
>Proto >Proto Collection #zClass
fd0 fileUpload Big #zClass
fd0 B #cInfo
fd0 #process
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
>Proto fd0 fd0 fileUpload #zField
fd0 f0 outLink fileClient.ivp #txt
fd0 f0 inParamDecl '<> param;' #txt
fd0 f0 requestEnabled true #txt
fd0 f0 triggerEnabled false #txt
fd0 f0 callSignature fileClient() #txt
fd0 f0 persist false #txt
fd0 f0 startName '6.4.2 Upload file UI' #txt
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
fd0 f0 @|StartRequestIcon #fIcon
fd0 f1 337 105 30 30 0 15 #rect
fd0 f1 @|EndIcon #fIcon
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
fd0 f3 @|UserDialogIcon #fIcon
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
fd0 f5 @|IBIcon #fIcon
fd0 f6 outLink callFileUpload.ivp #txt
fd0 f6 inParamDecl '<> param;' #txt
fd0 f6 requestEnabled true #txt
fd0 f6 triggerEnabled false #txt
fd0 f6 callSignature callFileUpload() #txt
fd0 f6 persist false #txt
fd0 f6 startName '6.4.1 Upload file simple ' #txt
fd0 f6 caseData businessCase.attach=true #txt
fd0 f6 showInStartList 1 #txt
fd0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callFileUpload.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f6 @C|.responsibility Everybody #txt
fd0 f6 81 209 30 30 -38 17 #rect
fd0 f6 @|StartRequestIcon #fIcon
fd0 f7 337 209 30 30 0 15 #rect
fd0 f7 @|EndIcon #fIcon
fd0 f8 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
fd0 f8 method JAX_RS #txt
fd0 f8 clientCode 'import com.axonivy.connectivity.rest.client.file.FileUpload;
import javax.ws.rs.core.Response;
import java.net.URL;
import java.nio.file.Files;

java.io.File tempFile = Files.createTempFile("test", ".txt").toFile();

Response response = FileUpload.upload(client, tempFile);

ivy.log.info(response.readEntity(String.class));




' #txt
fd0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Upload File</name>
    </language>
</elementInfo>
' #txt
fd0 f8 168 202 112 44 -34 -7 #rect
fd0 f8 @|RestClientCallIcon #fIcon
fd0 f9 expr out #txt
fd0 f9 111 224 168 224 #arcP
fd0 f10 280 224 337 224 #arcP
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
