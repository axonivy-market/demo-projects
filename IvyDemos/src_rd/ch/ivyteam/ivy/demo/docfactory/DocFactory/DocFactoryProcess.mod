[Ivy]
[>Created: Thu May 19 13:09:42 CEST 2011]
1249C400BC3D817F 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DocFactoryProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogProcessStep f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @RichDialogProcessStep f7 '' #zField
Ds0 @RichDialog f10 '' #zField
Ds0 @PushWFArc f11 '' #zField
Ds0 @RichDialogProcessEnd f12 '' #zField
Ds0 @RichDialogProcessStart f14 '' #zField
Ds0 @RichDialogProcessStart f17 '' #zField
Ds0 @RichDialogProcessStart f18 '' #zField
Ds0 @RichDialogProcessStart f19 '' #zField
Ds0 @RichDialogProcessStep f20 '' #zField
Ds0 @PushWFArc f21 '' #zField
Ds0 @RichDialogProcessEnd f22 '' #zField
Ds0 @PushWFArc f23 '' #zField
Ds0 @RichDialogProcessStep f24 '' #zField
Ds0 @PushWFArc f25 '' #zField
Ds0 @RichDialogProcessEnd f26 '' #zField
Ds0 @PushWFArc f27 '' #zField
Ds0 @CallSub f28 '' #zField
Ds0 @RichDialogProcessEnd f30 '' #zField
Ds0 @RichDialogProcessStep f9 '' #zField
Ds0 @PushWFArc f32 '' #zField
Ds0 @PushWFArc f29 '' #zField
Ds0 @RichDialogProcessStep f33 '' #zField
Ds0 @PushWFArc f34 '' #zField
Ds0 @Alternative f35 '' #zField
Ds0 @PushWFArc f36 '' #zField
Ds0 @RichDialog f16 '' #zField
Ds0 @PushWFArc f37 '' #zField
Ds0 @PushWFArc f38 '' #zField
Ds0 @Alternative f39 '' #zField
Ds0 @PushWFArc f40 '' #zField
Ds0 @RichDialogProcessStep f41 '' #zField
Ds0 @PushWFArc f42 '' #zField
Ds0 @PushWFArc f43 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @PushWFArc f6 '' #zField
Ds0 @RichDialogProcessStep f15 '' #zField
Ds0 @PushWFArc f44 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RichDialog f47 '' #zField
Ds0 @PushWFArc f31 '' #zField
Ds0 @RichDialogProcessStep f55 '' #zField
Ds0 @PushWFArc f56 '' #zField
Ds0 @PushWFArc f45 '' #zField
Ds0 @RichDialogProcessStep f46 '' #zField
Ds0 @PushWFArc f48 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @RichDialogProcessStart f49 '' #zField
Ds0 @RichDialog f50 '' #zField
Ds0 @PushWFArc f51 '' #zField
Ds0 @RichDialogProcessEnd f52 '' #zField
Ds0 @PushWFArc f53 '' #zField
>Proto Ds0 Ds0 DocFactoryProcess #zField
Ds0 f0 guid 1249C400BF264099 #txt
Ds0 f0 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/documents_gear\";\nparam.title=\"Letter Generator\";\nparam.subtitle=\"Demonstrates the usage of the DocFactory framework\";\n"/initScript ""}}' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 110 38 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f1 110 566 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 124A02771202A69C #txt
Ds0 f3 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Correspondant</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 390 62 20 20 -54 -32 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f4 actionTable 'out=in;
' #txt
Ds0 f4 actionCode 'out.lettersNb=in.lettersNb+1;
panel.templateTaskPane.setCollapsed(true);
panel.templateButton.setEnabled(false);' #txt
Ds0 f4 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>increases Letter nb
disable template chooser button</name>
        <nameStyle>51,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 382 124 36 24 23 -16 #rect
Ds0 f4 @|RichDialogProcessStepIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 400 82 400 124 #arcP
Ds0 f7 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f7 actionTable 'out=in;
' #txt
Ds0 f7 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;

out.documentFactory = BaseDocFactory.getInstance();

panel.addCorrespondantButton.setEnabled(false);
panel.Button1.setEnabled(false);

' #txt
Ds0 f7 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the documentFactory
Object</name>
        <nameStyle>30,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f7 102 140 36 24 20 -2 #rect
