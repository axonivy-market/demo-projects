[Ivy]
16E59F2CEDC492A6 9.4.0 #module
>Proto >Proto Collection #zClass
Rs0 ResponsiveGridDemoProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @UdInit f0 '' #zField
Rs0 @UdProcessEnd f1 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @UdEvent f3 '' #zField
Rs0 @UdExitEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @UdEvent f6 '' #zField
Rs0 @UdProcessEnd f7 '' #zField
Rs0 @PushWFArc f8 '' #zField
>Proto Rs0 Rs0 ResponsiveGridDemoProcess #zField
Rs0 f0 guid 16E59F2CEE27168D #txt
Rs0 f0 method start() #txt
Rs0 f0 inParameterDecl '<> param;' #txt
Rs0 f0 inParameterMapAction 'out.address="271 Sodavaya Street";
out.birthday=new Date("1707-04-15");
out.city="St. Petersburg";
out.email="leo.euler@genius.com";
out.firstName="Leonard";
out.lastName="Euler";
out.zipCode=191023;
' #txt
Rs0 f0 outParameterDecl '<> result;' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -29 15 #rect
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f2 109 64 211 64 #arcP
Rs0 f3 guid 16E59F2CEEAE96C7 #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 83 147 26 26 -15 15 #rect
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f5 109 160 211 160 #arcP
Rs0 f6 guid 16E5AB08F9E66297 #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Rs0 f6 83 243 26 26 -14 15 #rect
Rs0 f7 211 243 26 26 0 12 #rect
Rs0 f8 109 256 211 256 #arcP
>Proto Rs0 .type ch.ivyteam.htmldialog.demo.other.ResponsiveGridDemo.ResponsiveGridDemoData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f6 mainOut f8 tail #connect
Rs0 f8 head f7 mainIn #connect
