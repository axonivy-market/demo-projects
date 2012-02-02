[Ivy]
[>Created: Fri May 21 12:52:48 CEST 2010]
125FD643F033AAB0 3.13 #module
>Proto >Proto Collection #zClass
Fs0 FileListChooserProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @RichDialogInitStart f3 '' #zField
Fs0 @RichDialogProcessStep f7 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @PushWFArc f6 '' #zField
Fs0 @RichDialogMethodStart f4 '' #zField
Fs0 @RichDialogProcessEnd f5 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @RichDialogMethodStart f10 '' #zField
Fs0 @RichDialogProcessEnd f11 '' #zField
Fs0 @PushWFArc f12 '' #zField
Fs0 @RichDialogMethodStart f13 '' #zField
Fs0 @RichDialogProcessEnd f14 '' #zField
Fs0 @PushWFArc f15 '' #zField
Fs0 @RichDialogMethodStart f16 '' #zField
Fs0 @PushWFArc f17 '' #zField
Fs0 @RichDialogMethodStart f18 '' #zField
Fs0 @RichDialogProcessStart f22 '' #zField
Fs0 @RichDialogProcessEnd f23 '' #zField
Fs0 @RichDialogFireEvent f25 '' #zField
Fs0 @PushWFArc f26 '' #zField
Fs0 @PushWFArc f24 '' #zField
Fs0 @RichDialogInitStart f27 '' #zField
Fs0 @PushWFArc f28 '' #zField
Fs0 @RichDialogMethodStart f29 '' #zField
Fs0 @PushWFArc f30 '' #zField
Fs0 @RichDialogMethodStart f32 '' #zField
Fs0 @PushWFArc f37 '' #zField
Fs0 @PushWFArc f33 '' #zField
>Proto Fs0 Fs0 FileListChooserProcess #zField
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 guid 11F6EC90B2294A9F #txt
Fs0 f0 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.path="defaultDirectory";
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '* ' #txt
Fs0 f0 90 40 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f1 83 315 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithPath(String)</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 guid 11F6EDD832C64BF6 #txt
Fs0 f3 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f3 method startWithPath(String) #txt
Fs0 f3 disableUIEvents true #txt
Fs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path> param = methodEvent.getInputArguments();
' #txt
Fs0 f3 inParameterMapAction 'out.path=param.path;
' #txt
Fs0 f3 outParameterDecl '<> result;
' #txt
Fs0 f3 embeddedRdInitializations '* ' #txt
Fs0 f3 158 54 20 20 13 0 #rect
Fs0 f3 @|RichDialogInitStartIcon #fIcon
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f7 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData out;
' #txt
Fs0 f7 actionTable 'out=in;
' #txt
Fs0 f7 actionCode 'import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import java.util.regex.Pattern;
in.filteredDcoumentsList.clear();
if(in.#path == null || in.path.trim().equals("")){
	in.path="defaultDirectory";
}

in.path=FileHandler.formatPathWithEndSeparator(in.path,true);

in.selectedDocumentOnServer= new DocumentOnServer();

in.selectedFile=null;

in.documentsList=FileHandler.getDocumentsInDir(new java.io.File(in.path));

// if we filter
if(!in.pattern.trim().equalsIgnoreCase("")){
	Pattern patternOnName = Pattern.compile(".*" + in.pattern + ".*", Pattern.CASE_INSENSITIVE);
	for(DocumentOnServer doc: in.documentsList){
		if(patternOnName.matcher(doc.filename).matches()){
			out.filteredDcoumentsList.add(doc);
		}
	}
}else{
	out.filteredDcoumentsList.addAll(in.documentsList);
}' #txt
Fs0 f7 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f7 78 220 36 24 20 -2 #rect
Fs0 f7 @|RichDialogProcessStepIcon #fIcon
Fs0 f8 expr out #txt
Fs0 f8 99 59 96 220 #arcP
Fs0 f2 expr out #txt
Fs0 f2 164 73 101 220 #arcP
Fs0 f6 expr out #txt
Fs0 f6 96 244 96 315 #arcP
Fs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getPath()</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f4 guid 11F6EE5DAC974A3A #txt
Fs0 f4 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f4 method getPath() #txt
Fs0 f4 disableUIEvents false #txt
Fs0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f4 outParameterDecl '<java.lang.String path> result;
' #txt
Fs0 f4 outParameterMapAction 'result.path=in.path;
' #txt
Fs0 f4 662 54 20 20 13 -8 #rect
Fs0 f4 @|RichDialogMethodStartIcon #fIcon
Fs0 f5 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f5 659 107 26 26 14 0 #rect
Fs0 f5 @|RichDialogProcessEndIcon #fIcon
Fs0 f9 expr out #txt
Fs0 f9 672 74 672 107 #arcP
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectedDocument()</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f10 guid 11F6EE621C3EF7A9 #txt
Fs0 f10 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f10 method getSelectedDocument() #txt
Fs0 f10 disableUIEvents false #txt
Fs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f10 outParameterDecl '<ch.xpertline.common.ria.component.DocumentOnServer selectedDocument> result;
' #txt
Fs0 f10 outParameterMapAction 'result.selectedDocument=in.selectedDocumentOnServer;
' #txt
Fs0 f10 1006 46 20 20 -44 -29 #rect
Fs0 f10 @|RichDialogMethodStartIcon #fIcon
Fs0 f11 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f11 1003 91 26 26 14 0 #rect
Fs0 f11 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 expr out #txt
Fs0 f12 1016 66 1016 91 #arcP
Fs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectedFile()</name>
        <nameStyle>17,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f13 guid 11F6EE733F7E846D #txt
