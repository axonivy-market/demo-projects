[Ivy]
1694850C38454AB6 3.23 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadDialogProcess Big #zClass
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
Fs0 @RichDialogProcessStart f7 '' #zField
Fs0 @RichDialogProcessEnd f9 '' #zField
Fs0 @RestClientCall f8 '' #zField
Fs0 @GridStep f13 '' #zField
Fs0 @PushWFArc f10 '' #zField
Fs0 @PushWFArc f11 '' #zField
>Proto Fs0 Fs0 FileUploadDialogProcess #zField
Fs0 f0 guid 1694850C396749B0 #txt
Fs0 f0 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f0 method start(com.axonivy.connectivity.Data) #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'com.axonivy.connectivity.Data out;
' #txt
Fs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Fs0 f0 outParameterDecl '<com.axonivy.connectivity.Data data> result;
' #txt
Fs0 f0 outParameterMapAction 'result.data=in.data;
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
Fs0 f1 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f1 211 51 26 26 0 12 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 109 64 211 64 #arcP
Fs0 f3 guid 1694850C3ACDF4B8 #txt
Fs0 f3 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f3 actionDecl 'com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData out;
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
Fs0 f3 83 251 26 26 -16 12 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f4 guid 1694850C3AD837BA #txt
Fs0 f4 211 251 26 26 0 12 #rect
Fs0 f4 @|RichDialogEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 109 264 211 264 #arcP
Fs0 f7 guid 16948E0A1D2BEAA1 #txt
Fs0 f7 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f7 actionDecl 'com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData out;
' #txt
Fs0 f7 actionTable 'out=in;
' #txt
Fs0 f7 actionCode ivy.log.fatal(in.file); #txt
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadFile</name>
    </language>
</elementInfo>
' #txt
Fs0 f7 83 147 26 26 -29 13 #rect
Fs0 f7 @|RichDialogProcessStartIcon #fIcon
Fs0 f9 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f9 363 147 26 26 0 12 #rect
Fs0 f9 @|RichDialogProcessEndIcon #fIcon
Fs0 f8 clientId 4c6a6601-805b-4225-86f4-9c2d99ee9a8b #txt
Fs0 f8 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
Fs0 f8 method JAX_RS #txt
Fs0 f8 bodyInputType FORM #txt
Fs0 f8 bodyForm 'file=in.file;
' #txt
Fs0 f8 clientCode 'import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import javax.ws.rs.core.*;
import org.glassfish.jersey.filter.LoggingFilter;
import org.glassfish.jersey.media.multipart.*;
import javax.ws.rs.client.*;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;


client.register(JacksonJsonProvider.class);
client.register(MultiPartFeature.class);
client.register(new LoggingFilter());
client.request().put(Entity.entity(in.file, MediaType.MULTIPART_FORM_DATA));
ivy.log.fatal(client);
ivy.log.fatal(in.file);
' #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>REST caller
</name>
    </language>
</elementInfo>
' #txt
Fs0 f8 168 138 112 44 -34 -15 #rect
Fs0 f8 @|RestClientCallIcon #fIcon
Fs0 f13 actionDecl 'com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData out;
' #txt
Fs0 f13 actionTable 'out=in;
' #txt
Fs0 f13 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f13 336 346 112 44 0 -7 #rect
Fs0 f13 @|StepIcon #fIcon
Fs0 f10 expr out #txt
Fs0 f10 109 160 168 160 #arcP
Fs0 f11 280 160 363 160 #arcP
>Proto Fs0 .type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f7 mainOut f10 tail #connect
Fs0 f10 head f8 mainIn #connect
Fs0 f8 mainOut f11 tail #connect
Fs0 f11 head f9 mainIn #connect
