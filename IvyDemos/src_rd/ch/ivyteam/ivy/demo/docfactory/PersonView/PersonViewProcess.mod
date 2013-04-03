[Ivy]
[>Created: Thu Feb 28 14:08:26 EST 2013]
12E0935AE7462DA2 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PersonViewProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogProcessStep f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @RichDialogProcessStart f5 '' #zField
Ps0 @CallSub f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @RichDialogProcessStep f8 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @Alternative f10 '' #zField
Ps0 @PushWFArc f11 '' #zField
Ps0 @RichDialog f12 '' #zField
Ps0 @PushWFArc f13 '' #zField
Ps0 @RichDialogProcessStep f14 '' #zField
Ps0 @PushWFArc f15 '' #zField
Ps0 @RichDialogProcessEnd f16 '' #zField
Ps0 @PushWFArc f17 '' #zField
Ps0 @RichDialogProcessEnd f18 '' #zField
Ps0 @PushWFArc f19 '' #zField
Ps0 @RichDialogProcessStart f20 '' #zField
Ps0 @RichDialogEnd f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @RichDialogProcessStep f23 '' #zField
Ps0 @PushWFArc f24 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 PersonViewProcess #zField
Ps0 f0 guid 12E0935AE94C43FC #txt
Ps0 f0 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '{/desktopHandlerPanel {/fieldName "desktopHandlerPanel"/startMethod "startVisible(Boolean)"/parameterMapping "param.visible=false;\n"/initScript ""/userContext * }}' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 102 38 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f1 102 214 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.supportedFormats.addAll(BaseDocFactory.getSupportedFormats());

panel.formatComboBox.setListData(in.supportedFormats);' #txt
Ps0 f3 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f3 94 84 36 24 20 -2 #rect
Ps0 f3 @|RichDialogProcessStepIcon #fIcon
Ps0 f4 expr out #txt
Ps0 f4 112 58 112 84 #arcP
Ps0 f5 guid 12E094F3B81EB3DA #txt
Ps0 f5 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f5 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f5 actionTable 'out=in;
out.person.gender=panel.mCheckBox.selected?"M":"F";
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeLetter</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 254 38 20 20 -29 -29 #rect
Ps0 f5 @|RichDialogProcessStartIcon #fIcon
Ps0 f6 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f6 processCall 'Functional Processes/writeSerialLetterToOneCorrespondent:writeDocumentWithOneDataClass(ch.ivyteam.ivy.scripting.objects.CompositeObject,String,String,String,String)' #txt
Ps0 f6 doCall true #txt
Ps0 f6 requestActionDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject data,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath> param;
' #txt
Ps0 f6 requestMappingAction 'param.data=in.person;
param.optionalLetterName=in.letterName;
param.optionalOutputFormat=in.format;
param.templatePath=in.templatePath;
' #txt
Ps0 f6 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f6 responseMappingAction 'out=in;
out.fileOperationMessage=result.fileOperationMessage;
' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithOneDataClass(CompositeObject,String,String,String,String)</name>
        <nameStyle>74,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 246 84 36 24 20 -2 #rect