Fs0 f13 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f13 method getSelectedFile() #txt
Fs0 f13 disableUIEvents false #txt
Fs0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f13 outParameterDecl '<java.io.File selectedFile> result;
' #txt
Fs0 f13 outParameterMapAction 'result.selectedFile=in.selectedFile;
' #txt
Fs0 f13 1094 46 20 20 -34 -30 #rect
Fs0 f13 @|RichDialogMethodStartIcon #fIcon
Fs0 f14 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f14 1091 139 26 26 14 0 #rect
Fs0 f14 @|RichDialogProcessEndIcon #fIcon
Fs0 f15 expr out #txt
Fs0 f15 1104 66 1104 139 #arcP
Fs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>9,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f16 guid 11F6EE791F44D3EB #txt
Fs0 f16 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f16 method refresh() #txt
Fs0 f16 disableUIEvents true #txt
Fs0 f16 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f16 outParameterDecl '<> result;
' #txt
Fs0 f16 774 46 20 20 13 0 #rect
Fs0 f16 @|RichDialogMethodStartIcon #fIcon
Fs0 f17 expr out #txt
Fs0 f17 784 66 114 232 #arcP
Fs0 f17 1 784 232 #addKink
Fs0 f17 1 0.5431044523634235 0 0 #arcLabel
Fs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setPath(String)</name>
    </language>
</elementInfo>
' #txt
Fs0 f18 guid 11F6EE86AE988249 #txt
Fs0 f18 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f18 method setPath(String) #txt
Fs0 f18 disableUIEvents false #txt
Fs0 f18 542 54 20 20 14 -7 #rect
Fs0 f18 @|RichDialogMethodStartIcon #fIcon
Fs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection changed</name>
        <nameStyle>17,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f22 guid 11F6EE95766E1866 #txt
Fs0 f22 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f22 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData out;
' #txt
Fs0 f22 actionTable 'out=in;
' #txt
Fs0 f22 actionCode 'import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
if(panel.fileListComboBox.selectedListEntry != null && panel.fileListComboBox.selectedListEntry instanceof DocumentOnServer){
	in.selectedDocumentOnServer=panel.fileListComboBox.selectedListEntry as DocumentOnServer;
}else{
	in.selectedDocumentOnServer= new DocumentOnServer();
}

if(in.#selectedDocumentOnServer != null && !in.selectedDocumentOnServer.filename.trim().equalsIgnoreCase("")){
	
	in.selectedFile=new java.io.File(FileHandler.formatPath(in.selectedDocumentOnServer.path));
	//ivy.log.debug("selected File "+in.selectedFile.getPath(),null);
}
else{
	in.selectedFile=null;
}' #txt
Fs0 f22 1206 46 20 20 -35 -28 #rect
Fs0 f22 @|RichDialogProcessStartIcon #fIcon
Fs0 f23 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f23 1203 171 26 26 14 0 #rect
Fs0 f23 @|RichDialogProcessEndIcon #fIcon
Fs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileSelectionChanged</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f25 actionDecl 'ch.ivyteam.ivy.addons.filemanager.DocumentOnServer selectedDocumentOnServer;
' #txt
Fs0 f25 actionTable 'selectedDocumentOnServer=in.selectedDocumentOnServer;
' #txt
Fs0 f25 actionCode panel.fireFileSelectionChanged(selectedDocumentOnServer); #txt
Fs0 f25 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f25 fireEvent fileSelectionChanged(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer) #txt
Fs0 f25 1198 100 36 24 20 -2 #rect
Fs0 f25 @|RichDialogFireEventIcon #fIcon
Fs0 f26 expr out #txt
Fs0 f26 1216 66 1216 100 #arcP
Fs0 f24 expr out #txt
Fs0 f24 1216 124 1216 171 #arcP
Fs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithPathAndPatternFilter(String,String)</name>
        <nameStyle>44,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f27 guid 1223C3C1B36B2F2B #txt
