[Ivy]
[>Created: Tue Sep 23 09:45:22 CEST 2008]
118122EB8FB3ED37 3.10 #module
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
Ss0 f0 guid 118121E168071765 #txt
Ss0 f0 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f0 method askInput(String,String,List<String>) #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String question,java.lang.String defaultValue,List<java.lang.String> buttons> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.buttons=param.buttons;
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
    </language>
</elementInfo>
' #txt
Ss0 f0 38 46 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 f1 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f1 35 155 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 @RichDialogProcessStart f3 '' #zField
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
Ss0 f3 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

in.pressedButton = (event.getSource() as RButton).actionCommand;' #txt
Ss0 f3 30 254 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 @RichDialogEnd f5 '' #zField
Ss0 f5 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f5 guid 118121E6235A4885 #txt
Ss0 f5 27 315 26 26 14 0 #rect
Ss0 f5 @|RichDialogEndIcon #fIcon
Ss0 @PushWFArc f4 '' #zField
Ss0 f4 expr out #txt
Ss0 f4 40 274 40 315 #arcP
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup Buttons</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

RButton button;

for (String buttonName : in.buttons)
{
	button = new RButton();
	button.text = "<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/"+buttonName+"\")%>";	
	button.actionCommand=buttonName;
	panel.buttonPane.add(button);
	ivy.rd.addEventMapping(button, "button");
	if (buttonName.equalsIgnoreCase(in.defaultButton))
	{
		panel.getRootPane().setDefaultButton(button);
	}
}
panel.inputTextField.requestFocus();' #txt
Ss0 f6 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f6 30 100 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 @PushWFArc f7 '' #zField
Ss0 f7 expr out #txt
Ss0 f7 48 66 48 100 #arcP
Ss0 @PushWFArc f2 '' #zField
Ss0 f2 expr out #txt
Ss0 f2 48 124 48 155 #arcP
Ss0 @RichDialogInitStart f8 '' #zField
Ss0 f8 guid 11C8E28C28A7B014 #txt
Ss0 f8 type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
Ss0 f8 method askInput(String,String,List<String>,String) #txt
Ss0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String question,java.lang.String defaultValue,List<java.lang.String> buttons,java.lang.String defaultButton> param = methodEvent.getInputArguments();
' #txt
Ss0 f8 inParameterMapAction 'out.buttons=param.buttons;
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
        <nameStyle>43,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 350 46 20 20 13 0 #rect
Ss0 f8 @|RichDialogInitStartIcon #fIcon
Ss0 @PushWFArc f9 '' #zField
Ss0 f9 expr out #txt
Ss0 f9 350 57 66 109 #arcP
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f5 mainIn #connect
Ss0 f0 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f8 mainOut f9 tail #connect
Ss0 f9 head f6 mainIn #connect
>Proto Ss0 Ss0 SingleLineInputDialogProcess #zField
>Proto Ss0 .type ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog.SingleLineInputDialogData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.question=panel.questionTextArea.text;
out.inputString=panel.inputTextField.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.questionTextArea.text=in.question;
panel.inputTextField.text=in.inputString;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
