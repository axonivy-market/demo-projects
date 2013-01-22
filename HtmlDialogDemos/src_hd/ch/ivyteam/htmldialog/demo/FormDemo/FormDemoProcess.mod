[Ivy]
[>Created: Tue Jan 22 18:40:43 CET 2013]
139E30EF308FD0DC 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FormDemoProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStart f3 '' #zField
Fs0 @RichDialogProcessEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @RichDialogProcessStart f6 '' #zField
Fs0 @RichDialogEnd f7 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @RichDialogProcessStep f10 '' #zField
Fs0 @RichDialogProcessEnd f11 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @RichDialogMethodStart f9 '' #zField
Fs0 @PushWFArc f12 '' #zField
>Proto Fs0 Fs0 FormDemoProcess #zField
Fs0 f0 guid 139E30EF3229D74F #txt
Fs0 f0 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
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
Fs0 f0 86 54 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f1 86 150 20 20 13 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 96 74 96 150 #arcP
Fs0 f3 guid 139E36E9C60E9FF5 #txt
Fs0 f3 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 86 214 20 20 14 -6 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f4 86 310 20 20 13 0 #rect
Fs0 f4 @|RichDialogProcessEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 96 234 96 310 #arcP
Fs0 f6 guid 139E36EE160AB5AD #txt
Fs0 f6 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData out;
' #txt
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 166 214 20 20 13 0 #rect
Fs0 f6 @|RichDialogProcessStartIcon #fIcon
Fs0 f7 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f7 guid 139E36EEE3A751B3 #txt
Fs0 f7 166 310 20 20 13 0 #rect
Fs0 f7 @|RichDialogEndIcon #fIcon
Fs0 f8 expr out #txt
Fs0 f8 176 234 176 310 #arcP
Fs0 f10 actionDecl 'ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData out;
' #txt
Fs0 f10 actionTable 'out=in;
' #txt
Fs0 f10 actionCode 'import java.util.Locale;

in.matchingCountries.clear();
for (Locale locale: Locale.getAvailableLocales())
{
	String country = locale.getDisplayCountry();
	if (country.contains(in.country))
	{
		if (!in.matchingCountries.contains(country))
		{
			in.matchingCountries.add(country);
	  }
  }
}' #txt
Fs0 f10 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Eveluate matching countries</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f10 78 444 36 24 26 -6 #rect
Fs0 f10 @|RichDialogProcessStepIcon #fIcon
Fs0 f11 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f11 86 510 20 20 13 0 #rect
Fs0 f11 @|RichDialogProcessEndIcon #fIcon
Fs0 f13 expr out #txt
Fs0 f13 96 468 96 510 #arcP
Fs0 f9 guid 139E37250FA7DB14 #txt
Fs0 f9 type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
Fs0 f9 method completeCountry(String) #txt
Fs0 f9 disableUIEvents false #txt
Fs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String countryPartialString> param = methodEvent.getInputArguments();
' #txt
Fs0 f9 inParameterMapAction 'out.country=param.countryPartialString;
' #txt
Fs0 f9 outParameterDecl '<List<java.lang.String> matchingCountries> result;
' #txt
Fs0 f9 outParameterMapAction 'result.matchingCountries=in.matchingCountries;
' #txt
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>completeCountry(String)</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f9 86 390 20 20 13 0 #rect
Fs0 f9 @|RichDialogMethodStartIcon #fIcon
Fs0 f12 expr out #txt
Fs0 f12 96 410 96 444 #arcP
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.FormDemo.FormDemoData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>168</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
Fs0 f6 mainOut f8 tail #connect
Fs0 f8 head f7 mainIn #connect
Fs0 f10 mainOut f13 tail #connect
Fs0 f13 head f11 mainIn #connect
Fs0 f9 mainOut f12 tail #connect
Fs0 f12 head f10 mainIn #connect