Fs0 f27 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f27 method startWithPathAndPatternFilter(String,String) #txt
Fs0 f27 disableUIEvents true #txt
Fs0 f27 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String pattern> param = methodEvent.getInputArguments();
' #txt
Fs0 f27 inParameterMapAction 'out.path=param.path;
out.pattern=param.pattern;
' #txt
Fs0 f27 outParameterDecl '<> result;
' #txt
Fs0 f27 embeddedRdInitializations '* ' #txt
Fs0 f27 230 94 20 20 13 0 #rect
Fs0 f27 @|RichDialogInitStartIcon #fIcon
Fs0 f28 expr out #txt
Fs0 f28 232 110 110 220 #arcP
Fs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter(String)</name>
        <nameStyle>14,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f29 guid 1223C456E56E7061 #txt
Fs0 f29 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f29 method filter(String) #txt
Fs0 f29 disableUIEvents true #txt
Fs0 f29 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String pattern> param = methodEvent.getInputArguments();
' #txt
Fs0 f29 inParameterMapAction 'out.pattern=param.pattern;
' #txt
Fs0 f29 outParameterDecl '<> result;
' #txt
Fs0 f29 830 86 20 20 13 0 #rect
Fs0 f29 @|RichDialogMethodStartIcon #fIcon
Fs0 f30 expr out #txt
Fs0 f30 840 106 114 232 #arcP
Fs0 f30 1 840 232 #addKink
Fs0 f30 1 0.30209449789994514 0 0 #arcLabel
Fs0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setPattern(String)</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f32 guid 122F435AF966A583 #txt
Fs0 f32 type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
Fs0 f32 method setPattern(String) #txt
Fs0 f32 disableUIEvents false #txt
Fs0 f32 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String pattern> param = methodEvent.getInputArguments();
' #txt
Fs0 f32 inParameterMapAction 'out.pattern=param.pattern;
' #txt
Fs0 f32 outParameterDecl '<> result;
' #txt
Fs0 f32 894 126 20 20 13 0 #rect
Fs0 f32 @|RichDialogMethodStartIcon #fIcon
Fs0 f37 expr out #txt
Fs0 f37 904 146 114 232 #arcP
Fs0 f37 1 904 232 #addKink
Fs0 f37 1 0.5834663011785789 0 0 #arcLabel
Fs0 f33 expr out #txt
Fs0 f33 552 74 114 232 #arcP
Fs0 f33 1 552 232 #addKink
Fs0 f33 1 0.4692777887493621 0 0 #arcLabel
>Proto Fs0 .type ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 .rdData2UIAction 'panel.fileListComboBox.listData=in.filteredDcoumentsList;
' #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Getters / Setters</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>489</swimlaneSize>
    <swimlaneSize>243</swimlaneSize>
    <swimlaneSize>431</swimlaneSize>
    <swimlaneSize>200</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-26215</swimlaneColor>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f8 tail #connect
Fs0 f8 head f7 mainIn #connect
Fs0 f3 mainOut f2 tail #connect
Fs0 f2 head f7 mainIn #connect
Fs0 f7 mainOut f6 tail #connect
Fs0 f6 head f1 mainIn #connect
Fs0 f4 mainOut f9 tail #connect
Fs0 f9 head f5 mainIn #connect
Fs0 f10 mainOut f12 tail #connect
Fs0 f12 head f11 mainIn #connect
Fs0 f13 mainOut f15 tail #connect
Fs0 f15 head f14 mainIn #connect
Fs0 f16 mainOut f17 tail #connect
Fs0 f17 head f7 mainIn #connect
Fs0 f22 mainOut f26 tail #connect
Fs0 f26 head f25 mainIn #connect
Fs0 f25 mainOut f24 tail #connect
Fs0 f24 head f23 mainIn #connect
Fs0 f27 mainOut f28 tail #connect
Fs0 f28 head f7 mainIn #connect
Fs0 f29 mainOut f30 tail #connect
Fs0 f30 head f7 mainIn #connect
Fs0 f32 mainOut f37 tail #connect
Fs0 f37 head f7 mainIn #connect
Fs0 f18 mainOut f33 tail #connect
Fs0 f33 head f7 mainIn #connect