Ds0 f7 @|RichDialogProcessStepIcon #fIcon
Ds0 f10 targetWindow THIS #txt
Ds0 f10 targetDisplay EXISTING:default_display #txt
Ds0 f10 richDialogId ch.ivyteam.ivy.demo.docfactory.TemplatePanel #txt
Ds0 f10 startMethod start(String,Boolean,Boolean) #txt
Ds0 f10 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f10 panelName 'Letter <%=in.lettersNb%>' #txt
Ds0 f10 requestActionDecl '<String templatePath, Boolean areButtonsVisible, Boolean showAdvancedOption> param;' #txt
Ds0 f10 requestMappingAction 'param.templatePath=in.templatePath;
param.areButtonsVisible=false;
param.showAdvancedOption=true;
' #txt
Ds0 f10 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f10 responseMappingAction 'out=in;
' #txt
Ds0 f10 windowConfiguration '* ' #txt
Ds0 f10 isAsynch true #txt
Ds0 f10 isInnerRd true #txt
Ds0 f10 isDialog false #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displays a new 
Template Panel</name>
        <nameStyle>30,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f10 382 180 36 24 24 -17 #rect
Ds0 f10 @|RichDialogIcon #fIcon
Ds0 f11 expr out #txt
Ds0 f11 400 148 400 180 #arcP
Ds0 f12 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f12 390 270 20 20 13 0 #rect
Ds0 f12 @|RichDialogProcessEndIcon #fIcon
Ds0 f14 guid 124A5E7FBE15227F #txt
Ds0 f14 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f14 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f14 actionTable 'out=in;
' #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the template</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 390 334 20 20 13 0 #rect
Ds0 f14 @|RichDialogProcessStartIcon #fIcon
Ds0 f17 guid 124A5EF25348F323 #txt
Ds0 f17 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f17 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f17 actionTable 'out=in;
' #txt
Ds0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeSerialLetter</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f17 710 62 20 20 13 0 #rect
Ds0 f17 @|RichDialogProcessStartIcon #fIcon
Ds0 f18 guid 124A5EF627CA5F1C #txt
Ds0 f18 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f18 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f18 actionTable 'out=in;
' #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectOne</name>
        <nameStyle>9,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f18 806 454 20 20 -29 -29 #rect
Ds0 f18 @|RichDialogProcessStartIcon #fIcon
Ds0 f19 guid 124A5EF954480299 #txt
Ds0 f19 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f19 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f19 actionTable 'out=in;
' #txt
Ds0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SelectMore</name>
        <nameStyle>10,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f19 518 454 20 20 -30 -28 #rect
Ds0 f19 @|RichDialogProcessStartIcon #fIcon
Ds0 f20 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f20 actionTable 'out=in;
' #txt
Ds0 f20 actionCode 'if(panel.oneDocCheckBox.isSelected()){
	panel.TextField.setEnabled(true);
	panel.Button1.setEnabled(true);
}else{
	if(!panel.SeparatedocumentsCheckBox.isSelected()){
		panel.Button1.setEnabled(false);
	}
}

if(in.lettersNb==0){
	panel.Button1.setEnabled(false);
}' #txt
Ds0 f20 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If none of the checkbox is selected
disables the create letter button</name>
        <nameStyle>69,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f20 798 500 36 24 20 -2 #rect
Ds0 f20 @|RichDialogProcessStepIcon #fIcon
Ds0 f21 expr out #txt
Ds0 f21 816 474 816 500 #arcP
Ds0 f22 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f22 806 558 20 20 13 0 #rect
Ds0 f22 @|RichDialogProcessEndIcon #fIcon
Ds0 f23 expr out #txt
Ds0 f23 816 524 816 558 #arcP
Ds0 f24 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f24 actionTable 'out=in;
' #txt
Ds0 f24 actionCode 'if(!panel.SeparatedocumentsCheckBox.isSelected() && !panel.oneDocCheckBox.isSelected()){
		panel.Button1.setEnabled(false);
}
else{
	panel.Button1.setEnabled(true);
}

if(in.lettersNb==0){
	panel.Button1.setEnabled(false);
}' #txt
Ds0 f24 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If none of the checkbox is selected
disables the create letter button</name>
        <nameStyle>69,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f24 510 508 36 24 20 -2 #rect
