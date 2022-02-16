[Ivy]
1450361A00C7147D 9.4.0 #module
>Proto >Proto Collection #zClass
Hs0 Html5BootstrapDemoProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @MessageFlowInP-0n messageIn messageIn #zField
Hs0 @MessageFlowOutP-0n messageOut messageOut #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @UdInit f0 '' #zField
Hs0 @UdProcessEnd f1 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @UdEvent f3 '' #zField
Hs0 @UdExitEnd f4 '' #zField
Hs0 @PushWFArc f5 '' #zField
Hs0 @UdEvent f6 '' #zField
Hs0 @UdProcessEnd f7 '' #zField
Hs0 @GridStep f9 '' #zField
Hs0 @PushWFArc f10 '' #zField
Hs0 @PushWFArc f8 '' #zField
>Proto Hs0 Hs0 Html5BootstrapDemoProcess #zField
Hs0 f0 guid 1450361A038EB954 #txt
Hs0 f0 method start() #txt
Hs0 f0 inParameterDecl '<> param;' #txt
Hs0 f0 outParameterDecl '<> result;' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 51 51 26 26 -16 13 #rect
Hs0 f0 -1|-1|-9671572 #nodeStyle
Hs0 f1 179 51 26 26 0 13 #rect
Hs0 f1 -1|-1|-9671572 #nodeStyle
Hs0 f2 expr out #txt
Hs0 f2 77 64 179 64 #arcP
Hs0 f3 guid 1450361A046E0099 #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Hs0 f3 51 147 26 26 -15 13 #rect
Hs0 f3 -1|-1|-9671572 #nodeStyle
Hs0 f4 179 147 26 26 0 13 #rect
Hs0 f4 -1|-1|-9671572 #nodeStyle
Hs0 f5 expr out #txt
Hs0 f5 77 160 179 160 #arcP
Hs0 f6 guid 145040EFC6882D73 #txt
Hs0 f6 actionTable 'out=in;
' #txt
Hs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submitForm</name>
    </language>
</elementInfo>
' #txt
Hs0 f6 51 243 26 26 -33 13 #rect
Hs0 f6 -1|-1|-9671572 #nodeStyle
Hs0 f7 339 243 26 26 0 13 #rect
Hs0 f7 -1|-1|-9671572 #nodeStyle
Hs0 f9 actionTable 'out=in;
' #txt
Hs0 f9 actionCode '// Very simple demo script
if (in.captcha.trim().equalsIgnoreCase("42"))
{
	in.displayError = false;
	in.displaySuccess = true;
}
else
{
	in.displayError = true;
	in.displaySuccess = false;
}' #txt
Hs0 f9 152 234 112 44 58 -2 #rect
Hs0 f9 -1|-1|-9671572 #nodeStyle
Hs0 f10 expr out #txt
Hs0 f10 77 256 152 256 #arcP
Hs0 f8 expr out #txt
Hs0 f8 264 256 339 256 #arcP
>Proto Hs0 .type ch.ivyteam.htmldialog.demo.other.Html5BootstrapDemo.Html5BootstrapDemoData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
Hs0 f0 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f6 mainOut f10 tail #connect
Hs0 f10 head f9 mainIn #connect
Hs0 f9 mainOut f8 tail #connect
Hs0 f8 head f7 mainIn #connect
