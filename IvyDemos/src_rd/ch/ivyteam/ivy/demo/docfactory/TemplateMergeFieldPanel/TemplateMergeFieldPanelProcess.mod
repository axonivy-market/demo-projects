[Ivy]
[>Created: Thu Jan 28 11:40:26 CET 2010]
1266B7E3613D1425 3.13 #module
>Proto >Proto Collection #zClass
Ts0 TemplateMergeFieldPanelProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogMethodStart f4 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @RichDialogMethodStart f6 '' #zField
Ts0 @RichDialogProcessEnd f9 '' #zField
Ts0 @RichDialogProcessEnd f11 '' #zField
Ts0 @RichDialogProcessEnd f13 '' #zField
Ts0 @RichDialogEnd f7 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @RichDialogProcessStart f15 '' #zField
Ts0 @RichDialogProcessStep f16 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @RichDialogProcessStep f18 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @RichDialogProcessStep f20 '' #zField
Ts0 @PushWFArc f21 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @RichDialogProcessStep f22 '' #zField
Ts0 @PushWFArc f23 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @RichDialogProcessEnd f24 '' #zField
Ts0 @PushWFArc f25 '' #zField
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @PushWFArc f19 '' #zField
Ts0 @PushWFArc f1 '' #zField
>Proto Ts0 Ts0 TemplateMergeFieldPanelProcess #zField
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 guid 1266B7E3623DF7D6 #txt
Ts0 f0 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.isTextMultiline=false;
out.mergeField=new ch.ivyteam.ivy.addons.docfactory.TemplateMergeField("","");
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 38 198 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f4 guid 1266B83FD24CD311 #txt
Ts0 f4 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f4 method close() #txt
Ts0 f4 disableUIEvents false #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Ts0 f4 278 78 20 20 13 0 #rect
Ts0 f4 @|RichDialogMethodStartIcon #fIcon
Ts0 f5 guid 1266B840448C9044 #txt
Ts0 f5 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f5 method getMergeField() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 outParameterDecl '<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField mergeField> result;
' #txt
Ts0 f5 outParameterMapAction 'result.mergeField=in.mergeField;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getMergeField()</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 398 78 20 20 13 0 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f6 guid 1266B8410CB7F714 #txt
Ts0 f6 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f6 method setMergeField(ch.ivyteam.ivy.addons.docfactory.TemplateMergeField) #txt
Ts0 f6 disableUIEvents false #txt
Ts0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField mergeField> param = methodEvent.getInputArguments();
' #txt
Ts0 f6 inParameterMapAction 'out.mergeField=param.mergeField;
' #txt
Ts0 f6 outParameterDecl '<> result;
' #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setMergeField(TemplateMergeField)</name>
        <nameStyle>33,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 278 230 20 20 13 0 #rect