Ds0 f24 @|RichDialogProcessStepIcon #fIcon
Ds0 f25 expr out #txt
Ds0 f25 528 474 528 508 #arcP
Ds0 f26 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f26 518 558 20 20 13 0 #rect
Ds0 f26 @|RichDialogProcessEndIcon #fIcon
Ds0 f27 expr out #txt
Ds0 f27 528 532 528 558 #arcP
Ds0 f28 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f28 processCall 'Functional Processes/writeSerialLetterToManyCorrespondents:writeSerialLettersToManyCorrespondents(String,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate>,Boolean,Boolean,String,String)' #txt
Ds0 f28 doCall true #txt
Ds0 f28 requestActionDecl '<java.lang.String optionalSingleDocumentOutputPath,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate> documentTemplatesList,java.lang.Boolean allInOneDocument,java.lang.Boolean allInSeparatesDocuments,java.lang.String optionalSingleDocumentFormat,java.lang.String optionalSingleDocumentName> param;
' #txt
Ds0 f28 requestMappingAction 'param.documentTemplatesList=in.documentTemplatesList;
param.allInOneDocument=panel.oneDocCheckBox.isSelected();
param.allInSeparatesDocuments=panel.SeparatedocumentsCheckBox.isSelected();
param.optionalSingleDocumentFormat="pdf";
param.optionalSingleDocumentName=panel.TextField.getText().trim();
' #txt
Ds0 f28 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f28 responseMappingAction 'out=in;
out.fileOperationMessage=result.FileOperationMessage;
out.listFileOperationMessage=result.listOfFileOperationMessages;
' #txt
Ds0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WriteSerialLetter
ToManyCorrespondents</name>
        <nameStyle>38,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f28 702 228 36 24 20 -19 #rect
Ds0 f28 @|CallSubIcon #fIcon
Ds0 f28 -14336|-1|-16777216 #nodeStyle
Ds0 f30 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f30 710 422 20 20 13 0 #rect
Ds0 f30 @|RichDialogProcessEndIcon #fIcon
Ds0 f9 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f9 actionTable 'out=in;
' #txt
Ds0 f9 actionCode 'import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
import com.ulcjava.base.application.ULCComponent;

import ch.ivyteam.ivy.demo.docfactory.TemplatePanel.TemplatePanelPanel;
in.documentTemplatesList.clear();
List<ULCComponent> ulcs = panel.TabbedDisplay.getComponents();
for(ULCComponent ulc : ulcs){
	if(ulc instanceof TemplatePanelPanel){
		TemplatePanelPanel tp = ulc as TemplatePanelPanel;
		DocumentTemplate dt = tp.getDocumentTemplateObject();
		
		java.text.NumberFormat nf = java.text.NumberFormat.getInstance();
		nf.setMaximumFractionDigits(1);

		//We make the data to fill the table
		Recordset rs = new Recordset();
		Record r = new Record();
		r.putField("hours",nf.format(Math.random()*10));
		r.putField("desc","Description 1");
		r.putField("date",new Date("19.10.2010"));
		rs.add(r);
		
		r = new Record();
		r.putField("hours",nf.format(Math.random()*10));
		r.putField("desc","Description 2");
		r.putField("date",new Date("20.10.2010"));
		rs.add(r);
		
		r = new Record();
		r.putField("hours",nf.format(Math.random()*10));
		r.putField("desc","Description 2");
		r.putField("date",new Date("21.10.2010"));
		rs.add(r);
		
		//We create a Hashtable in which we put the table name in the template and the corresponding recordset
		java.util.Hashtable htable = new java.util.Hashtable();
		htable.put("reporting",rs);
		
		dt.setTablesNamesAndFieldsHashtable(htable);
		in.documentTemplatesList.add(dt);
	}
}
' #txt
Ds0 f9 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the List of 
DocumentTemplate
For Mail Merge In Table
we add here a recordSet to each DocumentTemplate</name>
        <nameStyle>35,7,9
72,7,14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f9 702 148 36 24 23 -33 #rect
Ds0 f9 @|RichDialogProcessStepIcon #fIcon
Ds0 f32 expr out #txt
Ds0 f32 720 82 720 148 #arcP
Ds0 f29 expr out #txt
Ds0 f29 720 172 720 228 #arcP
Ds0 f33 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f33 actionTable 'out=in;
' #txt
Ds0 f33 actionCode 'import ch.ivyteam.ivy.cm.IContentObjectValue;
File f = new File("/docfactory/templatecache/myTemplateWithTable");
if (! f.exists())
{
    //legt leeres file an (muss vorhanden sein für export)
    f.createNewFile();          
 		// export content from cms
    IContentObjectValue cov = ivy.cms.getContentObjectValue("/docfactory/templatecache/myTemplateWithTable", null,true);
    cov.exportContentToFile(f.getJavaFile(), null);
}


