[Ivy]
[>Created: Wed Jun 23 15:29:28 CEST 2010]
1166C483B1062D13 3.14 #module
>Proto >Proto Collection #zClass
Ls0 ListSearchProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @RichDialogProcessEnd f6 '' #zField
Ls0 @RichDialogProcessStep f8 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogInitStart f1 '' #zField
Ls0 @RichDialogProcessEnd f2 '' #zField
Ls0 @PushWFArc f3 '' #zField
Ls0 @PushWFArc f4 '' #zField
Ls0 @InfoButton f10 '' #zField
Ls0 @RichDialogProcessStart f5 '' #zField
Ls0 @PushWFArc f9 '' #zField
>Proto Ls0 Ls0 ListSearchProcess #zField
Ls0 f6 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f6 379 219 26 26 14 0 #rect
Ls0 f6 @|RichDialogProcessEndIcon #fIcon
Ls0 f8 actionDecl 'ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 actionCode 'out.filteredList.clear();

if (in.searchString.length() > 0)
{
	import java.util.regex.Pattern;
	
	Pattern p = Pattern.compile(".*\\Q"+in.searchString+"\\E.*", Pattern.CASE_INSENSITIVE);

	for (String s : in.fullList)
	{
		if (p.matcher(s).matches())
		{
			// match
	  		out.filteredList.add(s);
		}
	}
}
else
{
	out.filteredList.addAll(in.fullList);
}

out.resultString = out.filteredList.size().toString() + " records found.";
' #txt
Ls0 f8 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filtered list</name>
        <nameStyle>20,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f8 374 164 36 24 33 -9 #rect
Ls0 f8 @|RichDialogProcessStepIcon #fIcon
Ls0 f7 expr out #txt
Ls0 f7 392 188 392 219 #arcP
Ls0 f0 guid 1166C4D55A92C08F #txt
Ls0 f0 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents false #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 inParameterMapAction 'out.infoString="This search has not been configured: No data available.";
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 embeddedRdInitializations '* ' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 70 94 20 20 13 0 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 guid 1166C4D5FFABBA28 #txt
Ls0 f1 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f1 method start(List<String>,String) #txt
Ls0 f1 disableUIEvents false #txt
Ls0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<java.lang.String> list,java.lang.String info> param = methodEvent.getInputArguments();
' #txt
Ls0 f1 inParameterMapAction 'out.fullList=param.list;
out.infoString=param.info;
' #txt
Ls0 f1 inActionCode 'out.filteredList.addAll(param.list);
out.resultString = out.filteredList.size().toString() + " records in database.";' #txt
Ls0 f1 outParameterDecl '<> result;
' #txt
Ls0 f1 embeddedRdInitializations '* ' #txt
Ls0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(List&lt;String&gt;,String)</name>
        <nameStyle>26,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f1 206 94 20 20 13 0 #rect
Ls0 f1 @|RichDialogInitStartIcon #fIcon
Ls0 f2 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f2 131 219 26 26 14 0 #rect
Ls0 f2 @|RichDialogProcessEndIcon #fIcon
Ls0 f3 expr out #txt
Ls0 f3 84 112 138 220 #arcP
Ls0 f4 expr out #txt
Ls0 f4 211 112 150 220 #arcP
Ls0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This demo should be run with animation speed set to maximum (i.e. no animation).</name>
        <nameStyle>80,0,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f10 61 307 487 26 -232 -8 #rect
Ls0 f10 @|IBIcon #fIcon
Ls0 f10 -613726|-1|-16777216 #nodeStyle
Ls0 f5 guid 1166CB1D49D2361A #txt
Ls0 f5 type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
Ls0 f5 actionDecl 'ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData out;
' #txt
Ls0 f5 actionTable 'out=in;
' #txt
Ls0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>key_typed</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f5 382 94 20 20 13 0 #rect
Ls0 f5 @|RichDialogProcessStartIcon #fIcon
Ls0 f9 expr out #txt
Ls0 f9 392 114 392 164 #arcP
>Proto Ls0 .type ch.ivyteam.ivy.demo.search.ListSearch.ListSearchData #txt
>Proto Ls0 .processKind RICH_DIALOG #txt
>Proto Ls0 .ui2RdDataAction 'out.searchString=panel.searchField.text;
' #txt
>Proto Ls0 .rdData2UIAction 'panel.resultList.listData=in.filteredList;
panel.infoLabel.text=in.infoString;
panel.resultLabel.text=in.resultString;
' #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f8 mainOut f7 tail #connect
Ls0 f7 head f6 mainIn #connect
Ls0 f0 mainOut f3 tail #connect
Ls0 f3 head f2 mainIn #connect
Ls0 f1 mainOut f4 tail #connect
Ls0 f4 head f2 mainIn #connect
Ls0 f5 mainOut f9 tail #connect
Ls0 f9 head f8 mainIn #connect
