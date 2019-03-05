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
Fs0 @RestClientCall f6 '' #zField
Fs0 @RichDialogProcessStart f7 '' #zField
Fs0 @RichDialogProcessEnd f9 '' #zField
Fs0 @RestClientCall f8 '' #zField
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
Fs0 f3 83 147 26 26 -16 12 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f4 guid 1694850C3AD837BA #txt
Fs0 f4 211 147 26 26 0 12 #rect
Fs0 f4 @|RichDialogEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 109 160 211 160 #arcP
Fs0 f6 clientId 4c6a6601-805b-4225-86f4-9c2d99ee9a8b #txt
Fs0 f6 headers 'X-Requested-By="ivy";
Accept=*/*;
' #txt
Fs0 f6 method PUT #txt
Fs0 f6 bodyInputType FORM #txt
Fs0 f6 bodyMediaType application/x-www-form-urlencoded #txt
Fs0 f6 bodyForm 'file=in.file.toString();
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>REST upload file</name>
    </language>
</elementInfo>
' #txt
Fs0 f6 296 186 112 44 -50 -7 #rect
Fs0 f6 @|RestClientCallIcon #fIcon
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
Fs0 f7 91 259 26 26 -52 15 #rect
Fs0 f7 @|RichDialogProcessStartIcon #fIcon
Fs0 f9 type com.axonivy.connectivity.rest.FileUploadDialog.FileUploadDialogData #txt
Fs0 f9 435 259 26 26 0 12 #rect
Fs0 f9 @|RichDialogProcessEndIcon #fIcon
Fs0 f8 clientId 4c6a6601-805b-4225-86f4-9c2d99ee9a8b #txt
Fs0 f8 headers 'Accept=*/*;
X-Requested-By="ivy";
' #txt
Fs0 f8 method PUT #txt
Fs0 f8 bodyInputType FORM #txt
Fs0 f8 bodyForm 'file="";
' #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>test</name>
    </language>
</elementInfo>
' #txt
Fs0 f8 216 250 112 44 -12 -7 #rect
Fs0 f8 @|RestClientCallIcon #fIcon
Fs0 f10 expr out #txt
Fs0 f10 117 272 216 272 #arcP
Fs0 f11 328 272 435 272 #arcP
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
