[Ivy]
139E30EF308FD0DC 9.4.0 #module
>Proto >Proto Collection #zClass
Fs0 FormDemoProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @UdInit f0 '' #zField
Fs0 @UdProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @UdEvent f3 '' #zField
Fs0 @UdProcessEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
Fs0 @UdEvent f6 '' #zField
Fs0 @UdExitEnd f7 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @GridStep f10 '' #zField
Fs0 @UdProcessEnd f11 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @UdMethod f9 '' #zField
Fs0 @PushWFArc f12 '' #zField
>Proto Fs0 Fs0 FormDemoProcess #zField
Fs0 f0 guid 139E30EF3229D74F #txt
Fs0 f0 method start() #txt
Fs0 f0 inParameterDecl '<> param;' #txt
Fs0 f0 outParameterDecl '<> result;' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Fs0 f0 83 83 26 26 -16 12 #rect
Fs0 f0 -1|-1|-9671572 #nodeStyle
Fs0 f1 211 83 26 26 0 12 #rect
Fs0 f1 -1|-1|-9671572 #nodeStyle
Fs0 f2 expr out #txt
Fs0 f2 109 96 211 96 #arcP
Fs0 f3 guid 139E36E9C60E9FF5 #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Fs0 f3 83 243 26 26 -14 12 #rect
Fs0 f3 -1|-1|-9671572 #nodeStyle
Fs0 f4 211 243 26 26 0 12 #rect
Fs0 f4 -1|-1|-9671572 #nodeStyle
Fs0 f5 expr out #txt
Fs0 f5 109 256 211 256 #arcP
Fs0 f6 guid 139E36EE160AB5AD #txt
Fs0 f6 actionTable 'out=in;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Fs0 f6 83 339 26 26 -15 12 #rect
Fs0 f6 -1|-1|-9671572 #nodeStyle
Fs0 f7 211 339 26 26 0 12 #rect
Fs0 f7 -1|-1|-9671572 #nodeStyle
Fs0 f8 expr out #txt
Fs0 f8 109 352 211 352 #arcP
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
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Evaluate matching countries</name>
    </language>
</elementInfo>
' #txt
Fs0 f10 192 490 160 44 -77 -8 #rect
Fs0 f10 -1|-1|-9671572 #nodeStyle
Fs0 f11 435 499 26 26 0 12 #rect
Fs0 f11 -1|-1|-9671572 #nodeStyle
Fs0 f13 expr out #txt
Fs0 f13 352 512 435 512 #arcP
Fs0 f9 guid 139E37250FA7DB14 #txt
Fs0 f9 method completeCountry(String) #txt
Fs0 f9 inParameterDecl '<String countryPartialString> param;' #txt
Fs0 f9 inParameterMapAction 'out.country=param.countryPartialString;
' #txt
Fs0 f9 outParameterDecl '<List<String> matchingCountries> result;' #txt
Fs0 f9 outParameterMapAction 'result.matchingCountries=in.matchingCountries;
' #txt
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>completeCountry(String)</name>
    </language>
</elementInfo>
' #txt
Fs0 f9 83 499 26 26 -66 12 #rect
Fs0 f9 -1|-1|-9671572 #nodeStyle
Fs0 f12 expr out #txt
Fs0 f12 109 512 192 512 #arcP
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.input.FormDemo.FormDemoData #txt
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
    <swimlaneSize>225</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
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
