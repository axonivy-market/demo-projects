[Ivy]
[>Created: Mon May 25 12:28:28 CEST 2009]
11638902C7032414 3.11 #module
>Proto >Proto Collection #zClass
Ss0 SimpleDndProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStep f2 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessStart f12 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @RichDialogProcessEnd f13 '' #zField
Ss0 @RichDialogMethodStart f11 '' #zField
Ss0 @PushWFArc f14 '' #zField
>Proto Ss0 Ss0 SimpleDndProcess #zField
Ss0 f0 guid 1163893DEA3918DE #txt
Ss0 f0 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/mouse\";\nparam.title=\"Drag\''n\''Drop Demo\";\nparam.subtitle=\"Shows how you can use Drag-and-Drop in your RichApplications.\";\n"/initScript ""}}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 118 46 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f1 115 147 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 actionDecl 'ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 actionCode 'Tree left = new Tree("rootLeft", "left");
Tree right = new Tree("rootRight", "right");

for (int i = 0; i < 10; i++)
{
  left.add(new Tree("left node " + i, "left"));  
  right.add(new Tree("right node " + i, "right"));
}

out.leftTree = left;
out.rightTree = right;


out.logText = "";
' #txt
Ss0 f2 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init tree data</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 110 92 36 24 23 -7 #rect
Ss0 f2 @|RichDialogProcessStepIcon #fIcon
Ss0 f3 expr out #txt
Ss0 f3 128 66 128 92 #arcP
Ss0 f4 expr out #txt
Ss0 f4 128 116 128 147 #arcP
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 guid 1163920E762D3B76 #txt
Ss0 f12 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f12 actionDecl 'ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData out;
' #txt
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 198 46 20 20 13 0 #rect
Ss0 f12 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 208 66 132 92 #arcP
Ss0 f10 1 208 80 #addKink
Ss0 f10 2 136 80 #addKink
Ss0 f10 1 0.433681306164812 0 0 #arcLabel
Ss0 f13 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f13 275 155 26 26 14 0 #rect
Ss0 f13 @|RichDialogProcessEndIcon #fIcon
Ss0 f11 guid 1163937837E894DD #txt
Ss0 f11 type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
Ss0 f11 method objectsDropped(List<java.lang.Object>,java.lang.Object,String) #txt
Ss0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<java.lang.Object> source,java.lang.Object target,java.lang.String action> param = methodEvent.getInputArguments();
' #txt
Ss0 f11 inActionCode 'import ch.ivyteam.ivy.demo.dnd.SimpleDnd.*;

// DEBUG OUTPUT
// -------------------
in.logText = "*** Drop event received:\n" + 
	"\tAction: " + param.action + "\n"  + 
	"\tSource object: " + param.source + "\n"  + 
	"\tTarget object: " + param.target + "\n\n" + in.logText;
panel.textAreaLog.scrollPositionToVisible(0);


// DROP ACTION
// ------------------
Tree targetNode = param.target as Tree;
for (Tree src : param.source )
{
  // Make sure that param.source and param.target are not the same object
  if (src != param.target)
  {
    if (param.action.equalsIgnoreCase("copy"))
    {
      targetNode.add(src.deepClone());
    }
    else
    {
      ch.ivyteam.ivy.utils.TreeUtil.removeTreeChild(src);
      targetNode.add(src);
    }
  }
}' #txt
Ss0 f11 outParameterDecl '<> result;
' #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>objectsDropped(Object&gt;,Object, String)</name>
        <nameStyle>38,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 278 46 20 20 13 0 #rect
Ss0 f11 @|RichDialogMethodStartIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 288 66 288 155 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .rdData2UIAction 'panel.treeLeft.treeData=in.leftTree;
panel.treeRight.treeData=in.rightTree;
panel.textAreaLog.text=in.logText;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f2 mainIn #connect
Ss0 f2 mainOut f4 tail #connect
Ss0 f4 head f1 mainIn #connect
Ss0 f12 mainOut f10 tail #connect
Ss0 f10 head f2 mainIn #connect
Ss0 f11 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
