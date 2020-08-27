[Ivy]
15FB50542D237D38 9.2.0 #module
>Proto >Proto Collection #zClass
Ls0 LazyLoadedModalDialogProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @UdEvent f3 '' #zField
Ls0 @UdExitEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @UdMethod f6 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @UdProcessEnd f7 '' #zField
>Proto Ls0 Ls0 LazyLoadedModalDialogProcess #zField
Ls0 f0 guid 15FB50542FA41B51 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -20 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 15FB505430A95F65 #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -16 12 #rect
Ls0 f3 @|UdEventIcon #fIcon
Ls0 f4 211 147 26 26 0 12 #rect
Ls0 f4 @|UdExitEndIcon #fIcon
Ls0 f5 expr out #txt
Ls0 f5 109 160 211 160 #arcP
Ls0 f6 guid 15FB5D7D51549A5F #txt
Ls0 f6 method showAddress(Boolean) #txt
Ls0 f6 inParameterDecl '<Boolean show> param;' #txt
Ls0 f6 inParameterMapAction 'out.showAddress=param.show;
' #txt
Ls0 f6 outParameterDecl '<> result;' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showAddress</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 83 243 26 26 -41 15 #rect
Ls0 f6 @|UdMethodIcon #fIcon
Ls0 f8 expr out #txt
Ls0 f8 109 256 211 256 #arcP
Ls0 f7 211 243 26 26 0 12 #rect
Ls0 f7 @|UdProcessEndIcon #fIcon
>Proto Ls0 .type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f6 mainOut f8 tail #connect
Ls0 f8 head f7 mainIn #connect