import ch.ivyteam.ivy.addons.docfactory.TemplateMergeField;
panel.Button1.setEnabled(false);
if(f.exists()){
	out.templateExists=true;
	in.templatePath = f.getAbsolutePath();
	in.mergeFieldsInTemplate.clear();
	List<String> fieldsNames = new List<String>();
	fieldsNames.addAll(out.documentFactory.getTemplateFields(in.templatePath));
	for(String s: fieldsNames){
		TemplateMergeField tmf = new TemplateMergeField(s,"");
		in.mergeFieldsInTemplate.add(tmf);
	}	
	panel.addCorrespondantButton.setEnabled(true);
	
}' #txt
Ds0 f33 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>we set the template
with the per default 
inserted doc template in the cms</name>
        <nameStyle>74,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f33 102 196 36 24 20 -22 #rect
Ds0 f33 @|RichDialogProcessStepIcon #fIcon
Ds0 f34 expr out #txt
Ds0 f34 120 164 120 196 #arcP
Ds0 f35 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>template in 
CMS exists?</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f35 106 258 28 28 19 -11 #rect
Ds0 f35 @|AlternativeIcon #fIcon
Ds0 f36 expr out #txt
Ds0 f36 120 220 120 258 #arcP
Ds0 f16 targetWindow NEW:card: #txt
Ds0 f16 targetDisplay TOP #txt
Ds0 f16 richDialogId ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog #txt
Ds0 f16 startMethod askInput(String,String,List<String>,String) #txt
Ds0 f16 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f16 requestActionDecl '<String question, String defaultValue, List<String> buttons, String defaultButton> param;' #txt
Ds0 f16 requestMappingAction 'param.question="PLease indicate the path to your template: ";
param.defaultValue="";
param.buttons=["OK","Cancel"];
param.defaultButton="OK";
' #txt
Ds0 f16 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f16 responseMappingAction 'out=in;
out.templatePath=result.inputString;
' #txt
Ds0 f16 windowConfiguration '{/title "\"Enter the path from the template\""/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ds0 f16 isAsynch false #txt
Ds0 f16 isInnerRd true #txt
Ds0 f16 isDialog false #txt
Ds0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f16 102 332 36 24 20 -2 #rect
Ds0 f16 @|RichDialogIcon #fIcon
Ds0 f37 expr in #txt
Ds0 f37 outCond !in.templateExists #txt
Ds0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>NO</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f37 120 286 120 332 #arcP
Ds0 f38 expr in #txt
Ds0 f38 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>YES</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f38 106 272 110 576 #arcP
Ds0 f38 1 64 272 #addKink
Ds0 f38 2 64 576 #addKink
Ds0 f38 1 0.40386026754962945 0 0 #arcLabel
Ds0 f39 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>template name indicated?</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f39 106 378 28 28 11 3 #rect
Ds0 f39 @|AlternativeIcon #fIcon
Ds0 f40 expr out #txt
Ds0 f40 120 356 120 378 #arcP
Ds0 f41 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f41 actionTable 'out=in;
' #txt
Ds0 f41 actionCode 'import ch.ivyteam.ivy.addons.docfactory.TemplateMergeField;

java.io.File file = new java.io.File(in.templatePath);
if(file.exists()){
	panel.addCorrespondantButton.setEnabled(true);
	panel.Button1.setEnabled(true);
	
	//we get the mergefieldsList from the template
	in.mergeFieldsInTemplate.clear();
	List<String> fieldsNames = new List<String>();
	fieldsNames.addAll(out.documentFactory.getTemplateFields(in.templatePath));
	for(String s: fieldsNames){
		TemplateMergeField tmf = new TemplateMergeField(s,"");
		in.mergeFieldsInTemplate.add(tmf);
	}

}else{
	panel.addCorrespondantButton.setEnabled(false);
	panel.Button1.setEnabled(false);
}' #txt
Ds0 f41 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>if indicated template
exists, enables the button,
else, disables the buttons.</name>
        <nameStyle>77,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f41 102 436 36 24 29 -26 #rect
