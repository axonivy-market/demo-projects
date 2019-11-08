[Ivy]
13F3DB669CBD2A27 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 ConfirmationDialogProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
>Proto Cs0 Cs0 ConfirmationDialogProcess #zField
Cs0 f0 guid 13F3DB669DB801CF #txt
Cs0 f0 method start(ch.ivyteam.wf.test.Data) #txt
Cs0 f0 inParameterDecl '<ch.ivyteam.wf.test.Data data> param;' #txt
Cs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f0 outParameterDecl '<> result;' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -16 12 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f2 expr out #txt
Cs0 f2 109 64 211 64 #arcP
Cs0 f3 guid 13F3DD3A8925699B #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 115 26 26 -19 12 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f3 -1|-1|-9671572 #nodeStyle
Cs0 f6 211 115 26 26 0 12 #rect
Cs0 f6 @|UdExitEndIcon #fIcon
Cs0 f6 -1|-1|-9671572 #nodeStyle
Cs0 f7 expr out #txt
Cs0 f7 109 128 211 128 #arcP
>Proto Cs0 .type ch.ivyteam.wf.test.ConfirmationDialog.ConfirmationDialogData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
