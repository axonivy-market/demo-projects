[Ivy]
13D39CF289ACE89B 9.4.6 #module
>Proto >Proto Collection #zClass
Ps0 PrimefacesProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .colors .colors #zField
Ps0 @TextInP color color #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @GridStep f3 '' #zField
Ps0 @UdMethod f5 '' #zField
Ps0 @UdProcessEnd f6 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @PushWFArc f7 '' #zField
>Proto Ps0 Ps0 PrimefacesProcess #zField
Ps0 f0 guid 13D39CF28B9D0EB7 #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 outParameterDecl '<> result;' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -16 12 #rect
Ps0 f0 -1|-1|-9671572 #nodeStyle
Ps0 f1 339 51 26 26 0 12 #rect
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'import org.primefaces.context.PrimeRequestContext;

in.primefacesVersion = PrimeRequestContext.getCurrentInstance().getApplicationContext().getEnvironment().getBuildVersion();
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set Version</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 168 138 112 44 -31 -8 #rect
Ps0 f5 guid 14E3F8D0750EC6BD #txt
Ps0 f5 method getVersion() #txt
Ps0 f5 inParameterDecl '<> param;' #txt
Ps0 f5 outParameterDecl '<> result;' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getVersion()</name>
    </language>
</elementInfo>
' #txt
Ps0 f5 83 147 26 26 -33 12 #rect
Ps0 f6 339 147 26 26 0 12 #rect
Ps0 f2 expr out #txt
Ps0 f2 109 160 168 160 #arcP
Ps0 f4 expr out #txt
Ps0 f4 280 160 339 160 #arcP
Ps0 f7 expr out #txt
Ps0 f7 109 64 339 64 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.primefaces.Primefaces.PrimefacesData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f5 mainOut f2 tail #connect
Ps0 f2 head f3 mainIn #connect
Ps0 f3 mainOut f4 tail #connect
Ps0 f4 head f6 mainIn #connect
Ps0 f0 mainOut f7 tail #connect
Ps0 f7 head f1 mainIn #connect
