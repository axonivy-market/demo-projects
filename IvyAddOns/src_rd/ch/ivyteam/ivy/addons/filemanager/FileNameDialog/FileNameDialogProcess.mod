[Ivy]
[>Created: Sun Oct 24 12:27:44 CEST 2010]
125FE16732F8F94A 3.13.1 #module
>Proto >Proto Collection #zClass
Fs0 FileNameDialogProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogInitStart f3 '' #zField
Fs0 @Alternative f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @RichDialogProcessStep f6 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @RichDialogEnd f1 '' #zField
Fs0 @RichDialogProcessStep f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @RichDialogProcessEnd f10 '' #zField
Fs0 @RichDialogProcessStep f12 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @RichDialog f14 '' #zField
Fs0 @PushWFArc f15 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStart f17 '' #zField
Fs0 @RichDialog f18 '' #zField
Fs0 @PushWFArc f22 '' #zField
Fs0 @RichDialogProcessStart f16 '' #zField
Fs0 @RichDialogEnd f23 '' #zField
Fs0 @RichDialogProcessStart f25 '' #zField
Fs0 @PushWFArc f26 '' #zField
Fs0 @RichDialogProcessStart f27 '' #zField
Fs0 @RichDialogProcessEnd f28 '' #zField
Fs0 @RichDialogInitStart f30 '' #zField
Fs0 @PushWFArc f31 '' #zField
Fs0 @InfoButton f32 '' #zField
Fs0 @AnnotationArc f33 '' #zField
Fs0 @Alternative f34 '' #zField
Fs0 @PushWFArc f35 '' #zField
Fs0 @PushWFArc f24 '' #zField
Fs0 @RichDialogProcessEnd f36 '' #zField
Fs0 @PushWFArc f37 '' #zField
Fs0 @RichDialogProcessStep f38 '' #zField
Fs0 @PushWFArc f39 '' #zField
Fs0 @PushWFArc f11 '' #zField
Fs0 @RichDialogInitStart f40 '' #zField
Fs0 @RichDialogProcessStep f42 '' #zField
Fs0 @PushWFArc f43 '' #zField
Fs0 @RichDialogProcessStep f44 '' #zField
Fs0 @PushWFArc f41 '' #zField
Fs0 @PushWFArc f45 '' #zField
Fs0 @RichDialogProcessStart f46 '' #zField
Fs0 @RichDialogProcessStep f49 '' #zField
Fs0 @PushWFArc f50 '' #zField
Fs0 @PushWFArc f29 '' #zField
Fs0 @PushWFArc f51 '' #zField
Fs0 @PushWFArc f20 '' #zField
Fs0 @RichDialogInitStart f21 '' #zField
Fs0 @RichDialogProcessStep f47 '' #zField
Fs0 @PushWFArc f48 '' #zField
Fs0 @PushWFArc f52 '' #zField
Fs0 @RichDialogInitStart f53 '' #zField
Fs0 @RichDialogProcessStep f55 '' #zField
Fs0 @PushWFArc f56 '' #zField
Fs0 @PushWFArc f54 '' #zField
Fs0 @RichDialogInitStart f57 '' #zField
Fs0 @RichDialogInitStart f59 '' #zField
Fs0 @PushWFArc f60 '' #zField
Fs0 @RichDialogInitStart f61 '' #zField
Fs0 @PushWFArc f62 '' #zField
Fs0 @PushWFArc f58 '' #zField
Fs0 @RichDialogMethodStart f63 '' #zField
Fs0 @PushWFArc f64 '' #zField
Fs0 @RichDialogInitStart f65 '' #zField
Fs0 @PushWFArc f66 '' #zField
Fs0 @Alternative f67 '' #zField
Fs0 @PushWFArc f68 '' #zField
Fs0 @PushWFArc f19 '' #zField
Fs0 @RichDialog f69 '' #zField
Fs0 @PushWFArc f70 '' #zField
Fs0 @PushWFArc f71 '' #zField
>Proto Fs0 Fs0 FileNameDialogProcess #zField
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 guid 121ECD37DFCFCA97 #txt
Fs0 f0 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.fileExtension="";
out.freePath="";
out.path="";
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '* ' #txt
Fs0 f0 62 38 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String)</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 guid 121ECE5545BFE8AE #txt
Fs0 f3 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f3 method start(String,String) #txt
Fs0 f3 disableUIEvents false #txt
Fs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath> param = methodEvent.getInputArguments();
' #txt
Fs0 f3 inParameterMapAction 'out.allowPathChooser=false;
out.fileExtension="";
out.freePath=param.freePath;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f3 outParameterDecl '<java.lang.String path,java.lang.String fileName> result;
' #txt
Fs0 f3 outParameterMapAction 'result.path=in.path;
result.fileName=in.fileName;
' #txt
Fs0 f3 embeddedRdInitializations '* ' #txt
Fs0 f3 270 38 20 20 -52 -29 #rect
Fs0 f3 @|RichDialogInitStartIcon #fIcon
Fs0 f4 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>path initialized ?</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f4 266 218 28 28 14 0 #rect
Fs0 f4 @|AlternativeIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 280 58 280 218 #arcP
Fs0 f6 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 actionCode 'panel.warnLabel.visible=false;
if(in.freePath.trim().length()>0){
	if(!in.path.startsWith(in.freePath)){
		out.freePath = in.path;
	}
}else{
	out.freePath = in.path;
}

