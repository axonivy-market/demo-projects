[Ivy]
[>Created: Mon May 26 16:28:14 CEST 2008]
11A2431620A5E9B5 3.10 #module
>Proto >Proto Collection #zClass
Ms0 MultiSelectProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 guid 11A24316287D2F04 #txt
Ms0 f0 type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
Ms0 f0 method start() #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 inParameterMapAction 'out.selectedItems=[" "];
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 embeddedRdInitializations '* ' #txt
Ms0 f0 90 40 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 f1 type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
Ms0 f1 87 137 26 26 14 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 @PushWFArc f2 '' #zField
Ms0 f2 expr out #txt
Ms0 f2 100 60 100 137 #arcP
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_ClickButton</name>
        <nameStyle>20,5,6,9
</nameStyle>
        <desc>1. starts the UI Button Click event
2. updates the RD data class property (which lets the listTarget widget update its view due to its databinding to that property.
3. fires a selection event to the outer world with the list of selected items as parameter</desc>
    </language>
</elementInfo>
' #txt
Ms0 f3 guid 11A24B9AABD3B101 #txt
Ms0 f3 type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
Ms0 f3 actionDecl 'ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData out;
' #txt
Ms0 f3 actionTable 'out=in;
out.selectedItems=panel.listSource.getSelectedListEntries();
' #txt
Ms0 f3 actionCode '// use getSelectedRecords for a recordset binding
// set list to data class property for passing to other panels
out.selectedItems = panel.listSource.getSelectedListEntries();
' #txt
Ms0 f3 214 38 20 20 13 0 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 @RichDialogProcessEnd f5 '' #zField
Ms0 f5 type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
Ms0 f5 211 163 26 26 14 0 #rect
Ms0 f5 @|RichDialogProcessEndIcon #fIcon
Ms0 @RichDialogFireEvent f4 '' #zField
Ms0 f4 actionDecl 'List items;
' #txt
Ms0 f4 actionTable 'items=in.selectedItems;
' #txt
Ms0 f4 actionCode panel.fireItemsSelected(items); #txt
Ms0 f4 type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
Ms0 f4 fireEvent itemsSelected(List) #txt
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>eventItemsSelected</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f4 206 100 36 24 20 -2 #rect
Ms0 f4 @|RichDialogFireEventIcon #fIcon
Ms0 @PushWFArc f7 '' #zField
Ms0 f7 expr out #txt
Ms0 f7 224 58 224 100 #arcP
Ms0 @PushWFArc f6 '' #zField
Ms0 f6 expr out #txt
Ms0 f6 224 124 224 163 #arcP
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f7 tail #connect
Ms0 f7 head f4 mainIn #connect
Ms0 f4 mainOut f6 tail #connect
Ms0 f6 head f5 mainIn #connect
>Proto Ms0 Ms0 MultiSelectProcess #zField
>Proto Ms0 .type ch.ivyteam.ivy.demo.multiselect.MultiSelect.MultiSelectData #txt
>Proto Ms0 .processKind RICH_DIALOG #txt
>Proto Ms0 .rdData2UIAction 'panel.listSource.listData=["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"];
panel.listTarget.listData=in.selectedItems;
' #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
