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
Fs0 @RichDialogProcessStart f3 '' #zField
Fs0 @RichDialogEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @RichDialogProcessEnd f14 '' #zField
Fs0 @RichDialogProcessStart f12 '' #zField
Fs0 @RichDialogProcessEnd f13 '' #zField
Fs0 @RestClientCall f20 '' #zField
Fs0 @PushWFArc f24 '' #zField
Fs0 @InfoButton f15 '' #zField
Fs0 @RestClientCall f23 '' #zField
Fs0 @RichDialogProcessStart f26 '' #zField
Fs0 @PushWFArc f21 '' #zField
Fs0 @RestClientCall f19 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogMethodStart f6 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @RichDialogMethodStart f11 '' #zField
Fs0 @RichDialogProcessEnd f18 '' #zField
Fs0 @PushWFArc f16 '' #zField
Fs0 @PushWFArc f10 '' #zField
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
Fs0 f1 307 51 26 26 0 12 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
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
Fs0 f3 83 371 26 26 -16 12 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f4 guid 169B3B8EB465835E #txt
Fs0 f4 211 371 26 26 0 12 #rect
Fs0 f4 @|RichDialogEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 109 384 211 384 #arcP
Fs0 f14 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f14 307 307 26 26 0 12 #rect
Fs0 f14 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 guid 169BA65449CB5C7A #txt
Fs0 f12 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f12 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f12 actionTable 'out=in;
' #txt
Fs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadIvyScript</name>
    </language>
</elementInfo>
' #txt
Fs0 f12 83 115 26 26 -44 13 #rect
Fs0 f12 @|RichDialogProcessStartIcon #fIcon
Fs0 f13 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f13 307 155 26 26 0 12 #rect
Fs0 f13 @|RichDialogProcessEndIcon #fIcon
Fs0 f20 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
Fs0 f20 method JAX_RS #txt
Fs0 f20 bodyInputType FORM #txt
Fs0 f20 bodyMediaType multipart/form-data #txt
Fs0 f20 clientCode 'import org.apache.commons.io.IOUtils;
import java.io.FileOutputStream;
import com.axonivy.connectivity.rest.client.file.FileUpload;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import org.eclipse.core.resources.IFile;
import java.nio.file.Files;
import org.apache.commons.lang.StringUtils;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IFolder;
import ch.ivyteam.ivy.environment.Ivy;

import org.glassfish.jersey.media.multipart.Boundary;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

java.io.File file;

IFile resource = FileUpload.getHdResource("com.axonivy.connectivity.rest.FileUpload","resources/"+in.resourceName);
file = FileUpload.toTempIoFile(resource);

FormDataMultiPart multipart;
FormDataMultiPart formDataMultiPart = new FormDataMultiPart();

MediaType contentType = MediaType.MULTIPART_FORM_DATA_TYPE;
    contentType = Boundary.addBoundary(contentType);

FileDataBodyPart filePart = new FileDataBodyPart("file", file);
multipart = formDataMultiPart.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart) as FormDataMultiPart;

Response jaxrsresponse = client.request().header("X-Requested-By", "ivy")
 .header("MIME-Version", "1.0")
 .put(Entity.entity(multipart, contentType));

in.downloadName = jaxrsresponse.getHeaderString("uploadedFile");
in.listFile.add(jaxrsresponse.getHeaderString("uploadedFile"));

' #txt
Fs0 f20 clientErrorCode ivy:error:rest:client #txt
Fs0 f20 statusErrorCode ivy:error:rest:client #txt
Fs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>    PUT File
with ivy Script</name>
    </language>
</elementInfo>
' #txt
Fs0 f20 144 106 128 44 -41 -15 #rect
Fs0 f20 @|RestClientCallIcon #fIcon
Fs0 f24 expr out #txt
Fs0 f24 109 128 144 128 #arcP
Fs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>The files are transfered as MediaType.MULTIPART_FORM_DATA into Response.</name>
    </language>
</elementInfo>
' #txt
Fs0 f15 344 153 496 30 -241 -7 #rect
Fs0 f15 @|IBIcon #fIcon
Fs0 f23 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
Fs0 f23 method JAX_RS #txt
Fs0 f23 bodyInputType FORM #txt
Fs0 f23 bodyMediaType multipart/form-data #txt
Fs0 f23 clientCode 'import ch.ivyteam.ivy.scripting.objects.util.IvyDefaultValues;
import ch.ivyteam.ivy.cm.IContentObject;
import com.axonivy.connectivity.rest.client.file.FileUpload;
import org.eclipse.core.resources.IFile;
import javax.ws.rs.core.Response;

IFile resource = FileUpload.getHdResource("com.axonivy.connectivity.rest.FileUpload", 
		"resources/"+in.resourceName);
Response response = FileUpload.upload(client, resource);
in.downloadName = response.getHeaderString("uploadedFile");
in.listFile.add(in.downloadName);