if(in.fileExtension.trim().length()>0 && !in.fileExtension.trim().equalsIgnoreCase(".")){
	if(!in.fileExtension.startsWith(".")){
		out.fileExtension="."+in.fileExtension;
	}
}else{
	out.fileExtension=".doc";
}

' #txt
Fs0 f6 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check freepath
and fileExtension</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 262 284 36 24 21 -17 #rect
Fs0 f6 @|RichDialogProcessStepIcon #fIcon
Fs0 f7 expr in #txt
Fs0 f7 outCond in.path.trim().length()>0 #txt
Fs0 f7 280 246 280 284 #arcP
Fs0 f1 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f1 guid 121ECE668A88D14F #txt
Fs0 f1 59 267 26 26 14 0 #rect
Fs0 f1 @|RichDialogEndIcon #fIcon
Fs0 f8 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f8 actionTable 'out=in;
' #txt
Fs0 f8 actionCode 'import ch.ivyteam.ivy.addons.filemanager.FileHandler;

//format the paths and create the directories if they don''t exists
out.freePath=FileHandler.formatPathWithEndSeparator(in.freePath);
out.path=FileHandler.formatPathWithEndSeparator(in.path);' #txt
Fs0 f8 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>format paths</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 262 340 36 24 20 -2 #rect
Fs0 f8 @|RichDialogProcessStepIcon #fIcon
Fs0 f9 expr out #txt
Fs0 f9 280 308 280 340 #arcP
Fs0 f10 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f10 267 451 26 26 14 0 #rect
Fs0 f10 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f12 actionTable 'out=in;
' #txt
Fs0 f12 actionCode 'out.fileName="";
out.path="";' #txt
Fs0 f12 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>errorMessage
WinTitle</name>
        <nameStyle>21,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f12 54 100 36 24 19 10 #rect
