[Ivy]
[>Created: Wed May 27 23:05:41 CEST 2009]
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
Qs0 @PushWFArc f2 '' #zField
Qs0 @RichDialogInitStart f8 '' #zField
Qs0 @RichDialogInitStart f10 '' #zField
Qs0 @RichDialogInitStart f11 '' #zField
Qs0 @RichDialogInitStart f14 '' #zField
Qs0 @RichDialogProcessStep f15 '' #zField
Qs0 @PushWFArc f16 '' #zField
Qs0 @PushWFArc f7 '' #zField
Qs0 @PushWFArc f17 '' #zField
Qs0 @PushWFArc f13 '' #zField
Qs0 @PushWFArc f9 '' #zField
Qs0 @PushWFArc f12 '' #zField
>Proto Qs0 Qs0 QuestionDialogProcess #zField
Qs0 f0 guid 1180E4A519E73650 #txt
Qs0 f0 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f0 method askQuestion(String,String,List<String>) #txt
Qs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String question,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Qs0 f0 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.question;
' #txt
Qs0 f0 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f0 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f0 embeddedRdInitializations '* ' #txt
Qs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestion(String,String,String)</name>
        <nameStyle>33,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f0 62 62 20 20 13 0 #rect
Qs0 f0 @|RichDialogInitStartIcon #fIcon
Qs0 f1 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f1 59 363 26 26 14 0 #rect
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
Qs0 f3 854 30 20 20 13 0 #rect
Qs0 f3 @|RichDialogProcessStartIcon #fIcon
Qs0 f4 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f4 guid 1180E4CB12BEE6A1 #txt
Qs0 f4 851 355 26 26 14 0 #rect
Qs0 f4 @|RichDialogEndIcon #fIcon
Qs0 f5 expr out #txt
Qs0 f5 864 50 864 355 #arcP
Qs0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData out;
' #txt
Qs0 f6 actionTable 'out=in;
' #txt
Qs0 f6 actionCode 'import com.ulcjava.base.application.util.HTMLUtilities;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

panel.buttonPane.setRows(1);
panel.buttonPane.setColumns(in.actionCommandsForButtons.size());

RButton button;
for (int i=0; i<in.actionCommandsForButtons.size(); i++)
{
	String buttonName = in.actionCommandsForButtons.get(i);
	
	button = new RButton();
	
	button.text = in.isCustomButtonsMode? in.textsForButtons.get(i): "<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/" + buttonName + "\")%>";
	
	// if the cms entries does not exist, just put the button name
	if (button.text.length() == 0)
	{
		button.text = buttonName;
	}
	
	button.actionCommand = buttonName;
	
	// define the icon uri
	if (in.isCustomButtonsMode && in.iconUrisForButtons.get(i).length() > 0)
	{
		button.setIconUri(in.iconUrisForButtons.get(i));
	}
	
	
	panel.buttonPane.add(button);
	
	ivy.rd.addEventMapping(button, "button");
	
	if (buttonName.equalsIgnoreCase(in.defaultButton))
	{
		panel.getRootPane().setDefaultButton(button);
	}
}


// display the text
panel.questionTextHtmlPane.setText(HTMLUtilities.convertToHtml(in.questionText));
' #txt
Qs0 f6 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup buttons</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f6 54 244 36 24 21 10 #rect
Qs0 f6 @|RichDialogProcessStepIcon #fIcon
Qs0 f2 expr out #txt
Qs0 f2 72 268 72 363 #arcP
Qs0 f8 guid 119CD4D601442B36 #txt
Qs0 f8 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f8 method askQuestionWithTitle(String,String,String,List<String>) #txt
Qs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String questionTitle,java.lang.String questionText,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Qs0 f8 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.questionText;
out.questionTitle=param.questionTitle;
' #txt
Qs0 f8 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f8 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f8 embeddedRdInitializations '* ' #txt
Qs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestionWithTitle(String,String,String,List&lt;String&gt;)</name>
        <nameStyle>55,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f8 238 62 20 20 13 0 #rect
Qs0 f8 @|RichDialogInitStartIcon #fIcon
Qs0 f10 guid 11C8E1E22C2262AB #txt
Qs0 f10 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f10 method askQuestionWithTitle(String,String,String,List<String>,String) #txt
Qs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String questionTitle,java.lang.String questionText,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Qs0 f10 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
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
Qs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestionWithTitle(String,String,String,List&lt;String&gt;,String)</name>
        <nameStyle>62,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f10 278 102 20 20 20 -7 #rect
Qs0 f10 @|RichDialogInitStartIcon #fIcon
Qs0 f11 guid 11C8E1E34E2E22EE #txt
Qs0 f11 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f11 method askQuestion(String,String,List<String>,String) #txt
Qs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String question,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Qs0 f11 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
out.defaultButton=param.defaultButton;
out.icon=param.icon is initialized ? param.icon : "question";
out.questionText=param.question;
' #txt
Qs0 f11 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f11 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f11 embeddedRdInitializations '* ' #txt
Qs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestion(String,String,List&lt;String&gt;,String)</name>
        <nameStyle>46,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f11 326 134 20 20 20 -5 #rect
