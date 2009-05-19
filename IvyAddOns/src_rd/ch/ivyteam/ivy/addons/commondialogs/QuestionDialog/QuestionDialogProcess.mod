[Ivy]
[>Created: Tue May 19 14:55:12 CEST 2009]
1180E439FFBB432D 3.11 #module
>Proto >Proto Collection #zClass
Qs0 QuestionDialogProcess Big #zClass
Qs0 RD #cInfo
Qs0 #process
Qs0 @AnnotationInP-0n ai ai #zField
Qs0 @MessageFlowInP-0n messageIn messageIn #zField
Qs0 @MessageFlowOutP-0n messageOut messageOut #zField
Qs0 @TextInP .xml .xml #zField
Qs0 @TextInP .responsibility .responsibility #zField
Qs0 @TextInP .resExport .resExport #zField
Qs0 @TextInP .type .type #zField
Qs0 @TextInP .processKind .processKind #zField
Qs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Qs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Qs0 @RichDialogInitStart f0 '' #zField
Qs0 @RichDialogProcessEnd f1 '' #zField
Qs0 @RichDialogProcessStart f3 '' #zField
Qs0 @RichDialogEnd f4 '' #zField
Qs0 @PushWFArc f5 '' #zField
Qs0 @RichDialogProcessStep f6 '' #zField
Qs0 @PushWFArc f7 '' #zField
Qs0 @PushWFArc f2 '' #zField
Qs0 @RichDialogInitStart f8 '' #zField
Qs0 @PushWFArc f9 '' #zField
Qs0 @RichDialogInitStart f10 '' #zField
Qs0 @RichDialogInitStart f11 '' #zField
Qs0 @PushWFArc f12 '' #zField
Qs0 @PushWFArc f13 '' #zField
>Proto Qs0 Qs0 QuestionDialogProcess #zField
Qs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestion(String,String,String)</name>
        <nameStyle>33,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f0 guid 1180E4A519E73650 #txt
Qs0 f0 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f0 method askQuestion(String,String,List<String>) #txt
Qs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String question,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Qs0 f0 inParameterMapAction 'out.buttons=param.buttons;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.question;
' #txt
Qs0 f0 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f0 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f0 embeddedRdInitializations '* ' #txt
Qs0 f0 30 30 20 20 13 0 #rect
Qs0 f0 @|RichDialogInitStartIcon #fIcon
Qs0 f1 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f1 27 171 26 26 14 0 #rect
Qs0 f1 @|RichDialogProcessEndIcon #fIcon
Qs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>button</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f3 guid 1180E4CA043D915F #txt
Qs0 f3 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData out;
' #txt
Qs0 f3 actionTable 'out=in;
' #txt
Qs0 f3 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

in.pressedButton = (event.getSource() as RButton).actionCommand;' #txt
Qs0 f3 22 270 20 20 13 0 #rect
Qs0 f3 @|RichDialogProcessStartIcon #fIcon
Qs0 f4 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f4 guid 1180E4CB12BEE6A1 #txt
Qs0 f4 19 347 26 26 14 0 #rect
Qs0 f4 @|RichDialogEndIcon #fIcon
Qs0 f5 expr out #txt
Qs0 f5 32 290 32 347 #arcP
Qs0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData out;
' #txt
Qs0 f6 actionTable 'out=in;
' #txt
Qs0 f6 actionCode 'import com.ulcjava.base.application.util.HTMLUtilities;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

panel.buttonPane.setRows(1);
panel.buttonPane.setColumns(in.buttons.size());

RButton button;
for (String buttonName : in.buttons)
{
	button = new RButton();
	button.text = "<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/"+buttonName+"\")%>";	
	button.actionCommand=buttonName;
	button.setPreferredSize(new com.ulcjava.base.application.util.Dimension(75,23));
	panel.buttonPane.add(button);
	ivy.rd.addEventMapping(button, "button");
	if (buttonName.equalsIgnoreCase(in.defaultButton))
	{
		panel.getRootPane().setDefaultButton(button);
	}
}

panel.questionTextHtmlPane.setText(HTMLUtilities.convertToHtml(in.questionText));


