[Ivy]
[>Created: Tue Jul 22 13:13:08 CEST 2008]
11B4629BF0FA5CB5 3.10 #module
>Proto >Proto Collection #zClass
Fs0 FavouritesSelectorProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 f0 guid 11B4629BFF9DD8B5 #txt
Fs0 f0 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f0 method start() #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 inParameterMapAction 'out.correct=false;
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/brain\";\nparam.title=\"Quiz\";\nparam.subtitle=\"Please select an answer for each question\";\n"/initScript ""}}' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 102 38 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 f1 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f1 99 187 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 @RichDialogProcessStep f3 '' #zField
Fs0 f3 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode '// question 2 answers
out.question2data.add("Harry Truman");
out.question2data.add("Bill Clinton");
out.question2data.add("George Bush");
out.question2data.add("Tony Blair");
out.question2data.add("Richard Nixon");

// question 3 answers
Tree node;
Tree question3 = new Tree("Countries");
node = question3.createChild("South america");
node.createChild("Peru");
node.createChild("Chile");
node.createChild("Ecuador");
node = question3.createChild("Africa");
node.createChild("Malawi");
node.createChild("Mali");
node.createChild("Tunisia");
node = question3.createChild("Asia");
node.createChild("Kambodia");
node.createChild("Laos");
node.createChild("Vietnam");
out.question3data = question3;


' #txt
Fs0 f3 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepare question 2 + 3 answer data</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 94 84 36 24 26 -14 #rect
Fs0 f3 @|RichDialogProcessStepIcon #fIcon
Fs0 @PushWFArc f4 '' #zField
Fs0 f4 expr out #txt
Fs0 f4 112 58 112 84 #arcP
Fs0 @RichDialogProcessStep f5 '' #zField
Fs0 f5 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f5 actionTable 'out=in;
' #txt
Fs0 f5 actionCode 'import com.ulcjava.base.application.enabler.ULCOrEnabler;
import com.ulcjava.base.application.enabler.ULCAndEnabler;

ULCOrEnabler question1 = new ULCOrEnabler();
question1.add(panel.q1one);
question1.add(panel.q1two);
question1.add(panel.q1three);

ULCOrEnabler question4 = new ULCOrEnabler();
question4.add(panel.q4one);
question4.add(panel.q4two);
question4.add(panel.q4three);
question4.add(panel.q4four);
question4.add(panel.q4five);

// use selection model as enabler of
// RTree, RTable, RList, RTableTree

ULCAndEnabler all = new ULCAndEnabler();
all.add(question1);
all.add(panel.question2answer.getSelectionModel()); 
all.add(panel.question3answer.getSelectionModel());
all.add(question4);

panel.verifyButton.setEnabler(all);' #txt
Fs0 f5 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepare enablers</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 94 132 36 24 26 -6 #rect
Fs0 f5 @|RichDialogProcessStepIcon #fIcon
Fs0 f5 -5972572|-1|-16777216 #nodeStyle
Fs0 @PushWFArc f6 '' #zField
Fs0 f6 expr out #txt
Fs0 f6 112 108 112 132 #arcP
Fs0 @PushWFArc f2 '' #zField
Fs0 f2 expr out #txt
Fs0 f2 112 156 112 187 #arcP
Fs0 @RichDialogProcessStart f7 '' #zField
Fs0 f7 guid 11B49D3EA91836CD #txt
Fs0 f7 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f7 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f7 actionTable 'out=in;
' #txt
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verify</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f7 430 38 20 20 13 0 #rect
Fs0 f7 @|RichDialogProcessStartIcon #fIcon
Fs0 @RichDialogProcessEnd f8 '' #zField
Fs0 f8 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f8 427 227 26 26 14 0 #rect
Fs0 f8 @|RichDialogProcessEndIcon #fIcon
Fs0 @RichDialogProcessStep f9 '' #zField
Fs0 f9 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f9 actionTable 'out=in;
' #txt
Fs0 f9 actionCode 'out.correct = true; // assume

// question 1
out.correct = out.correct && panel.q1three.isSelected();

// question 2
out.correct = out.correct && panel.question2answer.selectedIndex == 2;

// question 3
out.correct = out.correct && panel.question3answer.getSelectedTreeNode().value.toString().equalsIgnoreCase("mali");

// question 4
out.correct = out.correct && panel.q4one.isSelected() && panel.q4two.isSelected();' #txt
Fs0 f9 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>calculate 
result</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f9 422 84 36 24 29 -16 #rect
Fs0 f9 @|RichDialogProcessStepIcon #fIcon
Fs0 @PushWFArc f10 '' #zField
Fs0 f10 expr out #txt
Fs0 f10 440 58 440 84 #arcP
Fs0 @Alternative f12 '' #zField
Fs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f12 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f12 426 130 28 28 14 0 #rect
Fs0 f12 @|AlternativeIcon #fIcon
Fs0 @PushWFArc f13 '' #zField
Fs0 f13 expr out #txt
Fs0 f13 440 108 440 130 #arcP
Fs0 @RichDialogProcessStep f14 '' #zField
Fs0 f14 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f14 actionTable 'out=in;
' #txt
Fs0 f14 actionCode 'import com.ulcjava.base.application.util.Color;

