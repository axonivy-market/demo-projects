[Ivy]
[>Created: Thu Feb 28 11:11:54 CET 2013]
13CF812672512EFC 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadDemoProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogMethodStart f3 '' #zField
Fs0 @RichDialogProcessEnd f4 '' #zField
Fs0 @GridStep f5 '' #zField
Fs0 @PushWFArc f6 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @RichDialogProcessStart f11 '' #zField
Fs0 @RichDialogProcessEnd f12 '' #zField
Fs0 @GridStep f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @PushWFArc f10 '' #zField
>Proto Fs0 Fs0 FileUploadDemoProcess #zField
Fs0 f0 guid 13CF812673B64819 #txt
Fs0 f0 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.activeIndex="0";
' #txt
Fs0 f0 inActionCode 'import ch.ivyteam.ivy.cm.IContentObject;

IContentObject co = ivy.cms.findContentObject("/ch.ivyteam.htmldialog.demo/fileUploadImages");


List children = co.getChildren();
for(int i = 0; i < children.size(); i++)
{
 out.images.add((children.get(i) as IContentObject).getName());
}' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 86 54 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f1 86 150 20 20 13 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 96 74 96 150 #arcP
Fs0 f3 guid 13CF8146B1D3BB71 #txt
Fs0 f3 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f3 method uploadFile(org.primefaces.event.FileUploadEvent) #txt
Fs0 f3 disableUIEvents false #txt
Fs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<org.primefaces.event.FileUploadEvent event> param = methodEvent.getInputArguments();
' #txt
Fs0 f3 inParameterMapAction 'out.activeIndex="0";
out.fileUploadEvent=param.event;
' #txt
Fs0 f3 outParameterDecl '<> result;
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadFile(FileUploadEvent)</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 182 54 20 20 13 0 #rect
Fs0 f3 @|RichDialogMethodStartIcon #fIcon
Fs0 f4 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f4 182 150 20 20 13 0 #rect
Fs0 f4 @|RichDialogProcessEndIcon #fIcon
Fs0 f5 actionDecl 'ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData out;
' #txt
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
String coName = fileName.substring(0, fileName.indexOf("."));
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
Fs0 f5 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>store uploaded image in CMS</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 174 100 36 24 20 -2 #rect
Fs0 f5 @|StepIcon #fIcon
Fs0 f6 expr out #txt
Fs0 f6 192 74 192 100 #arcP
Fs0 f7 expr out #txt
Fs0 f7 192 124 192 150 #arcP
Fs0 f11 guid 13D016515EC7C69A #txt
Fs0 f11 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData out;
' #txt
Fs0 f11 actionTable 'out=in;
out.activeIndex="1";
' #txt
Fs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showContent</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f11 438 54 20 20 13 0 #rect
Fs0 f11 @|RichDialogProcessStartIcon #fIcon
Fs0 f12 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f12 438 150 20 20 13 0 #rect
Fs0 f12 @|RichDialogProcessEndIcon #fIcon
Fs0 f8 actionDecl 'ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData out;
' #txt
Fs0 f8 actionTable 'out=in;
' #txt
Fs0 f8 actionCode 'in.textContent = in.ivyFile.read();
in.fileName = in.ivyFile.getName();' #txt
Fs0 f8 type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set file content and name</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 430 100 36 24 20 -2 #rect
Fs0 f8 @|StepIcon #fIcon
Fs0 f9 expr out #txt
Fs0 f9 448 74 448 100 #arcP
Fs0 f10 expr out #txt
Fs0 f10 448 124 448 150 #arcP
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.FileUploadDemo.FileUploadDemoData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f6 tail #connect
Fs0 f6 head f5 mainIn #connect
Fs0 f5 mainOut f7 tail #connect
Fs0 f7 head f4 mainIn #connect
Fs0 f11 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 f8 mainOut f10 tail #connect
Fs0 f10 head f12 mainIn #connect
