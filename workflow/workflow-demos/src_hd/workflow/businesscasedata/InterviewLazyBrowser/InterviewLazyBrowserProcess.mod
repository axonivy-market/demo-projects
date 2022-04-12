[Ivy]
16EF595252014E44 9.4.3 #module
>Proto >Proto Collection #zClass
Is0 InterviewLazyBrowserProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @TextInP .colors .colors #zField
Is0 @TextInP color color #zField
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @UdInit f0 '' #zField
Is0 @UdProcessEnd f1 '' #zField
Is0 @PushWFArc f2 '' #zField
Is0 @UdEvent f3 '' #zField
Is0 @UdExitEnd f4 '' #zField
Is0 @PushWFArc f5 '' #zField
>Proto Is0 Is0 InterviewLazyBrowserProcess #zField
Is0 f0 guid 16EF5952527DB8C6 #txt
Is0 f0 method start() #txt
Is0 f0 inParameterDecl '<> param;' #txt
Is0 f0 inParameterMapAction 'out.interviewModel=new ch.ivyteam.ivy.wfdemo.businessdata.InterviewLazyDataModel();
' #txt
Is0 f0 outParameterDecl '<> result;' #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Is0 f0 83 51 26 26 -20 15 #rect
Is0 f1 211 51 26 26 0 12 #rect
Is0 f2 109 64 211 64 #arcP
Is0 f3 guid 16EF595252CF6FE3 #txt
Is0 f3 actionTable 'out=in;
' #txt
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Is0 f3 83 147 26 26 -16 15 #rect
Is0 f4 211 147 26 26 0 12 #rect
Is0 f5 109 160 211 160 #arcP
>Proto Is0 .type workflow.businesscasedata.InterviewLazyBrowser.InterviewLazyBrowserData #txt
>Proto Is0 .processKind HTML_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f5 tail #connect
Is0 f5 head f4 mainIn #connect