Ds0 f41 @|RichDialogProcessStepIcon #fIcon
Ds0 f42 expr in #txt
Ds0 f42 outCond !in.templatePath.trim().equalsIgnoreCase("") #txt
Ds0 f42 120 406 120 436 #arcP
Ds0 f43 expr out #txt
Ds0 f43 390 344 138 344 #arcP
Ds0 f2 expr out #txt
Ds0 f2 120 460 120 566 #arcP
Ds0 f6 expr in #txt
Ds0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>NO</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 134 392 130 576 #arcP
Ds0 f6 1 304 392 #addKink
Ds0 f6 2 304 576 #addKink
Ds0 f6 1 0.20254230475648052 0 0 #arcLabel
Ds0 f15 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f15 actionTable 'out=in;
' #txt
Ds0 f15 actionCode ivy.session.loginSessionUser("Developer","Developer"); #txt
Ds0 f15 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login as Developer
because we need Read Project 
Rights</name>
        <nameStyle>55,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f15 102 84 36 24 24 -18 #rect
Ds0 f15 @|RichDialogProcessStepIcon #fIcon
Ds0 f44 expr out #txt
Ds0 f44 120 58 120 84 #arcP
Ds0 f8 expr out #txt
Ds0 f8 120 108 120 140 #arcP
Ds0 f47 targetWindow NEW:card: #txt
Ds0 f47 targetDisplay TOP #txt
Ds0 f47 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ds0 f47 startMethod showMessage(String) #txt
Ds0 f47 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f47 requestActionDecl '<String message> param;' #txt
Ds0 f47 requestMappingAction 'param.message=in.message;
' #txt
Ds0 f47 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f47 responseMappingAction 'out=in;
' #txt
Ds0 f47 windowConfiguration '{/title "<%=in.title%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ds0 f47 isAsynch true #txt
Ds0 f47 isInnerRd true #txt
Ds0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displays result
Message</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f47 702 340 36 24 25 -17 #rect
Ds0 f47 @|RichDialogIcon #fIcon
Ds0 f31 expr out #txt
Ds0 f31 720 364 720 422 #arcP
Ds0 f55 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f55 actionTable 'out=in;
' #txt
Ds0 f55 actionCode 'import ch.ivyteam.ivy.addons.docfactory.FileOperationMessage;

//get the number of the separated letters
Number nb = 0;
for( FileOperationMessage f: in.listFileOperationMessage){
	if(f.type!= FileOperationMessage.ERROR_MESSAGE){
		nb++;
	}
}

if(panel.oneDocCheckBox.isSelected() && panel.SeparatedocumentsCheckBox.isSelected()){
	if(in.fileOperationMessage.type == FileOperationMessage.ERROR_MESSAGE){
		out.message ="An error occured while writing the letters";
		out.title="ERROR";
	}else{
		out.message="The serial letter and "+nb+" separated letters were successfully written.";
		out.title="SUCCESS";
	}
}else if(panel.oneDocCheckBox.isSelected()){
	if(in.fileOperationMessage.type == FileOperationMessage.ERROR_MESSAGE){
		out.message ="An error occured while writing the serial letter";
		out.title="ERROR";
	}else{
		out.message="The serial letter was successfully written.";
		out.title="SUCCESS";
	}
}else if(panel.SeparatedocumentsCheckBox.isSelected()){
	if(nb>0){
		out.message=""+nb+" separated letters were successfully written.";
		out.title="SUCCESS";
	}else{
		out.message ="An error occured while writing the letters";
		out.title="ERROR";
	}
}else{
	out.message ="You didn''t choose to write any letter";
	out.title="Information";
}' #txt
Ds0 f55 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do the result Message</name>
        <nameStyle>21,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f55 702 284 36 24 20 -2 #rect
Ds0 f55 @|RichDialogProcessStepIcon #fIcon
Ds0 f56 expr out #txt
Ds0 f56 720 252 720 284 #arcP
Ds0 f45 expr out #txt
Ds0 f45 720 308 720 340 #arcP
Ds0 f46 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f46 actionTable 'out=in;
' #txt
Ds0 f46 actionCode panel.Button1.setEnabled(true); #txt
Ds0 f46 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enables make Serial Letter</name>
        <nameStyle>26,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f46 382 220 36 24 20 -2 #rect