Ts0 f6 @|RichDialogMethodStartIcon #fIcon
Ts0 f9 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f9 398 182 20 20 13 0 #rect
Ts0 f9 @|RichDialogProcessEndIcon #fIcon
Ts0 f11 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f11 278 350 20 20 13 0 #rect
Ts0 f11 @|RichDialogProcessEndIcon #fIcon
Ts0 f13 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f13 86 390 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessEndIcon #fIcon
Ts0 f7 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f7 guid 1266B84C8E09B95F #txt
Ts0 f7 278 142 20 20 13 0 #rect
Ts0 f7 @|RichDialogEndIcon #fIcon
Ts0 f8 expr out #txt
Ts0 f8 288 98 288 142 #arcP
Ts0 f15 guid 1266B8ECD052C69F #txt
Ts0 f15 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f15 actionDecl 'ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData out;
' #txt
Ts0 f15 actionTable 'out=in;
out.isTextMultiline=!in.isTextMultiline;
' #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toogle</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 566 78 20 20 13 0 #rect
Ts0 f15 @|RichDialogProcessStartIcon #fIcon
Ts0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f16 actionDecl 'ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData out;
' #txt
Ts0 f16 actionTable 'out=in;
' #txt
Ts0 f16 actionCode '// the text is displayed in the TextArea
if(in.isTextMultiline){
	panel.fieldValueTextArea.setText(panel.fieldValueTextField.getValueAsString());
	
	panel.toogleButton.setIconUri(ivy.cms.cr("/ch/ivyteam/ivy/demo/docfactory/icons/minus/16"));
	panel.toogleButton.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/demo/docfactory/tooltips/needLessTextPlace"));
	panel.repaint();
}
else{// the text is displayed in the TextField
	panel.fieldValueTextField.setText(panel.fieldValueTextArea.getText());
	
	panel.toogleButton.setIconUri(ivy.cms.cr("/ch/ivyteam/ivy/demo/docfactory/icons/add/16"));
	panel.toogleButton.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/demo/docfactory/tooltips/needMoreTextPlace"));
	panel.repaint();
}' #txt
Ts0 f16 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f16 558 140 36 24 20 -2 #rect
Ts0 f16 @|RichDialogProcessStepIcon #fIcon
Ts0 f17 expr out #txt
Ts0 f17 576 98 576 140 #arcP
Ts0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f18 actionDecl 'ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData out;
' #txt
Ts0 f18 actionTable 'out=in;
' #txt
Ts0 f18 actionCode 'if(in.isTextMultiline){
	
	panel.fieldValueTextArea.setText(in.mergeField.mergeFieldValue);
	panel.toogleButton.setIconUri(ivy.cms.cr("/ch/ivyteam/ivy/demo/docfactory/icons/minus/16"));
	panel.toogleButton.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/demo/docfactory/tooltips/needLessTextPlace"));

}
else{
	
	panel.fieldValueTextField.setText(in.mergeField.mergeFieldValue);
	
	panel.toogleButton.setIconUri(ivy.cms.cr("/ch/ivyteam/ivy/demo/docfactory/icons/add/16"));
	panel.toogleButton.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/demo/docfactory/tooltips/needMoreTextPlace"));

}' #txt
Ts0 f18 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f18 78 300 36 24 20 -2 #rect
Ts0 f18 @|RichDialogProcessStepIcon #fIcon
Ts0 f14 expr out #txt
Ts0 f14 96 324 96 390 #arcP
Ts0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f20 actionDecl 'ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData out;
' #txt
Ts0 f20 actionTable 'out=in;
' #txt
Ts0 f20 actionCode '// value currently displayed in the textArea
if(in.isTextMultiline){
	out.mergeField.mergeFieldValue=panel.fieldValueTextArea.getText();
}else{// value currently displayed in the textField
	out.mergeField.mergeFieldValue=panel.fieldValueTextField.getText();
}' #txt
Ts0 f20 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f20 390 124 36 24 20 -2 #rect
Ts0 f20 @|RichDialogProcessStepIcon #fIcon
Ts0 f21 expr out #txt
Ts0 f21 408 98 408 124 #arcP
Ts0 f10 expr out #txt
Ts0 f10 408 148 408 182 #arcP
Ts0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f22 actionDecl 'ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData out;
' #txt
Ts0 f22 actionTable 'out=in;
' #txt
Ts0 f22 actionCode 'panel.fieldValueTextField.setText(in.mergeField.mergeFieldValue);
panel.fieldValueTextArea.setText(in.mergeField.mergeFieldValue);' #txt
Ts0 f22 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f22 270 284 36 24 20 -2 #rect
Ts0 f22 @|RichDialogProcessStepIcon #fIcon
Ts0 f23 expr out #txt
Ts0 f23 288 250 288 284 #arcP
Ts0 f12 expr out #txt
Ts0 f12 288 308 288 350 #arcP
Ts0 f24 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f24 566 206 20 20 13 0 #rect
Ts0 f24 @|RichDialogProcessEndIcon #fIcon
Ts0 f25 expr out #txt
Ts0 f25 576 164 576 206 #arcP
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String)</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 guid 1266E3C6DB1AF8FF #txt
Ts0 f3 type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
Ts0 f3 method start(String,String) #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String mergeFieldName,java.lang.String mergeFieldValue> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.isTextMultiline=param.mergeFieldValue.contains("\n");
out.mergeField=new ch.ivyteam.ivy.addons.docfactory.TemplateMergeField(param.mergeFieldName,param.mergeFieldValue);
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 embeddedRdInitializations '* ' #txt
Ts0 f3 86 230 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f19 expr out #txt
Ts0 f19 96 250 96 300 #arcP
Ts0 f1 expr out #txt
Ts0 f1 52 217 90 300 #arcP
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>216</swimlaneSize>
    <swimlaneSize>298</swimlaneSize>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-103</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel.TemplateMergeFieldPanelData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .ui2RdDataAction 'out.mergeField.mergeFieldName=panel.fieldNameLabel.text;
' #txt
>Proto Ts0 .rdData2UIAction 'panel.fieldNameLabel.text=in.mergeField.mergeFieldName;
panel.fieldValueTextField.visible=!in.isTextMultiline;
panel.ScrollPane.visible=in.isTextMultiline;
panel.toogleButton.visible=true;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f4 mainOut f8 tail #connect
Ts0 f8 head f7 mainIn #connect
Ts0 f15 mainOut f17 tail #connect
Ts0 f17 head f16 mainIn #connect
Ts0 f18 mainOut f14 tail #connect
Ts0 f14 head f13 mainIn #connect
Ts0 f5 mainOut f21 tail #connect
Ts0 f21 head f20 mainIn #connect
Ts0 f20 mainOut f10 tail #connect
Ts0 f10 head f9 mainIn #connect
Ts0 f6 mainOut f23 tail #connect
Ts0 f23 head f22 mainIn #connect
Ts0 f22 mainOut f12 tail #connect
Ts0 f12 head f11 mainIn #connect
Ts0 f16 mainOut f25 tail #connect
Ts0 f25 head f24 mainIn #connect
Ts0 f3 mainOut f19 tail #connect
Ts0 f19 head f18 mainIn #connect
Ts0 f0 mainOut f1 tail #connect
Ts0 f1 head f18 mainIn #connect
