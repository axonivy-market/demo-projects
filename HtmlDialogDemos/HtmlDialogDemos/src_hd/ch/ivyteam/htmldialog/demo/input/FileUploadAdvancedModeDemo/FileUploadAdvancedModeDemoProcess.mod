[Ivy]
13D440EE6A78EF1E 7.5.0 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadAdvancedModeDemoProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @UdInit f0 '' #zField
Fs0 @UdProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @UdMethod f3 '' #zField
Fs0 @UdProcessEnd f4 '' #zField
Fs0 @GridStep f5 '' #zField
Fs0 @PushWFArc f6 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @UdProcessEnd f8 '' #zField
Fs0 @GridStep f10 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
Fs0 @PushWFArc f11 '' #zField
>Proto Fs0 Fs0 FileUploadAdvancedModeDemoProcess #zField
Fs0 f0 guid 13CF812673B64819 #txt
Fs0 f0 method start() #txt
Fs0 f0 inParameterDecl '<> param;' #txt
Fs0 f0 inActionCode 'import ch.ivyteam.ivy.cm.IContentObject;

IContentObject co = ivy.cms.findContentObject("/ch.ivyteam.htmldialog.demo/fileUploadImages");
List children = co.getChildren();
for(int i = 0; i < children.size(); i++)
{
 out.images.add((children.get(i) as IContentObject).getName());
}' #txt
Fs0 f0 outParameterDecl '<> result;' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 83 51 26 26 -16 12 #rect
Fs0 f0 @|UdInitIcon #fIcon
Fs0 f0 -1|-1|-9671572 #nodeStyle
Fs0 f1 211 51 26 26 0 12 #rect
Fs0 f1 @|UdProcessEndIcon #fIcon
Fs0 f1 -1|-1|-9671572 #nodeStyle
Fs0 f2 expr out #txt
Fs0 f2 109 64 211 64 #arcP
Fs0 f3 guid 13CF8146B1D3BB71 #txt
Fs0 f3 method uploadFile(org.primefaces.event.FileUploadEvent) #txt
Fs0 f3 inParameterDecl '<org.primefaces.event.FileUploadEvent event> param;' #txt
Fs0 f3 inParameterMapAction 'out.fileUploadEvent=param.event;
' #txt
Fs0 f3 outParameterDecl '<> result;' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadFile(FileUploadEvent)</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 83 147 26 26 -78 12 #rect
Fs0 f3 @|UdMethodIcon #fIcon
Fs0 f3 -1|-1|-9671572 #nodeStyle
Fs0 f4 563 147 26 26 0 12 #rect
Fs0 f4 @|UdProcessEndIcon #fIcon
Fs0 f4 -1|-1|-9671572 #nodeStyle
Fs0 f5 actionTable 'out=in;
' #txt
Fs0 f5 actionCode 'import java.io.InputStream;
import org.primefaces.model.UploadedFile;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;

UploadedFile uploadedFile = in.fileUploadEvent.getFile();
String fileName = uploadedFile.getFileName();

IContentObject baseFolder = ivy.cms.findContentObject("/ch.ivyteam.htmldialog.demo/fileUploadImages");

// create new Content Object name
String coName = fileName.substring(0, fileName.lastIndexOf("."));
if (coName.contains("\\") || coName.contains("/"))
{
	// On IE the the full file path is returned
	int fileNameStartIndex = coName.replace("\\", "/").lastIndexOf("/");
	coName = coName.substring(fileNameStartIndex+1);
}
String firstCoName = coName;
Number counter = 1;
while (baseFolder.getChild(coName) != null)
{
	coName = firstCoName + "_" + counter;
	counter++;
}

// evaluate CoType
CoType coType;
if (fileName.toLowerCase().endsWith("gif"))
{
	coType = ch.ivyteam.ivy.cm.CoType.GIF;
}
else if (fileName.toLowerCase().endsWith("jpeg") || fileName.toLowerCase().endsWith("jpg"))
{
	coType = ch.ivyteam.ivy.cm.CoType.JPEG;	
}
else if (fileName.toLowerCase().endsWith("png"))
{
	coType = ch.ivyteam.ivy.cm.CoType.PNG;
}
else
{
	ivy.log.error("invalid file name extension: " + fileName);
}

// create Content Object item
IContentObject newImgae = baseFolder.addChild(coName, "", coType, null);
IContentObjectValue cov = newImgae.addValue("", null, null, null, "", true, null);
InputStream inputStream = null;
try
{
	inputStream = uploadedFile.getInputstream();
	cov.setContent(inputStream, 0, null);
}
finally
{
	if (#inputStream != null)
	{
		inputStream.close();
	}
}
out.images.add(0, coName);' #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>store uploaded image in CMS</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 200 138 176 44 -81 -8 #rect
Fs0 f5 @|StepIcon #fIcon
Fs0 f5 -1|-1|-9671572 #nodeStyle
Fs0 f6 expr out #txt
Fs0 f6 109 160 200 160 #arcP
Fs0 f7 expr out #txt
Fs0 f7 376 160 563 160 #arcP
Fs0 f8 563 243 26 26 0 12 #rect
Fs0 f8 @|UdProcessEndIcon #fIcon
Fs0 f10 actionTable 'out=in;
' #txt
Fs0 f10 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContextFactory;
import javax.faces.context.FacesContext;

FacesContext context = FacesContext.getCurrentInstance();
context.addMessage(null ,new FacesMessage(FacesMessage.SEVERITY_ERROR, "Could not store image in CMS.\n If this demo is loaded as an Ivy Archive (.iar) unpack it and try again.", ""));' #txt
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display error</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f10 408 234 112 44 -35 -8 #rect
Fs0 f10 @|StepIcon #fIcon
Fs0 f9 expr out #txt
Fs0 f9 520 256 563 256 #arcP
Fs0 f9 0 0.275084335520415 0 0 #arcLabel
Fs0 Et0 actionTable 'out=in;
' #txt
Fs0 Et0 attachedToRef 13D440EE6A78EF1E-f5 #txt
Fs0 Et0 337 177 30 30 0 15 #rect
Fs0 Et0 @|ErrorBoundaryEventIcon #fIcon
Fs0 f11 352 207 408 256 #arcP
Fs0 f11 1 352 256 #addKink
Fs0 f11 1 0.12135440947836651 0 0 #arcLabel
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.input.FileUploadAdvancedModeDemo.FileUploadAdvancedModeDemoData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f6 tail #connect
Fs0 f6 head f5 mainIn #connect
Fs0 f5 mainOut f7 tail #connect
Fs0 f7 head f4 mainIn #connect
Fs0 f10 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 Et0 mainOut f11 tail #connect
Fs0 f11 head f10 mainIn #connect