Ds0 f46 @|RichDialogProcessStepIcon #fIcon
Ds0 f48 expr out #txt
Ds0 f48 400 204 400 220 #arcP
Ds0 f13 expr out #txt
Ds0 f13 400 244 400 270 #arcP
Ds0 f49 guid 12E0968901D9EF28 #txt
Ds0 f49 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f49 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f49 actionTable 'out=in;
' #txt
Ds0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write letter to person</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f49 1102 62 20 20 13 0 #rect
Ds0 f49 @|RichDialogProcessStartIcon #fIcon
Ds0 f50 targetWindow NEW:card: #txt
Ds0 f50 targetDisplay TOP #txt
Ds0 f50 richDialogId ch.ivyteam.ivy.demo.docfactory.PersonView #txt
Ds0 f50 startMethod start() #txt
Ds0 f50 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f50 requestActionDecl '<> param;' #txt
Ds0 f50 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData out;
' #txt
Ds0 f50 responseMappingAction 'out=in;
' #txt
Ds0 f50 windowConfiguration '{/title "Write a letter using a Dataclass as data for the docfactory"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ds0 f50 isAsynch false #txt
Ds0 f50 isInnerRd true #txt
Ds0 f50 userContext '* ' #txt
Ds0 f50 1094 108 36 24 20 -2 #rect
Ds0 f50 @|RichDialogIcon #fIcon
Ds0 f51 expr out #txt
Ds0 f51 1112 82 1112 108 #arcP
Ds0 f52 type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
Ds0 f52 1102 166 20 20 13 0 #rect
Ds0 f52 @|RichDialogProcessEndIcon #fIcon
Ds0 f53 expr out #txt
Ds0 f53 1112 132 1112 166 #arcP
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>325</swimlaneSize>
    <swimlaneSize>876</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
</elementInfo>
' #txt
>Proto Ds0 .type ch.ivyteam.ivy.demo.docfactory.DocFactory.DocFactoryData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f4 mainOut f11 tail #connect
Ds0 f11 head f10 mainIn #connect
Ds0 f18 mainOut f21 tail #connect
Ds0 f21 head f20 mainIn #connect
Ds0 f20 mainOut f23 tail #connect
Ds0 f23 head f22 mainIn #connect
Ds0 f19 mainOut f25 tail #connect
Ds0 f25 head f24 mainIn #connect
Ds0 f24 mainOut f27 tail #connect
Ds0 f27 head f26 mainIn #connect
Ds0 f17 mainOut f32 tail #connect
Ds0 f32 head f9 mainIn #connect
Ds0 f9 mainOut f29 tail #connect
Ds0 f29 head f28 mainIn #connect
Ds0 f7 mainOut f34 tail #connect
Ds0 f34 head f33 mainIn #connect
Ds0 f33 mainOut f36 tail #connect
Ds0 f36 head f35 in #connect
Ds0 f35 out f37 tail #connect
Ds0 f37 head f16 mainIn #connect
Ds0 f35 out f38 tail #connect
Ds0 f38 head f1 mainIn #connect
Ds0 f16 mainOut f40 tail #connect
Ds0 f40 head f39 in #connect
Ds0 f39 out f42 tail #connect
Ds0 f42 head f41 mainIn #connect
Ds0 f14 mainOut f43 tail #connect
Ds0 f43 head f16 mainIn #connect
Ds0 f41 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f39 out f6 tail #connect
Ds0 f6 head f1 mainIn #connect
Ds0 f0 mainOut f44 tail #connect
Ds0 f44 head f15 mainIn #connect
Ds0 f15 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
Ds0 f47 mainOut f31 tail #connect
Ds0 f31 head f30 mainIn #connect
Ds0 f28 mainOut f56 tail #connect
Ds0 f56 head f55 mainIn #connect
Ds0 f55 mainOut f45 tail #connect
Ds0 f45 head f47 mainIn #connect
Ds0 f10 mainOut f48 tail #connect
Ds0 f48 head f46 mainIn #connect
Ds0 f46 mainOut f13 tail #connect
Ds0 f13 head f12 mainIn #connect
Ds0 f49 mainOut f51 tail #connect
Ds0 f51 head f50 mainIn #connect
Ds0 f50 mainOut f53 tail #connect
Ds0 f53 head f52 mainIn #connect