// show result text
panel.resultLabel.foreground = Color.green.darker();
panel.resultLabel.iconUri = "/ch/ivyteam/ivy/demo/icons/normal/ok";
panel.resultLabel.text = "Congratulatins! All answers correct.";' #txt
Fs0 f14 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f14 366 180 36 24 20 -2 #rect
Fs0 f14 @|RichDialogProcessStepIcon #fIcon
Fs0 @PushWFArc f15 '' #zField
Fs0 f15 expr in #txt
Fs0 f15 outCond in.correct #txt
Fs0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>right</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f15 426 144 384 180 #arcP
Fs0 f15 1 384 144 #addKink
Fs0 f15 0 1.0 -17 7 #arcLabel
Fs0 @PushWFArc f11 '' #zField
Fs0 f11 expr out #txt
Fs0 f11 384 204 427 240 #arcP
Fs0 f11 1 384 240 #addKink
Fs0 f11 1 0.01558587994238704 0 0 #arcLabel
Fs0 @RichDialogProcessStep f16 '' #zField
Fs0 f16 actionDecl 'ch.ivyteam.ivy.demo.enablers.Quiz.QuizData out;
' #txt
Fs0 f16 actionTable 'out=in;
' #txt
Fs0 f16 actionCode 'import com.ulcjava.base.application.util.Color;

// show result text
panel.resultLabel.foreground = Color.red;
panel.resultLabel.iconUri = "/ch/ivyteam/ivy/demo/icons/normal/not_ok";
panel.resultLabel.text = "Something is still wrong! Try again.";

// reset selection
panel.q1one.selected = false;
panel.q1two.selected = false;
panel.q1three.selected = false;

panel.question2answer.getSelectionModel().clearSelection();

panel.question3answer.getSelectionModel().clearSelection();

panel.q4one.selected = false;
panel.q4two.selected = false;
panel.q4three.selected = false;
panel.q4four.selected = false;
panel.q4five.selected = false;' #txt
Fs0 f16 type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
Fs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f16 478 180 36 24 20 -2 #rect
Fs0 f16 @|RichDialogProcessStepIcon #fIcon
Fs0 @PushWFArc f17 '' #zField
Fs0 f17 expr in #txt
Fs0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wrong</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f17 454 144 496 180 #arcP
Fs0 f17 1 496 144 #addKink
Fs0 f17 0 1.0 22 7 #arcLabel
Fs0 @PushWFArc f18 '' #zField
Fs0 f18 expr out #txt
Fs0 f18 496 204 453 240 #arcP
Fs0 f18 1 496 240 #addKink
Fs0 f18 1 0.12819081835740545 0 0 #arcLabel
Fs0 @InfoButton f19 '' #zField
Fs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows how to use enabler objects.

Enablers control the enablement of a widget, depending on the state of other widgets.
The idea is not to enable a certain widget (e.g. a &quot;continue&quot; button of a wizard) before
not all prerequisites are met (correct input, selection has happened).

Many widgets can be used to enable other widgets, e.g. text fields, check boxes,
toggle buttons, lists, etc. Using enabler objects you can combine the enablement
result of those widgets with OR or AND operators and thus create an &quot;enabler function&quot;.

This function object is then set on the widget that should be enabled/disabled.
See code tab of the prepare enablers code step above (uses a combination
of OR and AND enablers to enable the &quot;verify answers&quot; button).</name>
        <nameStyle>646,9
16,1,12
99,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f19 94 283 485 218 -237 -104 #rect
Fs0 f19 @|IBIcon #fIcon
Fs0 f19 -657956|-1|-16777216 #nodeStyle
Fs0 f0 mainOut f4 tail #connect
Fs0 f4 head f3 mainIn #connect
Fs0 f3 mainOut f6 tail #connect
Fs0 f6 head f5 mainIn #connect
Fs0 f5 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f7 mainOut f10 tail #connect
Fs0 f10 head f9 mainIn #connect
Fs0 f9 mainOut f13 tail #connect
Fs0 f13 head f12 in #connect
Fs0 f12 out f15 tail #connect
Fs0 f15 head f14 mainIn #connect
Fs0 f14 mainOut f11 tail #connect
Fs0 f11 head f8 mainIn #connect
Fs0 f12 out f17 tail #connect
Fs0 f17 head f16 mainIn #connect
Fs0 f16 mainOut f18 tail #connect
Fs0 f18 head f8 mainIn #connect
>Proto Fs0 Fs0 FavouritesSelectorProcess #zField
>Proto Fs0 .rdData2UIAction 'panel.question3answer.treeData=in.question3data;
panel.question2answer.listData=in.question2data;
' #txt
>Proto Fs0 .type ch.ivyteam.ivy.demo.enablers.Quiz.QuizData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