' #txt
Fs0 f23 clientErrorCode ivy:error:rest:client #txt
Fs0 f23 statusErrorCode ivy:error:rest:client #txt
Fs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PUT File 
with Java</name>
    </language>
</elementInfo>
' #txt
Fs0 f23 152 170 112 44 -27 -15 #rect
Fs0 f23 @|RestClientCallIcon #fIcon
Fs0 f26 guid 169DD5240BB13E40 #txt
Fs0 f26 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f26 actionDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f26 actionTable 'out=in;
' #txt
Fs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadJava</name>
    </language>
</elementInfo>
' #txt
Fs0 f26 83 179 26 26 -35 17 #rect
Fs0 f26 @|RichDialogProcessStartIcon #fIcon
Fs0 f21 264 320 307 320 #arcP
Fs0 f19 clientId 4d9a8b09-9968-4476-a8ac-b71a94d25e94 #txt
Fs0 f19 path /{in.downloadName} #txt
Fs0 f19 templateParams 'in.downloadName=in.downloadName;
' #txt
Fs0 f19 headers 'Accept=application/octet-stream;
' #txt
Fs0 f19 method GET #txt
Fs0 f19 resultType java.io.InputStream #txt
Fs0 f19 responseCode 'import ch.ivyteam.ivy.process.extension.beans.Wait;
import org.primefaces.model.DefaultStreamedContent;

out.fileDownload = new DefaultStreamedContent(result, "text/plain", in.downloadName);


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
Fs0 f19 152 300 112 40 -24 -7 #rect
Fs0 f19 @|RestClientCallIcon #fIcon
Fs0 f7 expr out #txt
Fs0 f7 109 192 152 192 #arcP
Fs0 f2 expr out #txt
Fs0 f2 109 64 307 64 #arcP
Fs0 f6 guid 169FD080F277361F #txt
Fs0 f6 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f6 method download(String) #txt
Fs0 f6 disableUIEvents false #txt
Fs0 f6 inParameterDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f6 inParameterMapAction 'out.downloadName=param.fileName;
' #txt
Fs0 f6 outParameterDecl '<> result;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>download(String)</name>
    </language>
</elementInfo>
' #txt
Fs0 f6 83 307 26 26 -53 15 #rect
Fs0 f6 @|RichDialogMethodStartIcon #fIcon
Fs0 f8 264 192 307 170 #arcP
Fs0 f8 0 0.5115946062226181 0 0 #arcLabel
Fs0 f9 270 150 307 163 #arcP
Fs0 f11 guid 16AD5002D41CB6BC #txt
Fs0 f11 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f11 method addJsToList(String) #txt
Fs0 f11 disableUIEvents false #txt
Fs0 f11 inParameterDecl 'com.axonivy.connectivity.rest.FileUpload.FileUploadData out;
' #txt
Fs0 f11 inParameterMapAction 'out.fileName=param.fileName;
' #txt
Fs0 f11 inActionCode 'import com.axonivy.connectivity.rest.provider.FileUploadService;
import java.util.Arrays;
import org.apache.commons.io.FilenameUtils;
String extension = FilenameUtils.getExtension(out.fileName);
List<String> allowed = FileUploadService.whitelistedExtensions;
if(allowed.contains(extension))
{
out.listFile.add(out.fileName);
}' #txt
Fs0 f11 outParameterDecl '<java.lang.String result> result;
' #txt
Fs0 f11 outParameterMapAction 'result.result=in.fileName;
' #txt
Fs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addJsToList(String)</name>
    </language>
</elementInfo>
' #txt
Fs0 f11 84 244 24 24 -34 16 #rect
Fs0 f11 @|RichDialogMethodStartIcon #fIcon
Fs0 f18 type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
Fs0 f18 307 243 26 26 0 12 #rect
Fs0 f18 @|RichDialogProcessEndIcon #fIcon
Fs0 f16 expr out #txt
Fs0 f16 108 256 307 256 #arcP
Fs0 f10 expr out #txt
Fs0 f10 109 320 152 320 #arcP
>Proto Fs0 .type com.axonivy.connectivity.rest.FileUpload.FileUploadData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f19 mainOut f21 tail #connect
Fs0 f21 head f14 mainIn #connect
Fs0 f12 mainOut f24 tail #connect
Fs0 f24 head f20 mainIn #connect
Fs0 f26 mainOut f7 tail #connect
Fs0 f7 head f23 mainIn #connect
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f23 mainOut f8 tail #connect
Fs0 f8 head f13 mainIn #connect
Fs0 f20 mainOut f9 tail #connect
Fs0 f9 head f13 mainIn #connect
Fs0 f11 mainOut f16 tail #connect
Fs0 f16 head f18 mainIn #connect
Fs0 f6 mainOut f10 tail #connect
Fs0 f10 head f19 mainIn #connect
