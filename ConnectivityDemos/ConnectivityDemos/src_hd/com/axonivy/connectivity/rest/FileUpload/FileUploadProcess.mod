[Ivy]
169B3B8EB21D10D8 3.26 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStart f3 '' #zField
Fs0 @RichDialogEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @RichDialogProcessStart f6 '' #zField
Fs0 @GridStep f7 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @RichDialogProcessEnd f9 '' #zField
Fs0 @RichDialogProcessEnd f14 '' #zField
Fs0 @RestClientCall f16 '' #zField
Fs0 @PushWFArc f17 '' #zField
Fs0 @PushWFArc f10 '' #zField
Fs0 @RichDialogProcessStart f11 '' #zField
Fs0 @RichDialogProcessStart f12 '' #zField
Fs0 @RichDialogProcessEnd f13 '' #zField
Fs0 @RestClientCall f19 '' #zField
Fs0 @RestClientCall f20 '' #zField
Fs0 @PushWFArc f22 '' #zField
Fs0 @PushWFArc f21 '' #zField
Fs0 @PushWFArc f24 '' #zField
Fs0 @PushWFArc f25 '' #zField
>Proto Fs0 Fs0 FileUploadProcess #zField
Fs0 f0 guid 169B3B8EB3CCFDE2 #txt
Fs0 f0 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f0 method start(com.axonivy.connectivity.Data) #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f0 outParameterDecl '<com.axonivy.connectivity.Data data> result;
' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Fs0 f0 83 51 26 26 -35 15 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f1 211 51 26 26 0 12 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 109 64 211 64 #arcP
Fs0 f3 guid 169B3B8EB4542063 #txt
Fs0 f3 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f3 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Fs0 f3 83 387 26 26 -16 12 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f4 guid 169B3B8EB465835E #txt
Fs0 f4 211 387 26 26 0 12 #rect
Fs0 f4 @|RichDialogEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 109 400 211 400 #arcP
Fs0 f6 guid 169B3E26B2D63078 #txt
Fs0 f6 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f6 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showUploadedFiles</name>
    </language>
</elementInfo>
' #txt
Fs0 f6 83 307 26 26 -52 15 #rect
Fs0 f6 @|RichDialogProcessStartIcon #fIcon
Fs0 f7 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f7 actionTable 'out=in;
' #txt
Fs0 f7 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f7 152 298 112 44 0 -7 #rect
Fs0 f7 @|StepIcon #fIcon
Fs0 f8 expr out #txt
Fs0 f8 109 320 152 320 #arcP
Fs0 f9 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f9 499 307 26 26 0 12 #rect
Fs0 f9 @|RichDialogProcessEndIcon #fIcon
Fs0 f14 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f14 315 227 26 26 0 12 #rect
Fs0 f14 @|RichDialogProcessEndIcon #fIcon
Fs0 f16 328 298 112 44 0 -7 #rect
Fs0 f16 @|RestClientCallIcon #fIcon
Fs0 f17 expr out #txt
Fs0 f17 264 320 328 320 #arcP
Fs0 f10 440 320 499 320 #arcP
Fs0 f11 guid 169B4F370251BEAE #txt
Fs0 f11 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f11 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f11 actionTable 'out=in;
' #txt
Fs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>downloadFile</name>
    </language>
</elementInfo>
' #txt
Fs0 f11 83 227 26 26 -37 15 #rect
Fs0 f11 @|RichDialogProcessStartIcon #fIcon
Fs0 f12 guid 169BA65449CB5C7A #txt
Fs0 f12 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f12 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f12 actionTable 'out=in;
' #txt
Fs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadFile</name>
    </language>
</elementInfo>
' #txt
Fs0 f12 83 147 26 26 -27 14 #rect
Fs0 f12 @|RichDialogProcessStartIcon #fIcon
Fs0 f13 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f13 315 147 26 26 0 12 #rect
Fs0 f13 @|RichDialogProcessEndIcon #fIcon
Fs0 f19 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
Fs0 f19 path /{in.fileName} #txt
Fs0 f19 templateParams 'in.fileName=in.fileName;
' #txt
Fs0 f19 headers 'Accept=application/octet-stream;
' #txt
Fs0 f19 method GET #txt
Fs0 f19 resultType java.io.InputStream #txt
Fs0 f19 responseCode 'import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import javax.faces.bean.ManagedBean;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;


out.fileDownload = new DefaultStreamedContent(result, "text/txt", in.fileName);


' #txt
Fs0 f19 clientErrorCode ivy:error:rest:client #txt
Fs0 f19 statusErrorCode ivy:error:rest:client #txt
Fs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>GET File</name>
    </language>
</elementInfo>
' #txt
Fs0 f19 152 220 112 40 -24 -7 #rect
Fs0 f19 @|RestClientCallIcon #fIcon
Fs0 f20 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
Fs0 f20 method JAX_RS #txt
Fs0 f20 bodyInputType FORM #txt
Fs0 f20 bodyMediaType multipart/form-data #txt
Fs0 f20 clientCode 'import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import java.io.IOException;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
java.io.File file = in.file.getJavaFile();

  FormDataMultiPart multipart;
  FormDataMultiPart formDataMultiPart = new FormDataMultiPart();
  FileDataBodyPart filePart = new FileDataBodyPart("file", file);
  multipart = formDataMultiPart.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart) as FormDataMultiPart;
	Response jaxrsresponse = client.request().header("X-Requested-By", "ivy")
   .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
    
  ivy.log.info(jaxrsresponse);
	//FileUpload.upload(client, file);

	out.fileName = file.getName();' #txt
Fs0 f20 clientErrorCode ivy:error:rest:client #txt
Fs0 f20 statusErrorCode ivy:error:rest:client #txt
Fs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PUT File</name>
    </language>
</elementInfo>
' #txt
Fs0 f20 152 138 112 44 -24 -7 #rect
Fs0 f20 @|RestClientCallIcon #fIcon
Fs0 f22 expr out #txt
Fs0 f22 109 240 152 240 #arcP
Fs0 f21 264 240 315 240 #arcP
Fs0 f24 expr out #txt
Fs0 f24 109 160 152 160 #arcP
Fs0 f25 264 160 315 160 #arcP
>Proto Fs0 .type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f6 mainOut f8 tail #connect
Fs0 f8 head f7 mainIn #connect
Fs0 f7 mainOut f17 tail #connect
Fs0 f17 head f16 mainIn #connect
Fs0 f16 mainOut f10 tail #connect
Fs0 f10 head f9 mainIn #connect
Fs0 f11 mainOut f22 tail #connect
Fs0 f22 head f19 mainIn #connect
Fs0 f19 mainOut f21 tail #connect
Fs0 f21 head f14 mainIn #connect
Fs0 f12 mainOut f24 tail #connect
Fs0 f24 head f20 mainIn #connect
Fs0 f20 mainOut f25 tail #connect
Fs0 f25 head f13 mainIn #connect