Qs0 f11 @|RichDialogInitStartIcon #fIcon
Qs0 f14 guid 012181CD5DA9B891 #txt
Qs0 f14 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f14 method askQuestionWithTitleAndCustomButtons(String,String,String,List<String>,List<String>,List<String>,String) #txt
Qs0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String icon,java.lang.String questionTitle,java.lang.String questionText,List<java.lang.String> actionCommandsForButtons,List<java.lang.String> textsForButtons,List<java.lang.String> iconUrisForButtons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Qs0 f14 inParameterMapAction 'out.actionCommandsForButtons=param.actionCommandsForButtons;
out.defaultButton=param.defaultButton;
out.icon=param.icon is initialized ? param.icon : "question";
out.iconUrisForButtons=param.iconUrisForButtons;
out.isCustomButtonsMode=true;
out.questionText=param.questionText;
out.questionTitle=param.questionTitle;
out.textsForButtons=param.textsForButtons;
' #txt
Qs0 f14 outParameterDecl '<java.lang.String pressedButton> result;
' #txt
Qs0 f14 outParameterMapAction 'result.pressedButton=in.pressedButton;
' #txt
Qs0 f14 embeddedRdInitializations '* ' #txt
Qs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askQuestionWithTitleAndCustomButtons(String,String,String,List&lt;String&gt;,List&lt;String&gt;,List&lt;String&gt;,String)</name>
        <nameStyle>104,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f14 358 214 20 20 -93 -29 #rect
Qs0 f14 @|RichDialogInitStartIcon #fIcon
Qs0 f15 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData out;
' #txt
Qs0 f15 actionTable 'out=in;
' #txt
Qs0 f15 actionCode 'out.isCustomButtonsMode = false;' #txt
Qs0 f15 type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
Qs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the 
isCustomButtonsMode to false</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f15 54 156 36 24 20 -2 #rect
Qs0 f15 @|RichDialogProcessStepIcon #fIcon
Qs0 f16 expr out #txt
Qs0 f16 72 82 72 156 #arcP
Qs0 f7 expr out #txt
Qs0 f7 72 180 72 244 #arcP
Qs0 f17 expr out #txt
Qs0 f17 336 154 90 168 #arcP
Qs0 f17 1 336 168 #addKink
Qs0 f17 1 0.4616508000534543 0 0 #arcLabel
Qs0 f13 expr out #txt
Qs0 f13 248 82 90 168 #arcP
Qs0 f13 1 248 168 #addKink
Qs0 f13 1 0.3940615093366071 0 0 #arcLabel
Qs0 f9 expr out #txt
Qs0 f9 288 122 90 168 #arcP
Qs0 f9 1 288 168 #addKink
Qs0 f9 1 0.48838095238095236 0 0 #arcLabel
Qs0 f12 expr out #txt
Qs0 f12 368 234 90 256 #arcP
Qs0 f12 1 368 256 #addKink
Qs0 f12 1 0.44141699273427454 0 0 #arcLabel
>Proto Qs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>723</swimlaneSize>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16764007</swimlaneColor>
</elementInfo>
' #txt
>Proto Qs0 .type ch.ivyteam.ivy.addons.commondialogs.QuestionDialog.QuestionDialogData #txt
>Proto Qs0 .processKind RICH_DIALOG #txt
>Proto Qs0 .rdData2UIAction 'panel.iconLabel.iconUri="/ch/ivyteam/ivy/addons/icons/large/"+in.icon;
panel.titleLabel.text=in.questionTitle;
panel.titleLabel.visible=in.questionTitle.trim().length()> 0;
' #txt
>Proto Qs0 -8 -8 16 16 16 26 #rect
>Proto Qs0 '' #fIcon
Qs0 f3 mainOut f5 tail #connect
Qs0 f5 head f4 mainIn #connect
Qs0 f6 mainOut f2 tail #connect
Qs0 f2 head f1 mainIn #connect
Qs0 f0 mainOut f16 tail #connect
Qs0 f16 head f15 mainIn #connect
Qs0 f15 mainOut f7 tail #connect
Qs0 f7 head f6 mainIn #connect
Qs0 f11 mainOut f17 tail #connect
Qs0 f17 head f15 mainIn #connect
Qs0 f8 mainOut f13 tail #connect
Qs0 f13 head f15 mainIn #connect
Qs0 f10 mainOut f9 tail #connect
Qs0 f9 head f15 mainIn #connect
Qs0 f14 mainOut f12 tail #connect
Qs0 f12 head f6 mainIn #connect
