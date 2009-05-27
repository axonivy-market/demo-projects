[Ivy]
[>Created: Wed May 27 22:55:13 CEST 2009]
11812581269404BC 3.11 #module
>Proto >Proto Collection #zClass
Ss0 SingleLineInputDialogProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogEnd f5 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogInitStart f8 '' #zField
Ss0 @RichDialogProcessStep f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @RichDialogInitStart f9 '' #zField
Ss0 @PushWFArc f13 '' #zField
>Proto Ss0 Ss0 SingleLineInputDialogProcess #zField
Ss0 f0 guid 118121E168071765 #txt
Ss0 f0 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f0 method askInput(String,String,List<String>) #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String question,java.lang.String defaultValue,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
out.inputString=param.defaultValue;
out.question=param.question;
' #txt
Ss0 f0 outParameterDecl '<java.lang.String pressedButton,java.lang.String inputString> result;
' #txt
Ss0 f0 outParameterMapAction 'result.pressedButton=in.pressedButton;
result.inputString=in.inputString;
' #txt
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askInput(String,String,List&lt;String&gt;)</name>
        <nameStyle>36,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 54 62 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f1 51 243 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>button</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 118121E2E0C70A40 #txt
Ss0 f3 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

in.pressedButton = (event.getSource() as RButton).actionCommand;' #txt
Ss0 f3 598 62 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f5 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f5 guid 118121E6235A4885 #txt
Ss0 f5 595 227 26 26 14 0 #rect
Ss0 f5 @|RichDialogEndIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 608 82 608 227 #arcP
Ss0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RButton;


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
	
	// set the icon uri
	if (in.isCustomButtonsMode && in.iconUrisForButtons.get(i).length() > 0)
	{
		button.setIconUri(in.iconUrisForButtons.get(i));	
	}
	
	panel.buttonPane.add(button);
	
	if(buttonName.equalsIgnoreCase(in.defaultButton))
	{
		panel.getRootPane().setDefaultButton(button);
	}
	ivy.rd.addEventMapping(button, "button");
}

panel.inputTextArea.requestFocus();
' #txt
Ss0 f6 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup buttons</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 46 180 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 64 204 64 243 #arcP
Ss0 f8 guid 11C8E07FE97AEE31 #txt
Ss0 f8 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f8 method askInput(String,String,List<String>,String) #txt
Ss0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String question,java.lang.String defaultValue,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Ss0 f8 inParameterMapAction 'out.actionCommandsForButtons=param.buttons;
out.defaultButton=param.defaultButton;
out.inputString=param.defaultValue;
out.question=param.question;
' #txt
Ss0 f8 outParameterDecl '<java.lang.String pressedButton,java.lang.String inputString> result;
' #txt
Ss0 f8 outParameterMapAction 'result.pressedButton=in.pressedButton;
result.inputString=in.inputString;
' #txt
Ss0 f8 embeddedRdInitializations '* ' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askInput(String,String,List&lt;String&gt;,String)</name>
        <nameStyle>43,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 182 94 20 20 13 0 #rect
Ss0 f8 @|RichDialogInitStartIcon #fIcon
Ss0 f10 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'out.isCustomButtonsMode = false;' #txt
Ss0 f10 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the 
isCustomButtonsMode to false</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 46 116 36 24 20 -2 #rect
Ss0 f10 @|RichDialogProcessStepIcon #fIcon
Ss0 f11 expr out #txt
Ss0 f11 64 82 64 116 #arcP
Ss0 f7 expr out #txt
Ss0 f7 64 140 64 180 #arcP
Ss0 f12 expr out #txt
Ss0 f12 192 114 82 128 #arcP
Ss0 f12 1 192 128 #addKink
Ss0 f12 1 0.353308085736738 0 0 #arcLabel
Ss0 f9 guid 12182B082BEAB3EF #txt
Ss0 f9 type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
Ss0 f9 method askInputWithCustomButtons(String,String,List<String>,List<String>,List<String>,String) #txt
Ss0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String question,java.lang.String defaultValue,List<java.lang.String> actionCommandsForButtons,List<java.lang.String> textsForButtons,List<java.lang.String> iconUrisForButtons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Ss0 f9 inParameterMapAction 'out.actionCommandsForButtons=param.actionCommandsForButtons;
out.defaultButton=param.defaultButton;
out.iconUrisForButtons=param.iconUrisForButtons;
out.inputString=param.defaultValue;
out.isCustomButtonsMode=true;
out.question=param.question;
out.textsForButtons=param.textsForButtons;
' #txt
Ss0 f9 outParameterDecl '<java.lang.String pressedButton,java.lang.String inputString> result;
' #txt
Ss0 f9 outParameterMapAction 'result.pressedButton=in.pressedButton;
result.inputString=in.inputString;
' #txt
Ss0 f9 embeddedRdInitializations '* ' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>askInputWithCustomButtons(String,String,List&lt;String&gt;,List&lt;String&gt;,List&lt;String&gt;,String)</name>
        <nameStyle>86,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 278 150 20 20 8 11 #rect
Ss0 f9 @|RichDialogInitStartIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 288 170 82 192 #arcP
Ss0 f13 1 288 192 #addKink
Ss0 f13 1 0.40234048306786263 0 0 #arcLabel
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>458</swimlaneSize>
    <swimlaneSize>300</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16763956</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog.MultiLineInputDialogData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.question=panel.questionTextArea.text;
out.inputString=panel.inputTextArea.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.questionTextArea.text=in.question;
panel.inputTextArea.text=in.inputString;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f5 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f0 mainOut f11 tail #connect
Ss0 f11 head f10 mainIn #connect
Ss0 f10 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f8 mainOut f12 tail #connect
Ss0 f12 head f10 mainIn #connect
Ss0 f9 mainOut f13 tail #connect
Ss0 f13 head f6 mainIn #connect
