[Ivy]
13F1D8A32C686BDF 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CaseListUserProcess Big #zClass
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
>Proto Cs0 Cs0 CaseListUserProcess #zField
Cs0 f0 guid 13F1D8A32D5EA95D #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl '<> param;' #txt
Cs0 f0 inParameterMapAction 'out.cases=new ch.ivyteam.wf.history.UserCaseLazyDataModel();
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
Cs0 f0 83 51 26 26 -16 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 275 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f2 expr out #txt
Cs0 f2 109 64 275 64 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseListUser.CaseListUserData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