// display the title and text
panel.titleLabel.text = in.questionTitle;
panel.titleLabel.visible = in.questionTitle.trim().length()> 0;
' #txt
Qs0 f6 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup text and buttons</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f6 22 124 36 24 26 -33 #rect
Qs0 f6 @|RichDialogProcessStepIcon #fIcon
Qs0 f7 expr out #txt
Qs0 f7 40 50 40 124 #arcP
Qs0 f2 expr out #txt
Qs0 f2 40 148 40 171 #arcP
Qs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestionWithTitle(String,String,String,List&lt;String&gt;)</name>
        <nameStyle>55,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f8 guid 119CD4D601442B36 #txt
Qs0 f8 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f8 method askQuestionWithTitle(String,String,String,List<String>) #txt
Qs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String questionTitle,java.lang.String questionText,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Qs0 f8 inParameterMapAction 'out.buttons=param.buttons;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.questionText;
out.questionTitle=param.questionTitle;
' #txt
Qs0 f8 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f8 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f8 embeddedRdInitializations '* ' #txt
Qs0 f8 238 30 20 20 13 0 #rect
Qs0 f8 @|RichDialogInitStartIcon #fIcon
Qs0 f9 expr out #txt
Qs0 f9 248 50 58 136 #arcP
Qs0 f9 1 248 136 #addKink
Qs0 f9 1 0.3940615093366071 0 0 #arcLabel
Qs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestionWithTitle(String,String,String,List&lt;String&gt;,String)</name>
        <nameStyle>62,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f10 guid 11C8E1E22C2262AB #txt
Qs0 f10 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f10 method askQuestionWithTitle(String,String,String,List<String>,String) #txt
Qs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String questionTitle,java.lang.String questionText,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Qs0 f10 inParameterMapAction 'out.buttons=param.buttons;
out.defaultButton=param.defaultButton;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.questionText;
out.questionTitle=param.questionTitle;
' #txt
Qs0 f10 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f10 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f10 embeddedRdInitializations '* ' #txt
Qs0 f10 278 70 20 20 20 -7 #rect
Qs0 f10 @|RichDialogInitStartIcon #fIcon
Qs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestion(String,String,List&lt;String&gt;,String)</name>
        <nameStyle>46,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f11 guid 11C8E1E34E2E22EE #txt
Qs0 f11 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f11 method askQuestion(String,String,List<String>,String) #txt
Qs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String question,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Qs0 f11 inParameterMapAction 'out.buttons=param.buttons;
out.defaultButton=param.defaultButton;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.question;
' #txt
Qs0 f11 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f11 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f11 embeddedRdInitializations '* ' #txt
Qs0 f11 326 126 20 20 20 -5 #rect
Qs0 f11 @|RichDialogInitStartIcon #fIcon
Qs0 f12 expr out #txt
Qs0 f12 288 90 58 136 #arcP
Qs0 f12 1 288 136 #addKink
Qs0 f12 1 0.48838095238095236 0 0 #arcLabel
Qs0 f13 expr out #txt
Qs0 f13 326 136 58 136 #arcP
>Proto Qs0 .type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
>Proto Qs0 .processKind RICH_DIALOG #txt
>Proto Qs0 .rdData2UIAction 'panel.iconLabel.iconUri="/ch/ivyteam/ivy/addons/icons/large/"+in.icon;
' #txt
>Proto Qs0 -8 -8 16 16 16 26 #rect
>Proto Qs0 '' #fIcon
Qs0 f3 mainOut f5 tail #connect
Qs0 f5 head f4 mainIn #connect
Qs0 f0 mainOut f7 tail #connect
Qs0 f7 head f6 mainIn #connect
Qs0 f6 mainOut f2 tail #connect
Qs0 f2 head f1 mainIn #connect
Qs0 f8 mainOut f9 tail #connect
Qs0 f9 head f6 mainIn #connect
Qs0 f10 mainOut f12 tail #connect
Qs0 f12 head f6 mainIn #connect
Qs0 f11 mainOut f13 tail #connect
Qs0 f13 head f6 mainIn #connect