Fs0 f12 @|RichDialogProcessStepIcon #fIcon
Fs0 f13 expr in #txt
Fs0 f13 271 227 90 122 #arcP
Fs0 f14 targetDisplay TOP #txt
Fs0 f14 richDialogId ch.ivyteam.ivy.addons.commondialogs.QuestionDialog #txt
Fs0 f14 startMethod askQuestion(String,String,List<String>,String) #txt
Fs0 f14 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f14 requestActionDecl '<String icon, String question, List<String> buttons, String defaultButton> param;' #txt
Fs0 f14 requestMappingAction 'param.icon="/ch/ivyteam/ivy/addons/icons/close/48";
param.question=in.message;
param.buttons=[ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/ok")];
param.defaultButton=ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/ok");
' #txt
Fs0 f14 responseActionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f14 responseMappingAction 'out=in;
' #txt
Fs0 f14 windowConfiguration '{/title "<%=in.windowTitle%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Fs0 f14 isAsynch false #txt
Fs0 f14 isInnerRd true #txt
Fs0 f14 isDialog true #txt
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show Error</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 54 204 36 24 20 -2 #rect
Fs0 f14 @|RichDialogIcon #fIcon
Fs0 f14 -65536|-1|-16777216 #nodeStyle
Fs0 f15 expr out #txt
Fs0 f15 72 228 72 267 #arcP
Fs0 f2 expr out #txt
Fs0 f2 72 124 72 204 #arcP
Fs0 f17 guid 121ECF67A01AB22C #txt
Fs0 f17 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f17 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f17 actionTable 'out=in;
' #txt
Fs0 f17 actionCode in.windowTitle=ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/windowTitles/chooseFolder"); #txt
Fs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showPathChooser</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f17 1174 206 20 20 -45 -29 #rect
Fs0 f17 @|RichDialogProcessStartIcon #fIcon
Fs0 f18 targetWindow NEW:card: #txt
Fs0 f18 targetDisplay TOP #txt
Fs0 f18 richDialogId ch.ivyteam.ivy.addons.filemanager.FileManager #txt
Fs0 f18 startMethod startAsPathChooserWithDBInformations(String,String,String,String) #txt
Fs0 f18 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f18 requestActionDecl '<String serverPath, String ivyDBConnectionname, String DBTableName, String DBSchemaName> param;' #txt
Fs0 f18 requestMappingAction 'param.serverPath=in.freePath;
param.ivyDBConnectionname=in.ivyConnectionName;
param.DBTableName=in.DBTableName;
param.DBSchemaName=in.DBSchemaName;
' #txt
Fs0 f18 responseActionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f18 responseMappingAction 'out=in;
' #txt
Fs0 f18 responseActionCode '
if(result.choosedPath.trim().length()>2){
	out.path=result.choosedPath;
}
' #txt
Fs0 f18 windowConfiguration '{/title "<%=in.windowTitle%>"/width 780 /height 400 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Fs0 f18 isAsynch false #txt
Fs0 f18 isInnerRd true #txt
Fs0 f18 isDialog true #txt
Fs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>pathChooser</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f18 1166 300 36 24 20 -2 #rect
Fs0 f18 @|RichDialogIcon #fIcon
Fs0 f22 expr out #txt
Fs0 f22 72 58 72 100 #arcP
Fs0 f16 guid 121ECF8DA4658717 #txt
Fs0 f16 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f16 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f16 actionTable 'out=in;
' #txt
Fs0 f16 actionCode 'import ch.ivyteam.ivy.addons.filemanager.FileHandler;


if(panel.fileNameTextField.getText().trim().equalsIgnoreCase("")){
	out.fileName="";
	out.path="";
	out.fileExtension="";
}else{
	out.fileName=panel.fileNameTextField.getText().trim();
	out.path=FileHandler.formatPathWithEndSeparator(in.path,false);
}' #txt
Fs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OKButton</name>
        <nameStyle>8,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f16 1022 30 20 20 13 0 #rect
Fs0 f16 @|RichDialogProcessStartIcon #fIcon
Fs0 f23 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f23 guid 121ECFAAD1E54689 #txt
Fs0 f23 1051 107 26 26 14 0 #rect
Fs0 f23 @|RichDialogEndIcon #fIcon
Fs0 f25 guid 121ECFABC70C93DF #txt
Fs0 f25 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f25 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f25 actionTable 'out=in;
' #txt
Fs0 f25 actionCode 'out.fileName="";
out.path="";' #txt
Fs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CancelButton</name>
        <nameStyle>12,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f25 1158 22 20 20 13 0 #rect
Fs0 f25 @|RichDialogProcessStartIcon #fIcon
Fs0 f26 expr out #txt
Fs0 f26 1168 42 1077 120 #arcP
Fs0 f26 1 1168 120 #addKink
Fs0 f26 0 0.8840831780917092 0 0 #arcLabel
Fs0 f27 guid 121ECFB3DB22AD27 #txt
Fs0 f27 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f27 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f27 actionTable 'out=in;
' #txt
Fs0 f27 actionCode 'if(panel.fileNameTextField.getText().trim().length()>0){
	if(panel.fileNameTextField.getText().trim().contains(".")){

		panel.warnLabel.setText(ivy.cms.co("/ch/xpertline/common/ria/component/fileManagement/messages/error/invalidCharacterInFileName"));
		panel.warnLabel.visible=true;
		panel.okButton.setEnabled(false);
	}else if(in.fileExtension.trim().length()>1){
		java.io.File file = new java.io.File(in.path+panel.fileNameTextField.getText().trim()+in.fileExtension);
		if(file.exists()){
			panel.warnLabel.setText(ivy.cms.co("/ch/xpertline/common/ria/component/fileManagement/messages/information/fileAlreadyExists"));
			panel.warnLabel.visible=true;
			panel.okButton.setEnabled(true);

		}else{
			panel.warnLabel.visible=false;
			panel.okButton.setEnabled(true);
		}
	}else{

		panel.warnLabel.visible=false;
		panel.okButton.setEnabled(true);
	}
}else{

	panel.warnLabel.visible=false;
	panel.okButton.setEnabled(true);
}' #txt
Fs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>keyInTextField</name>
        <nameStyle>14,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f27 846 262 20 20 13 0 #rect
Fs0 f27 @|RichDialogProcessStartIcon #fIcon
Fs0 f28 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f28 843 347 26 26 14 0 #rect
Fs0 f28 @|RichDialogProcessEndIcon #fIcon
Fs0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String,String)</name>
        <nameStyle>27,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f30 guid 121ED05774D8A16C #txt
