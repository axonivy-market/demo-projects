[Ivy]
13D440F293AA05F8 9.2.0 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadSimpleModeDemoProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @UdInit f0 '' #zField
Fs0 @UdProcessEnd f1 '' #zField
Fs0 @UdEvent f11 '' #zField
Fs0 @UdProcessEnd f12 '' #zField
Fs0 @GridStep f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @PushWFArc f10 '' #zField
Fs0 @UdEvent f3 '' #zField
Fs0 @UdProcessEnd f4 '' #zField
Fs0 @GridStep f6 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @UdEvent f13 '' #zField
Fs0 @UdProcessEnd f14 '' #zField
Fs0 @GridStep f16 '' #zField
Fs0 @PushWFArc f17 '' #zField
Fs0 @PushWFArc f15 '' #zField
Fs0 @PushWFArc f20 '' #zField
>Proto Fs0 Fs0 FileUploadSimpleModeDemoProcess #zField
Fs0 f0 guid 13CF812673B64819 #txt
Fs0 f0 method start() #txt
Fs0 f0 inParameterDecl '<> param;' #txt
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
Fs0 f1 243 51 26 26 0 12 #rect
Fs0 f1 @|UdProcessEndIcon #fIcon
Fs0 f1 -1|-1|-9671572 #nodeStyle
Fs0 f11 guid 13D016515EC7C69A #txt
Fs0 f11 actionTable 'out=in;
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
Fs0 f11 83 243 26 26 -36 12 #rect
Fs0 f11 @|UdEventIcon #fIcon
Fs0 f11 -1|-1|-9671572 #nodeStyle
Fs0 f12 403 243 26 26 0 12 #rect
Fs0 f12 @|UdProcessEndIcon #fIcon
Fs0 f12 -1|-1|-9671572 #nodeStyle
Fs0 f8 actionTable 'out=in;
out.showContent=true;
' #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set show content</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 200 234 112 44 -46 -8 #rect
Fs0 f8 @|StepIcon #fIcon
Fs0 f8 -1|-1|-9671572 #nodeStyle
Fs0 f9 expr out #txt
Fs0 f9 109 256 200 256 #arcP
Fs0 f10 expr out #txt
Fs0 f10 312 256 403 256 #arcP
Fs0 f3 guid 1468FB4A3B3BAF3D #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileDownload</name>
    </language>
</elementInfo>
' #txt
Fs0 f3 83 339 26 26 -36 12 #rect
Fs0 f3 @|UdEventIcon #fIcon
Fs0 f3 -1|-1|-9671572 #nodeStyle
Fs0 f4 403 339 26 26 0 12 #rect
Fs0 f4 @|UdProcessEndIcon #fIcon
Fs0 f4 -1|-1|-9671572 #nodeStyle
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 actionCode 'import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import javax.faces.bean.ManagedBean;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

InputStream stream;

stream = new FileInputStream(in.filePath);
in.fileDownload = new DefaultStreamedContent(stream, "text/txt", in.fileName);


' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set file path for download</name>
        <nameStyle>26,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 184 330 144 44 -68 -8 #rect
Fs0 f6 @|StepIcon #fIcon
Fs0 f6 -1|-1|-9671572 #nodeStyle
Fs0 f7 expr out #txt
Fs0 f7 109 352 184 352 #arcP
Fs0 f5 expr out #txt
Fs0 f5 328 352 403 352 #arcP
Fs0 f13 guid 1469001EB7423E79 #txt
Fs0 f13 actionTable 'out=in;
' #txt
Fs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileUpload</name>
    </language>
</elementInfo>
' #txt
Fs0 f13 83 147 26 26 -28 12 #rect
Fs0 f13 @|UdEventIcon #fIcon
Fs0 f13 -1|-1|-9671572 #nodeStyle
Fs0 f14 403 147 26 26 0 12 #rect
Fs0 f14 @|UdProcessEndIcon #fIcon
Fs0 f14 -1|-1|-9671572 #nodeStyle
Fs0 f16 actionTable 'out=in;
out.showContent=false;
' #txt
Fs0 f16 actionCode 'in.textContent = in.ivyFile.read();
in.fileName = in.ivyFile.getName();
in.filePath = in.ivyFile.getAbsolutePath();' #txt
Fs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set file content and name</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f16 184 138 144 44 -69 -8 #rect
Fs0 f16 @|StepIcon #fIcon
Fs0 f16 -1|-1|-9671572 #nodeStyle
Fs0 f17 expr out #txt
Fs0 f17 109 160 184 160 #arcP
Fs0 f15 expr out #txt
Fs0 f15 328 160 403 160 #arcP
Fs0 f20 expr out #txt
Fs0 f20 109 64 243 64 #arcP
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f11 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 f8 mainOut f10 tail #connect
Fs0 f10 head f12 mainIn #connect
Fs0 f3 mainOut f7 tail #connect
Fs0 f7 head f6 mainIn #connect
Fs0 f6 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f13 mainOut f17 tail #connect
Fs0 f17 head f16 mainIn #connect
Fs0 f16 mainOut f15 tail #connect
Fs0 f15 head f14 mainIn #connect
Fs0 f0 mainOut f20 tail #connect
Fs0 f20 head f1 mainIn #connect