Ps0 f6 @|CallSubIcon #fIcon
Ps0 f7 expr out #txt
Ps0 f7 264 58 264 84 #arcP
Ps0 f8 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'if(in.supportedFormats.size()>0){
	panel.formatComboBox.setSelectedIndex(0);
}' #txt
Ps0 f8 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f8 94 124 36 24 20 -2 #rect
Ps0 f8 @|RichDialogProcessStepIcon #fIcon
Ps0 f9 expr out #txt
Ps0 f9 112 108 112 124 #arcP
Ps0 f10 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>error?</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 250 130 28 28 14 0 #rect
Ps0 f10 @|AlternativeIcon #fIcon
Ps0 f11 expr out #txt
Ps0 f11 264 108 264 130 #arcP
Ps0 f12 targetWindow NEW:card: #txt
Ps0 f12 targetDisplay TOP #txt
Ps0 f12 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ps0 f12 startMethod showMessageWithTitle(String,String) #txt
Ps0 f12 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f12 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Ps0 f12 requestMappingAction 'param.aMessageTitle="ERROR";
param.aMessageText=in.fileOperationMessage.message;
' #txt
Ps0 f12 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f12 responseMappingAction 'out=in;
' #txt
Ps0 f12 windowConfiguration '{/title "ERROR"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f12 isAsynch false #txt
Ps0 f12 isInnerRd true #txt
Ps0 f12 userContext '* ' #txt
Ps0 f12 326 132 36 24 20 -2 #rect
Ps0 f12 @|RichDialogIcon #fIcon
Ps0 f13 expr in #txt
Ps0 f13 outCond in.fileOperationMessage.type==in.fileOperationMessage.ERROR_MESSAGE #txt
Ps0 f13 278 144 326 144 #arcP
Ps0 f14 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 actionCode 'if(in.fileOperationMessage.files.size()>0){
	panel.desktopHandlerPanel.openFile(in.fileOperationMessage.files.get(0));
}' #txt
Ps0 f14 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>openFile</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 246 188 36 24 20 -2 #rect
Ps0 f14 @|RichDialogProcessStepIcon #fIcon
Ps0 f15 expr in #txt
Ps0 f15 264 158 264 188 #arcP
Ps0 f16 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f16 334 190 20 20 13 0 #rect
Ps0 f16 @|RichDialogProcessEndIcon #fIcon
Ps0 f17 expr out #txt
Ps0 f17 344 156 344 190 #arcP
Ps0 f18 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f18 254 254 20 20 13 0 #rect
Ps0 f18 @|RichDialogProcessEndIcon #fIcon
Ps0 f19 expr out #txt
Ps0 f19 264 212 264 254 #arcP
Ps0 f20 guid 12E09567FEB65259 #txt
Ps0 f20 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f20 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f20 510 150 20 20 13 0 #rect
Ps0 f20 @|RichDialogProcessStartIcon #fIcon
Ps0 f21 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f21 guid 12E0956A1504AC30 #txt
Ps0 f21 510 198 20 20 13 0 #rect
Ps0 f21 @|RichDialogEndIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 520 170 520 198 #arcP
Ps0 f23 actionDecl 'ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 actionCode 'import ch.ivyteam.ivy.cm.IContentObjectValue;
File f = new File("/docfactory/templatecache/myTemplate");
if (! f.exists())
{
    //legt leeres file an (muss vorhanden sein für export)
    f.createNewFile();          
 		// export content from cms
    IContentObjectValue cov = ivy.cms.getContentObjectValue("/docfactory/templatecache/myTemplate", null,true);
    cov.exportContentToFile(f.getJavaFile(), null);
}

if(f.exists()){
	in.templatePath = f.getAbsolutePath();
}
' #txt
Ps0 f23 type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTemplatePath</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 94 164 36 24 20 -2 #rect
Ps0 f23 @|RichDialogProcessStepIcon #fIcon
Ps0 f24 expr out #txt
Ps0 f24 112 148 112 164 #arcP
Ps0 f2 expr out #txt
Ps0 f2 112 188 112 214 #arcP
>Proto Ps0 .ui2RdDataAction 'out.person.address=panel.addressTextArea.text;
out.person.firstname=panel.firstNameTextField.valueAsString;
out.format=panel.formatComboBox.selectedListEntry as String;
out.letterName=panel.letterNameTextField.valueAsString;
out.person.name=panel.nameTextField.valueAsString;
' #txt
>Proto Ps0 .rdData2UIAction 'panel.addressTextArea.text=in.person.address;
panel.desktopHandlerPanel.visible=false;
panel.firstNameTextField.valueAsString=in.person.firstname;
panel.formatComboBox.listData=in.supportedFormats;
panel.letterNameTextField.valueAsString=in.letterName;
panel.nameTextField.valueAsString=in.person.name;
' #txt
>Proto Ps0 .type ch.ivyteam.ivy.demo.docfactory.PersonView.PersonViewData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f5 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f3 mainOut f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f6 mainOut f11 tail #connect
Ps0 f11 head f10 in #connect
Ps0 f10 out f13 tail #connect
Ps0 f13 head f12 mainIn #connect
Ps0 f10 out f15 tail #connect
Ps0 f15 head f14 mainIn #connect
Ps0 f12 mainOut f17 tail #connect
Ps0 f17 head f16 mainIn #connect
Ps0 f14 mainOut f19 tail #connect
Ps0 f19 head f18 mainIn #connect
Ps0 f20 mainOut f22 tail #connect
Ps0 f22 head f21 mainIn #connect
Ps0 f8 mainOut f24 tail #connect
Ps0 f24 head f23 mainIn #connect
Ps0 f23 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