Fs0 f30 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f30 method start(String,String,String) #txt
Fs0 f30 disableUIEvents false #txt
Fs0 f30 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath,java.lang.String fileExtension> param = methodEvent.getInputArguments();
' #txt
Fs0 f30 inParameterMapAction 'out.allowPathChooser=false;
out.fileExtension=param.fileExtension;
out.freePath=param.freePath;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f30 outParameterDecl '<java.lang.String fileName,java.lang.String path> result;
' #txt
Fs0 f30 outParameterMapAction 'result.fileName=in.fileName;
result.path=in.path;
' #txt
Fs0 f30 embeddedRdInitializations '* ' #txt
Fs0 f30 318 118 20 20 13 0 #rect
Fs0 f30 @|RichDialogInitStartIcon #fIcon
Fs0 f31 expr out #txt
Fs0 f31 318 128 280 218 #arcP
Fs0 f31 1 280 128 #addKink
Fs0 f31 1 0.3098082972691463 0 0 #arcLabel
Fs0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>asynchrone event</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f32 811 203 106 26 -48 -8 #rect
Fs0 f32 @|IBIcon #fIcon
Fs0 f32 -657956|-1|-16777216 #nodeStyle
Fs0 f33 864 229 849 264 #arcP
Fs0 f34 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No point in filename</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f34 1018 66 28 28 14 0 #rect
Fs0 f34 @|AlternativeIcon #fIcon
Fs0 f35 expr out #txt
Fs0 f35 1032 50 1032 66 #arcP
Fs0 f24 expr in #txt
Fs0 f24 outCond !in.fileName.contains(".") #txt
Fs0 f24 1046 80 1064 107 #arcP
Fs0 f24 1 1064 80 #addKink
Fs0 f24 1 0.13578432045765815 0 0 #arcLabel
Fs0 f36 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f36 987 107 26 26 14 0 #rect
Fs0 f36 @|RichDialogProcessEndIcon #fIcon
Fs0 f37 expr in #txt
Fs0 f37 1018 80 1000 107 #arcP
Fs0 f37 1 1000 80 #addKink
Fs0 f37 1 0.06257282377018288 0 0 #arcLabel
Fs0 f38 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f38 actionTable 'out=in;
' #txt
Fs0 f38 actionCode 'panel.fileNameTextField.requestFocus();
panel.okButton.setEnabled(false);
' #txt
Fs0 f38 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>request focus for textField</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f38 262 388 36 24 20 -2 #rect
Fs0 f38 @|RichDialogProcessStepIcon #fIcon
Fs0 f39 expr out #txt
Fs0 f39 280 364 280 388 #arcP
Fs0 f11 expr out #txt
Fs0 f11 280 412 280 451 #arcP
Fs0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithOptionalFileTypChooser
(String,String,String,List&lt;String&gt;)</name>
        <nameStyle>67,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f40 guid 121F73311F8DBA8E #txt
Fs0 f40 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f40 method startWithOptionalFileTypChooser(String,String,String,List<String>) #txt
Fs0 f40 disableUIEvents false #txt
Fs0 f40 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freepath,java.lang.String defaultExtension,List<java.lang.String> filesExtension> param = methodEvent.getInputArguments();
' #txt
Fs0 f40 inParameterMapAction 'out.allowPathChooser=false;
out.fileExtension=param.defaultExtension;
out.fileExtensions=param.filesExtension;
out.freePath=param.freepath;
out.path=param.path;
out.showFileTypeChooser=true;
' #txt
Fs0 f40 outParameterDecl '<java.lang.String path,java.lang.String filename,java.lang.String choosedExtension> result;
' #txt
Fs0 f40 outParameterMapAction 'result.path=in.path;
result.filename=in.fileName;
result.choosedExtension=in.fileExtension;
' #txt
Fs0 f40 embeddedRdInitializations '* ' #txt
Fs0 f40 494 430 20 20 -142 11 #rect
Fs0 f40 @|RichDialogInitStartIcon #fIcon
Fs0 f42 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f42 actionTable 'out=in;
' #txt
Fs0 f42 actionCode '//if list of file extensions is empty, then hide combobox
if(in.fileExtensions.isEmpty()){
	out.showFileTypeChooser=false;
	//Check the default file extension
	if(in.fileExtension.trim().length()>0 && !in.fileExtension.trim().equalsIgnoreCase(".")){
		if(!in.fileExtension.startsWith(".")){
			out.fileExtension="."+in.fileExtension;
		}
	}else{
		//if no file extensions take Words
		out.fileExtension=".doc";
	}
}else{
	//Check the default file extension
	if(in.fileExtension.trim().length()>0 && !in.fileExtension.trim().equalsIgnoreCase(".")){
		if(!in.fileExtension.startsWith(".")){
			out.fileExtension="."+in.fileExtension;
		}
	}else{
		//if no file extensions take the first one from the list
		out.fileExtension=in.fileExtensions.get(0);
	}
		
	// we put "." to all extensions
	List<String> liste = new List<String>();
	// add empty value to the list
	liste.add("-");
	for(String s: in.fileExtensions){
		if(!s.startsWith(".")){
			s="."+s;
		}
		liste.add(s);
	}
	
	in.fileExtensions.clear();
	in.fileExtensions.addAll(liste);
}' #txt
Fs0 f42 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check the file extension list</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f42 590 428 36 24 -99 -37 #rect
Fs0 f42 @|RichDialogProcessStepIcon #fIcon
Fs0 f43 expr out #txt
Fs0 f43 514 440 590 440 #arcP
Fs0 f43 0 0.7961709252384073 0 0 #arcLabel
Fs0 f44 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f44 actionTable 'out=in;
' #txt
Fs0 f44 actionCode 'if(!panel.fileTypesComboBox.listData.isEmpty()){
	int i=0;
	for(String s : in.fileExtensions){
		if(in.fileExtension.trim().equalsIgnoreCase(s)){
			panel.fileTypesComboBox.selectedListEntry = s;
			panel.fileTypesComboBox.setSelectedIndex(i);
			break;
		}
		i++;
	}
	
}' #txt
Fs0 f44 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>choose the default file extension</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f44 662 428 36 24 20 -2 #rect
Fs0 f44 @|RichDialogProcessStepIcon #fIcon
Fs0 f41 expr out #txt
Fs0 f41 680 428 294 232 #arcP
Fs0 f41 1 680 232 #addKink
Fs0 f41 0 0.7708952841881804 0 0 #arcLabel
Fs0 f45 expr out #txt
Fs0 f45 626 440 662 440 #arcP
Fs0 f45 0 0.6943479493773412 0 0 #arcLabel
Fs0 f46 guid 121F7474E887B249 #txt
Fs0 f46 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f46 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f46 actionTable 'out=in;
' #txt
Fs0 f46 actionCode 'if(panel.#fileTypesComboBox.#selectedListEntry!= null && 
		panel.fileTypesComboBox.selectedListEntry instanceof String){
			String s = panel.fileTypesComboBox.selectedListEntry as String;
			// if nothing choosed we take ".doc" as type
			if(s.trim().equalsIgnoreCase("-")){
				out.fileExtension=".doc";
			}else{
				out.fileExtension=s;
			}
}' #txt
Fs0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>combobox selection changed</name>
        <nameStyle>26,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f46 1014 262 20 20 -64 -32 #rect
