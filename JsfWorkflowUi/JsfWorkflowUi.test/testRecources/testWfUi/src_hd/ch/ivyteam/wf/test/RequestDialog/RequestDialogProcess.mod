[Ivy]
13F3DB5D589E405E 7.5.0 #module
>Proto >Proto Collection #zClass
Rs0 RequestDialogProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @UdInit f0 '' #zField
Rs0 @UdProcessEnd f1 '' #zField
Rs0 @UdEvent f3 '' #zField
Rs0 @UdExitEnd f6 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @GridStep f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @PushWFArc f2 '' #zField
>Proto Rs0 Rs0 RequestDialogProcess #zField
Rs0 f0 guid 13F3DB5D5986E0D4 #txt
Rs0 f0 method start(ch.ivyteam.wf.test.Data) #txt
Rs0 f0 inParameterDecl '<ch.ivyteam.wf.test.Data data> param;' #txt
Rs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Rs0 f0 outParameterDecl '<ch.ivyteam.wf.test.Data data> result;' #txt
Rs0 f0 outParameterMapAction 'result.data=in.data;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -16 12 #rect
Rs0 f0 @|UdInitIcon #fIcon
Rs0 f0 -1|-1|-9671572 #nodeStyle
Rs0 f1 339 51 26 26 0 12 #rect
Rs0 f1 @|UdProcessEndIcon #fIcon
Rs0 f1 -1|-1|-9671572 #nodeStyle
Rs0 f3 guid 13F4168E82115B16 #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submitForm</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 83 115 26 26 -33 12 #rect
Rs0 f3 @|UdEventIcon #fIcon
Rs0 f3 -1|-1|-9671572 #nodeStyle
Rs0 f6 211 115 26 26 0 12 #rect
Rs0 f6 @|UdExitEndIcon #fIcon
Rs0 f6 -1|-1|-9671572 #nodeStyle
Rs0 f7 expr out #txt
Rs0 f7 109 128 211 128 #arcP
Rs0 f4 actionTable 'out=in;
out.data.caption="";
out.data.description="";
out.data.expiryDate=null;
out.data.prio=2;
' #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f4 168 42 112 44 -18 -8 #rect
Rs0 f4 @|StepIcon #fIcon
Rs0 f4 -1|-1|-9671572 #nodeStyle
Rs0 f5 expr out #txt
Rs0 f5 109 64 168 64 #arcP
Rs0 f2 expr out #txt
Rs0 f2 280 64 339 64 #arcP
>Proto Rs0 .type ch.ivyteam.wf.test.RequestDialog.RequestDialogData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f3 mainOut f7 tail #connect
Rs0 f7 head f6 mainIn #connect
Rs0 f0 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f4 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
