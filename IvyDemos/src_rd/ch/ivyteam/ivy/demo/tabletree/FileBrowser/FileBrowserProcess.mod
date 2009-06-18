[Ivy]
[>Created: Thu Jun 18 15:38:04 CEST 2009]
11A9628F93B4B493 3.12 #module
>Proto >Proto Collection #zClass
Fs0 FileBrowserProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @RichDialogProcessStep f3 '' #zField
Fs0 @PushWFArc f4 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStart f5 '' #zField
Fs0 @RichDialogProcessEnd f6 '' #zField
Fs0 @InfoButton f10 '' #zField
Fs0 @AnnotationArc f11 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @InfoButton f8 '' #zField
Fs0 @RichDialogProcessStart f9 '' #zField
Fs0 @RichDialogProcessEnd f12 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @InfoButton f14 '' #zField
Fs0 @AnnotationArc f15 '' #zField
Fs0 @InfoButton f16 '' #zField
>Proto Fs0 Fs0 FileBrowserProcess #zField
Fs0 f0 guid 11A9628FA16BA901 #txt
Fs0 f0 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Fs0 f0 94 126 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f1 91 227 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get drives
get root</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 actionDecl 'ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode '// get data
List<java.io.File> drives = java.io.File.listRoots();
for (java.io.File file : drives)
{
	// Do not add the disk drive, leads to a windows exception if no disk is inserted.
	if (!"A:\\".equals(file.getAbsolutePath())
	 && !"a:\\".equals(file.getAbsolutePath()))
	{
		out.drives.add(file);
	}
}

out.rootDir = new Tree(out.drives.get(0), "drive");

// must set already here, so that we can chose index to select
panel.driveComboBox.listData = out.drives;
panel.driveComboBox.setSelectedIndex(0);' #txt
Fs0 f3 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f3 86 172 36 24 24 -16 #rect
Fs0 f3 @|RichDialogProcessStepIcon #fIcon
Fs0 f4 expr out #txt
Fs0 f4 104 146 104 172 #arcP
Fs0 f2 expr out #txt
Fs0 f2 104 196 104 227 #arcP
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>tree_load</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 guid 11A9637F23A304CC #txt
Fs0 f5 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f5 actionDecl 'ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData out;
' #txt
Fs0 f5 actionTable 'out=in;
' #txt
Fs0 f5 actionCode 'import ch.ivyteam.ivy.richdialog.component.event.TreeLoadEvent;

TreeLoadEvent ev = event as TreeLoadEvent;
Tree nodeToExpand = ev.getTreeNode();
java.io.File parent = nodeToExpand.value as java.io.File;

if (parent.isDirectory())
{
	for (java.io.File child : parent.listFiles())
	{
		if (! child.isHidden())
		{
			Tree node = nodeToExpand.createChild(child, (child.isDirectory() ? "dir" : "file"));
			node.setMayHaveChildren(child.isDirectory());
		}
	}
}
// else do nothing' #txt
Fs0 f5 214 126 20 20 13 0 #rect
Fs0 f5 @|RichDialogProcessStartIcon #fIcon
Fs0 f6 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f6 211 227 26 26 14 0 #rect
Fs0 f6 @|RichDialogProcessEndIcon #fIcon
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load children (if directory)
or nothing (if file)</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f10 143 19 147 42 -68 -16 #rect
Fs0 f10 @|IBIcon #fIcon
Fs0 f10 -985168|-1|-16777216 #nodeStyle
Fs0 f11 215 61 217 128 #arcP
Fs0 f7 expr out #txt
Fs0 f7 224 146 224 227 #arcP
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Tree nodes have 3 kinds of info:
&quot;dir&quot;, &quot;file&quot; and &quot;drive&quot;</name>
        <nameStyle>58,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 484 227 184 42 -87 -16 #rect
Fs0 f8 @|IBIcon #fIcon
Fs0 f8 -7484683|-1|-16777216 #nodeStyle
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>drive_selected</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f9 guid 11A969D754983DDC #txt
Fs0 f9 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f9 actionDecl 'ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData out;
' #txt
Fs0 f9 actionTable 'out=in;
' #txt
Fs0 f9 actionCode 'java.io.File selectedRoot = panel.driveComboBox.selectedListEntry as java.io.File;
out.rootDir = new Tree(selectedRoot, "drive");' #txt
Fs0 f9 318 126 20 20 13 0 #rect
Fs0 f9 @|RichDialogProcessStartIcon #fIcon
Fs0 f12 type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
Fs0 f12 315 227 26 26 14 0 #rect
Fs0 f12 @|RichDialogProcessEndIcon #fIcon
Fs0 f13 expr out #txt
Fs0 f13 328 146 328 227 #arcP
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set root of tree
to selected drive</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 319 19 99 42 -44 -16 #rect
Fs0 f14 @|IBIcon #fIcon
Fs0 f14 -985168|-1|-16777216 #nodeStyle
Fs0 f15 367 61 326 126 #arcP
Fs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>With this demo you can very well demonstrate the effects of lazy loading. 

There are three different lazy loading mechanisms for trees:

none : will load full tree when it is first displayed
on render parent : will load tree when parent node is rendered (load one level ahead)
on expand parent : will load tree when parent is expanded (load children on demand)

How do you set the lazy loading?

1. Open the panel of this Rich Dialog
2. Select the table tree widget
3. On the widget configuration view select the &quot;TableTree Data&quot; tab
4. On the top section you select the lazy loading mechanism from a combo box

What are the effects?

none : will take forever because whole hard disk is searched (bad!)
on render parent : will correctly render the [+] handle, but may take rather long because one level is loaded ahead
on expand parent : fastest : children are only loaded on demand (but [+] handle may not be rendered correctly)</name>
        <nameStyle>33,9
39,0,9
4,9
60,14
2,9
4,0,9
50,9
17,0,9
69,9
16,0,9
69,9
32,14
1,9
217,9
21,14
2,9
4,0,9
63,9
1,9
16,0,9
100,9
16,0,9
94,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f16 38 291 628 330 -309 -160 #rect
Fs0 f16 @|IBIcon #fIcon
Fs0 f16 -993312|-1|-16777216 #nodeStyle
>Proto Fs0 .rdData2UIAction 'panel.fileTableTree.tableTreeData=in.rootDir;
panel.driveComboBox.listData=in.drives;
' #txt
>Proto Fs0 .type ch.ivyteam.ivy.demo.tabletree.FileBrowser.FileBrowserData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f4 tail #connect
Fs0 f4 head f3 mainIn #connect
Fs0 f3 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f10 ao f11 tail #connect
Fs0 f11 head f5 @CG|ai #connect
Fs0 f5 mainOut f7 tail #connect
Fs0 f7 head f6 mainIn #connect
Fs0 f9 mainOut f13 tail #connect
Fs0 f13 head f12 mainIn #connect
Fs0 f14 ao f15 tail #connect
Fs0 f15 head f9 @CG|ai #connect