Fs0 f46 @|RichDialogProcessStartIcon #fIcon
Fs0 f49 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f49 actionTable 'out=in;
' #txt
Fs0 f49 actionCode 'import java.util.regex.Matcher;
import java.util.regex.Pattern;

if(panel.fileNameTextField.getText().trim().length()>0){
	Pattern p = Pattern.compile(".*[/\\\\:.*?\"<>|].*");
	Matcher m = p.matcher(panel.fileNameTextField.getText().trim());
	if (m.matches())
	{
	  panel.warnLabel.setText(ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/invalidCharacterInFileName"));
		panel.warnLabel.visible=true;
		panel.okButton.setEnabled(false);
	}
	else if(in.fileExtension.trim().length()>1){
		java.io.File file = new java.io.File(in.path+panel.fileNameTextField.getText().trim()+in.fileExtension);
		if(file.exists()){
			panel.warnLabel.setText(ivy.cms.co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/information/fileAlreadyExists"));
			panel.warnLabel.visible=true;
			panel.okButton.setEnabled(true);
		}else{
			panel.warnLabel.visible=false;
			panel.okButton.setEnabled(true);
		}
	}else{
		panel.warnLabel.visible=false;
		panel.okButton.setEnabled(true);
	}
}else{
	panel.warnLabel.visible=false;
	panel.okButton.setEnabled(false);
}' #txt
Fs0 f49 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check validity of file name
and if file already exists</name>
        <nameStyle>54,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f49 838 300 36 24 20 -2 #rect
Fs0 f49 @|RichDialogProcessStepIcon #fIcon
Fs0 f50 expr out #txt
Fs0 f50 856 282 856 300 #arcP
Fs0 f29 expr out #txt
Fs0 f29 856 324 856 347 #arcP
Fs0 f51 expr out #txt
Fs0 f51 1024 282 874 312 #arcP
Fs0 f51 1 1024 312 #addKink
Fs0 f51 1 0.36906732753654475 0 0 #arcLabel
Fs0 f20 expr out #txt
Fs0 f20 1166 312 874 312 #arcP
Fs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithoutPlaceChooser(String,String,List&lt;String&gt;)</name>
        <nameStyle>52,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f21 guid 1253F552852B3926 #txt
Fs0 f21 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f21 method startWithoutPlaceChooser(String,String,List<String>) #txt
Fs0 f21 disableUIEvents true #txt
Fs0 f21 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String defaultExtension,List<java.lang.String> filesExtensions> param = methodEvent.getInputArguments();
' #txt
Fs0 f21 inParameterMapAction 'out.allowPathChooser=false;
out.fileExtension=param.defaultExtension;
out.fileExtensions=param.filesExtensions;
out.freePath=param.path;
out.path=param.path;
out.showFileTypeChooser=true;
' #txt
Fs0 f21 outParameterDecl '<java.lang.String path,java.lang.String fileName,java.lang.String choosedExtension> result;
' #txt
Fs0 f21 outParameterMapAction 'result.path=in.path;
result.fileName=in.fileName;
result.choosedExtension=in.fileExtension;
' #txt
Fs0 f21 embeddedRdInitializations '* ' #txt
Fs0 f21 494 550 20 20 -249 15 #rect
Fs0 f21 @|RichDialogInitStartIcon #fIcon
Fs0 f47 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f47 actionTable 'out=in;
' #txt
Fs0 f47 actionCode 'panel.twoLabel.visible=false;
panel.destinationFolderLabel.visible=false;
panel.pathLabel.visible=false;
panel.FlowLayoutPane.visible=false;
panel.threeLabel.setText("2.");
' #txt
Fs0 f47 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>hidde the second &quot;step&quot;
path chooser</name>
        <nameStyle>36,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f47 590 548 36 24 20 -2 #rect
Fs0 f47 @|RichDialogProcessStepIcon #fIcon
Fs0 f48 expr out #txt
Fs0 f48 514 560 590 560 #arcP
Fs0 f52 expr out #txt
Fs0 f52 608 548 608 452 #arcP
Fs0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithoutFileExtensionsChooser
AndWithoutPathChooser(String,String)</name>
        <nameStyle>70,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f53 guid 1253F7515B957202 #txt
Fs0 f53 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f53 method startWithoutFileExtensionsChooserAndWithoutPathChooser(String,String) #txt
Fs0 f53 disableUIEvents true #txt
Fs0 f53 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String extension> param = methodEvent.getInputArguments();
' #txt
Fs0 f53 inParameterMapAction 'out.allowPathChooser=false;
out.fileExtension=param.extension;
out.freePath=param.path;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f53 outParameterDecl '<java.lang.String path,java.lang.String filename> result;
' #txt
Fs0 f53 outParameterMapAction 'result.path=in.path;
result.filename=in.fileName;
' #txt
Fs0 f53 embeddedRdInitializations '* ' #txt
Fs0 f53 446 30 20 20 12 -27 #rect
Fs0 f53 @|RichDialogInitStartIcon #fIcon
Fs0 f55 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f55 actionTable 'out=in;
' #txt
Fs0 f55 actionCode 'panel.twoLabel.visible=false;
panel.destinationFolderLabel.visible=false;
panel.pathLabel.visible=false;
panel.FlowLayoutPane.visible=false;
panel.threeLabel.setText("2.");
' #txt
Fs0 f55 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f55 374 28 36 24 20 -2 #rect
Fs0 f55 @|RichDialogProcessStepIcon #fIcon
Fs0 f56 expr out #txt
Fs0 f56 446 40 410 40 #arcP
Fs0 f56 0 0.8146107524066343 0 0 #arcLabel
Fs0 f54 expr out #txt
Fs0 f54 374 40 280 218 #arcP
Fs0 f54 1 328 40 #addKink
Fs0 f54 2 280 88 #addKink
Fs0 f54 1 0.5268200010923928 0 0 #arcLabel
Fs0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithOptionalFileTypChooser
AndDBInformations
(String,String,String,List&lt;String&gt;,String,String,String)</name>
        <nameStyle>106,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f57 guid 1274D8A3B60D9FA9 #txt
Fs0 f57 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f57 method startWithOptionalFileTypChooserAndDBInformations(String,String,String,List<String>,String,String,String) #txt
Fs0 f57 disableUIEvents true #txt
Fs0 f57 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath,java.lang.String defaultExtension,List<java.lang.String> filesExtensions,java.lang.String ivyDBConnexionName,java.lang.String DBTableName,java.lang.String DBSchemaName> param = methodEvent.getInputArguments();
' #txt
Fs0 f57 inParameterMapAction 'out.allowPathChooser=true;
out.DBSchemaName=param.DBSchemaName;
out.DBTableName=param.DBTableName;
out.fileExtension=param.defaultExtension;
out.fileExtensions=param.filesExtensions;
out.freePath=param.freePath;
out.ivyConnectionName=param.ivyDBConnexionName;
out.path=param.path;
out.showFileTypeChooser=true;
' #txt
Fs0 f57 outParameterDecl '<java.lang.String path,java.lang.String filename,java.lang.String choosedExtension> result;
' #txt
Fs0 f57 outParameterMapAction 'result.path=in.path;
result.filename=in.fileName;
result.choosedExtension=in.fileExtension;
' #txt
Fs0 f57 embeddedRdInitializations '* ' #txt
Fs0 f57 382 494 20 20 -193 -7 #rect
Fs0 f57 @|RichDialogInitStartIcon #fIcon
Fs0 f59 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startwithPathesAndDBInformations(String,String,String,String,String)</name>
        <nameStyle>68,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f59 guid 1274D8B72E48486B #txt
Fs0 f59 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f59 method startwithPathesAndDBInformations(String,String,String,String,String) #txt
Fs0 f59 disableUIEvents true #txt
Fs0 f59 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath,java.lang.String ivyDBConnexionName,java.lang.String DBTableName,java.lang.String DBSchemaName> param = methodEvent.getInputArguments();
' #txt
Fs0 f59 inParameterMapAction 'out.allowPathChooser=true;
out.DBSchemaName=param.DBSchemaName;
out.DBTableName=param.DBTableName;
out.fileExtension="";
out.freePath=param.freePath;
out.ivyConnectionName=param.ivyDBConnexionName;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f59 outParameterDecl '<java.lang.String choosedFileName,java.lang.String choosedPath> result;
' #txt
Fs0 f59 outParameterMapAction 'result.choosedFileName=in.fileName;
result.choosedPath=in.path;
' #txt
Fs0 f59 embeddedRdInitializations '* ' #txt
Fs0 f59 318 78 20 20 13 0 #rect
Fs0 f59 @|RichDialogInitStartIcon #fIcon
Fs0 f60 expr out #txt
Fs0 f60 318 88 280 218 #arcP
Fs0 f60 1 280 88 #addKink
Fs0 f60 1 0.3098082972691463 0 0 #arcLabel
Fs0 f61 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithPathesAndFileExtAndDBInformations(String,String,String,String,String,String)</name>
        <nameStyle>85,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f61 guid 1274D8BD45D7E8F2 #txt
Fs0 f61 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f61 method startWithPathesAndFileExtAndDBInformations(String,String,String,String,String,String) #txt
Fs0 f61 disableUIEvents true #txt
Fs0 f61 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath,java.lang.String fileExtension,java.lang.String ivyDbConnexionName,java.lang.String DBTableName,java.lang.String DBSchemaName> param = methodEvent.getInputArguments();
' #txt
Fs0 f61 inParameterMapAction 'out.allowPathChooser=true;
out.DBSchemaName=param.DBSchemaName;
out.DBTableName=param.DBTableName;
out.fileExtension=param.fileExtension;
out.freePath=param.freePath;
out.ivyConnectionName=param.ivyDbConnexionName;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f61 outParameterDecl '<java.lang.String path,java.lang.String fileName> result;
' #txt
Fs0 f61 outParameterMapAction 'result.path=in.path;
result.fileName=in.fileName;
' #txt
Fs0 f61 embeddedRdInitializations '* ' #txt
Fs0 f61 318 158 20 20 13 0 #rect
Fs0 f61 @|RichDialogInitStartIcon #fIcon
Fs0 f62 expr out #txt
Fs0 f62 402 504 608 452 #arcP
Fs0 f62 1 608 504 #addKink
Fs0 f62 1 0.24904711490022688 0 0 #arcLabel
Fs0 f58 expr out #txt
Fs0 f58 318 168 280 218 #arcP
Fs0 f58 1 280 168 #addKink
Fs0 f58 1 0.011845518623600827 0 0 #arcLabel
Fs0 f63 guid 12B9A785AC137000 #txt
Fs0 f63 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f63 method _close() #txt
Fs0 f63 disableUIEvents false #txt
Fs0 f63 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f63 inParameterMapAction 'out.fileName="";
out.path="";
' #txt
Fs0 f63 outParameterDecl '<> result;
' #txt
Fs0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_close()</name>
        <nameStyle>8,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f63 1230 86 20 20 13 0 #rect
Fs0 f63 @|RichDialogMethodStartIcon #fIcon
Fs0 f64 expr out #txt
Fs0 f64 1240 106 1077 120 #arcP
Fs0 f64 1 1240 120 #addKink
Fs0 f64 1 0.42354265956062037 0 0 #arcLabel
Fs0 f65 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithPathesAndFileExtAndUseIvySystemDb(String,String,String)</name>
        <nameStyle>64,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f65 guid 12BDD7853BA6CE72 #txt
Fs0 f65 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f65 method startWithPathesAndFileExtAndUseIvySystemDb(String,String,String) #txt
Fs0 f65 disableUIEvents true #txt
Fs0 f65 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path,java.lang.String freePath,java.lang.String fileExtension> param = methodEvent.getInputArguments();
' #txt
Fs0 f65 inParameterMapAction 'out.allowPathChooser=true;
out.freePath=param.freePath;
out.path=param.path;
out.showFileTypeChooser=false;
' #txt
Fs0 f65 outParameterDecl '<java.lang.String path,java.lang.String fileName> result;
' #txt
Fs0 f65 outParameterMapAction 'result.path=in.path;
result.fileName=in.fileName;
' #txt
Fs0 f65 embeddedRdInitializations '* ' #txt
Fs0 f65 318 190 20 20 13 0 #rect
Fs0 f65 @|RichDialogInitStartIcon #fIcon
Fs0 f66 expr out #txt
Fs0 f66 318 200 280 218 #arcP
Fs0 f66 1 280 200 #addKink
Fs0 f66 0 0.6519150637579547 0 0 #arcLabel
Fs0 f67 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f67 1170 242 28 28 14 0 #rect
Fs0 f67 @|AlternativeIcon #fIcon
Fs0 f68 expr out #txt
Fs0 f68 1184 226 1184 242 #arcP
Fs0 f19 expr in #txt
Fs0 f19 1184 270 1184 300 #arcP
Fs0 f69 targetWindow NEW:card: #txt
Fs0 f69 targetDisplay TOP #txt
Fs0 f69 richDialogId ch.ivyteam.ivy.addons.filemanager.FileManager #txt
Fs0 f69 startMethod startAsPathChooserWithIvySystemDb(String) #txt
Fs0 f69 type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
Fs0 f69 requestActionDecl '<String serverPath> param;' #txt
Fs0 f69 requestMappingAction 'param.serverPath=in.freePath;
' #txt
Fs0 f69 responseActionDecl 'ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData out;
' #txt
Fs0 f69 responseMappingAction 'out=in;
' #txt
Fs0 f69 responseActionCode 'if(result.choosedPath.trim().length()>2){
	out.path=result.choosedPath;
}' #txt
Fs0 f69 windowConfiguration '{/title "<%=in.windowTitle%>"/width 780 /height 400 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Fs0 f69 isAsynch false #txt
Fs0 f69 isInnerRd true #txt
Fs0 f69 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>pathChooser
IvySystemDB</name>
        <nameStyle>12,7,9
11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f69 1166 364 36 24 20 -2 #rect
Fs0 f69 @|RichDialogIcon #fIcon
Fs0 f70 expr in #txt
Fs0 f70 1198 256 1202 376 #arcP
Fs0 f70 1 1304 256 #addKink
Fs0 f70 2 1304 376 #addKink
Fs0 f70 1 0.23121076568729693 0 0 #arcLabel
Fs0 f71 expr out #txt
Fs0 f71 1166 372 874 316 #arcP
>Proto Fs0 .type ch.ivyteam.ivy.addons.filemanager.FileNameDialog.FileNameDialogData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>222</swimlaneSize>
    <swimlaneSize>592</swimlaneSize>
    <swimlaneColor>-39322</swimlaneColor>
    <swimlaneColor>-10027162</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 .rdData2UIAction 'panel.fileTypesComboBox.listData=in.fileExtensions;
panel.fileTypesComboBox.visible=in.showFileTypeChooser;
panel.pathLabel.text=in.path;
panel.threeLabel.text=IF(in.allowPathChooser, "3.","2.");
panel.twoLabel.visible=in.allowPathChooser;
panel.destinationFolderLabel.visible=in.allowPathChooser;
panel.pathLabel.visible=in.allowPathChooser;
panel.Button.visible=in.allowPathChooser;
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 in #connect
Fs0 f4 out f7 tail #connect
Fs0 f7 head f6 mainIn #connect
Fs0 f6 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 f4 out f13 tail #connect
Fs0 f13 head f12 mainIn #connect
Fs0 f14 mainOut f15 tail #connect
Fs0 f15 head f1 mainIn #connect
Fs0 f12 mainOut f2 tail #connect
Fs0 f2 head f14 mainIn #connect
Fs0 f0 mainOut f22 tail #connect
Fs0 f22 head f12 mainIn #connect
Fs0 f25 mainOut f26 tail #connect
Fs0 f26 head f23 mainIn #connect
Fs0 f30 mainOut f31 tail #connect
Fs0 f31 head f4 in #connect
Fs0 f32 ao f33 tail #connect
Fs0 f33 head f27 @CG|ai #connect
Fs0 f16 mainOut f35 tail #connect
Fs0 f35 head f34 in #connect
Fs0 f34 out f24 tail #connect
Fs0 f24 head f23 mainIn #connect
Fs0 f34 out f37 tail #connect
Fs0 f37 head f36 mainIn #connect
Fs0 f8 mainOut f39 tail #connect
Fs0 f39 head f38 mainIn #connect
Fs0 f38 mainOut f11 tail #connect
Fs0 f11 head f10 mainIn #connect
Fs0 f40 mainOut f43 tail #connect
Fs0 f43 head f42 mainIn #connect
Fs0 f42 mainOut f45 tail #connect
Fs0 f45 head f44 mainIn #connect
Fs0 f44 mainOut f41 tail #connect
Fs0 f41 head f4 in #connect
Fs0 f27 mainOut f50 tail #connect
Fs0 f50 head f49 mainIn #connect
Fs0 f49 mainOut f29 tail #connect
Fs0 f29 head f28 mainIn #connect
Fs0 f46 mainOut f51 tail #connect
Fs0 f51 head f49 mainIn #connect
Fs0 f18 mainOut f20 tail #connect
Fs0 f20 head f49 mainIn #connect
Fs0 f21 mainOut f48 tail #connect
Fs0 f48 head f47 mainIn #connect
Fs0 f47 mainOut f52 tail #connect
Fs0 f52 head f42 mainIn #connect
Fs0 f53 mainOut f56 tail #connect
Fs0 f56 head f55 mainIn #connect
Fs0 f55 mainOut f54 tail #connect
Fs0 f54 head f4 in #connect
Fs0 f59 mainOut f60 tail #connect
Fs0 f60 head f4 in #connect
Fs0 f57 mainOut f62 tail #connect
Fs0 f62 head f42 mainIn #connect
Fs0 f61 mainOut f58 tail #connect
Fs0 f58 head f4 in #connect
Fs0 f63 mainOut f64 tail #connect
Fs0 f64 head f23 mainIn #connect
Fs0 f65 mainOut f66 tail #connect
Fs0 f66 head f4 in #connect
Fs0 f17 mainOut f68 tail #connect
Fs0 f68 head f67 in #connect
Fs0 f67 out f19 tail #connect
Fs0 f19 head f18 mainIn #connect
Fs0 f67 out f70 tail #connect
Fs0 f70 head f69 mainIn #connect
Fs0 f69 mainOut f71 tail #connect
Fs0 f71 head f49 mainIn #connect
