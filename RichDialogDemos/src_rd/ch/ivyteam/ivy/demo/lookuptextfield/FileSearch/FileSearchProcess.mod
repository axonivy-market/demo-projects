[Ivy]
[>Created: Thu Jun 13 15:46:33 CEST 2013]
11BB5F943EDD5FEA 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FileSearchProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @RichDialogProcessStart f3 '' #zField
Fs0 @RichDialogProcessEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @RichDialogProcessStep f6 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @PushWFArc f2 '' #zField
>Proto Fs0 Fs0 FileSearchProcess #zField
Fs0 f0 guid 11BB5F945D1A616E #txt
Fs0 f0 type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
Fs0 f0 method startWithFileList(List<java.io.File>) #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<java.io.File> fileList> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.files=param.fileList;
out.path="";
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/harddisk\";\nparam.title=\"File Search\";\nparam.subtitle=\"Search a list of \"+callParam.fileList.size()+\" files from the hard disk.\";\n"/initScript "\""}}' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithFileList(List&lt;File&gt;)</name>
        <nameStyle>29,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 90 40 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
Fs0 f1 87 163 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f3 guid 11BB601D28A68315 #txt
Fs0 f3 type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
Fs0 f3 actionDecl 'ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode 'String text = panel.fileLookupTextField.text;
List fileNames = panel.fileLookupTextField.listData;
out.path = "";

ivy.log.info("Looking for file: {0}", text);
for (int i=0; i<fileNames.size(); i++)
{
	if (text.equals(fileNames.get(i)))
	{
		out.path = in.files.get(i).getAbsolutePath();
		ivy.log.info("Found file: {0}", out.path);
	}
}
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 294 38 20 20 13 0 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
Fs0 f4 291 139 26 26 14 0 #rect
Fs0 f4 @|RichDialogProcessEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 304 58 304 139 #arcP
Fs0 f6 actionDecl 'ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData out;
' #txt
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 actionCode 'List<String> fileNames;
for (java.io.File f : in.files)
{
	fileNames.add(f.getName());
}
panel.fileLookupTextField.listData = fileNames;' #txt
Fs0 f6 type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set lookup field data</name>
        <nameStyle>21,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 82 100 36 24 20 -2 #rect
Fs0 f6 @|RichDialogProcessStepIcon #fIcon
Fs0 f7 expr out #txt
Fs0 f7 100 60 100 100 #arcP
Fs0 f7 0 0.49690943285416445 0 0 #arcLabel
Fs0 f2 expr out #txt
Fs0 f2 100 124 100 163 #arcP
>Proto Fs0 .rdData2UIAction 'panel.pathLabel.text=in.path;
' #txt
>Proto Fs0 .type ch.ivyteam.ivy.demo.lookuptextfield.FileSearch.FileSearchData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f0 mainOut f7 tail #connect
Fs0 f7 head f6 mainIn #connect
Fs0 f6 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
