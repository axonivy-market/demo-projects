[Ivy]
13A3F854E6D3A3F7 9.4.0 #module
>Proto >Proto Collection #zClass
As0 AjaxMethodCallDemoProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdMethod f3 '' #zField
As0 @UdProcessEnd f5 '' #zField
As0 @GridStep f4 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @PushWFArc f6 '' #zField
As0 @UdMethod f8 '' #zField
As0 @UdExitEnd f9 '' #zField
As0 @PushWFArc f10 '' #zField
>Proto As0 As0 AjaxMethodCallDemoProcess #zField
As0 f0 guid 13A3F854E8424F18 #txt
As0 f0 method start() #txt
As0 f0 inParameterDecl '<> param;' #txt
As0 f0 outParameterDecl '<> result;' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 12 #rect
As0 f0 -1|-1|-9671572 #nodeStyle
As0 f1 211 51 26 26 0 12 #rect
As0 f1 -1|-1|-9671572 #nodeStyle
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 13A3FA51C962D77C #txt
As0 f3 method helloWorld(String) #txt
As0 f3 inParameterDecl '<String name> param;' #txt
As0 f3 inParameterMapAction 'out.name=param.name;
' #txt
As0 f3 outParameterDecl '<String result> result;' #txt
As0 f3 outParameterMapAction 'result.result=in.welcomeMessage;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>helloWorld(String)</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -49 12 #rect
As0 f3 -1|-1|-9671572 #nodeStyle
As0 f5 371 147 26 26 0 12 #rect
As0 f5 -1|-1|-9671572 #nodeStyle
As0 f4 actionTable 'out=in;
out.welcomeMessage="Welcome "+in.name;
' #txt
As0 f4 184 138 112 44 58 -2 #rect
As0 f4 -1|-1|-9671572 #nodeStyle
As0 f7 expr out #txt
As0 f7 109 160 184 160 #arcP
As0 f6 expr out #txt
As0 f6 296 160 371 160 #arcP
As0 f8 guid 1437CC3BEFF4691B #txt
As0 f8 method closeDialog() #txt
As0 f8 inParameterDecl '<> param;' #txt
As0 f8 outParameterDecl '<> result;' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>closeDialog()</name>
    </language>
</elementInfo>
' #txt
As0 f8 83 243 26 26 -37 13 #rect
As0 f8 -1|-1|-9671572 #nodeStyle
As0 f9 211 243 26 26 0 13 #rect
As0 f9 -1|-1|-9671572 #nodeStyle
As0 f10 expr out #txt
As0 f10 109 256 211 256 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.other.AjaxMethodCallDemo.AjaxMethodCallDemoData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f7 tail #connect
As0 f7 head f4 mainIn #connect
As0 f4 mainOut f6 tail #connect
As0 f6 head f5 mainIn #connect
As0 f8 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
