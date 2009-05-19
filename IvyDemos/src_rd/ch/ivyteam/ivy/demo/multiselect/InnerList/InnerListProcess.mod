[Ivy]
[>Created: Mon May 26 16:36:05 CEST 2008]
11A259AEBA5CC1F1 3.10 #module
>Proto >Proto Collection #zClass
Is0 InnerListProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @MessageFlowInP-0n messageIn messageIn #zField
Is0 @MessageFlowOutP-0n messageOut messageOut #zField
Is0 @TextInP .resExport .resExport #zField
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Is0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Is0 @RichDialogInitStart f0 '' #zField
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Is0 f0 guid 11A259AEC9FDFBE3 #txt
Is0 f0 type ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData #txt
Is0 f0 method start() #txt
Is0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Is0 f0 outParameterDecl '<> result;
' #txt
Is0 f0 90 40 20 20 13 0 #rect
Is0 f0 @|RichDialogInitStartIcon #fIcon
Is0 @RichDialogProcessEnd f1 '' #zField
Is0 f1 type ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData #txt
Is0 f1 87 137 26 26 14 0 #rect
Is0 f1 @|RichDialogProcessEndIcon #fIcon
Is0 @PushWFArc f2 '' #zField
Is0 f2 expr out #txt
Is0 f2 100 60 100 137 #arcP
Is0 @RichDialogBroadcastStart f3 '' #zField
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>itemsSelected</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f3 guid 11A25A2A0D340B18 #txt
Is0 f3 type ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData #txt
Is0 f3 broadcast itemsSelected #txt
Is0 f3 actionDecl 'ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData out;
' #txt
Is0 f3 actionTable 'out=in;
' #txt
Is0 f3 actionCode '// write all list items (which are Strings) in one String
StringBuffer buffer = new StringBuffer();
for (int i = 0; i < param.items.size(); i++)
{
	buffer.append(", " );
	// cast to String
	buffer.append(param.items.get(i) as String);
}
// remove leading ", "
if (buffer.length() > 0)
{
	buffer.delete(0, 1);
}
// write to label
panel.Label.text = buffer.toString();' #txt
Is0 f3 214 30 20 20 13 0 #rect
Is0 f3 @|RichDialogBroadcastStartIcon #fIcon
Is0 @RichDialogProcessEnd f4 '' #zField
Is0 f4 type ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData #txt
Is0 f4 211 139 26 26 14 0 #rect
Is0 f4 @|RichDialogProcessEndIcon #fIcon
Is0 @PushWFArc f5 '' #zField
Is0 f5 expr out #txt
Is0 f5 224 50 224 139 #arcP
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f5 tail #connect
Is0 f5 head f4 mainIn #connect
>Proto Is0 Is0 InnerListProcess #zField
>Proto Is0 .type ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListData #txt
>Proto Is0 .processKind RICH_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
>Proto Is0 '' #fIcon
