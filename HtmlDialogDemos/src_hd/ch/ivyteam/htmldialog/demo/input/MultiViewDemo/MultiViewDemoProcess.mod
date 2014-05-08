[Ivy]
[>Created: Thu May 08 11:22:00 CEST 2014]
13D0159BD5D40664 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MultiViewDemoProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ct0 Component Big #zClass
Ct0 B #cInfo
Ms0 Ct0 S10 'Sub 1' #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogMethodStart f3 '' #zField
Ms0 @RichDialogProcessEnd f4 '' #zField
Ms0 @RichDialogProcessStart f6 '' #zField
Ms0 @RichDialogEnd f20 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @RichDialogMethodStart f27 '' #zField
Ms0 @RichDialogProcessEnd f28 '' #zField
Ms0 @PushWFArc f29 '' #zField
Ms0 @PushWFArc f31 '' #zField
Ms0 @PushWFArc f32 '' #zField
>Proto Ms0 Ms0 MultiViewDemoProcess #zField
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @PushWFArc f26 '' #zField
Ct0 @GridStep f23 '' #zField
Ct0 @PushWFArc f19 '' #zField
Ct0 @GridStep f21 '' #zField
Ct0 @PushWFArc f16 '' #zField
Ct0 @GridStep f11 '' #zField
Ct0 @PushWFArc f15 '' #zField
Ct0 @GridStep f10 '' #zField
Ct0 @Alternative f13 '' #zField
Ct0 @GridStep f12 '' #zField
Ct0 @PushWFArc f14 '' #zField
Ct0 @PushWFArc f25 '' #zField
Ct0 @Alternative f5 '' #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushWFArc f0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @Alternative f9 '' #zField
Ct0 @PushWFArc f1 '' #zField
Ct0 @PushWFArc f17 '' #zField
Ct0 @PushWFArc f7 '' #zField
Ct0 @PushWFArc f8 '' #zField
Ct0 @PushWFArc f6 '' #zField
Ct0 @PushWFArc f4 '' #zField
>Proto Ct0 Ct0 Component #zField
Ms0 S10 .resExport export #txt
Ms0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Select view</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 S10 216 330 112 44 -30 -8 #rect
Ms0 S10 @|BIcon #fIcon
Ms0 S10 -1|-1|-9671572 #nodeStyle
Ms0 f0 guid 13D0159BD8A52D62 #txt
Ms0 f0 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 inParameterMapAction 'out.paymentKind="Invoice";
out.processing=true;
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -27 12 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f0 -1|-1|-9671572 #nodeStyle
Ms0 f1 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f1 211 51 26 26 0 12 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f1 -1|-1|-9671572 #nodeStyle
Ms0 f2 expr out #txt
Ms0 f2 109 64 211 64 #arcP
Ms0 f3 guid 13D016AD58EF27F9 #txt
Ms0 f3 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f3 method nextView(String) #txt
Ms0 f3 disableUIEvents false #txt
Ms0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String currentView> param = methodEvent.getInputArguments();
' #txt
Ms0 f3 inParameterMapAction 'out.currentView=param.currentView;
' #txt
Ms0 f3 outParameterDecl '<java.lang.String nextView> result;
' #txt
Ms0 f3 outParameterMapAction 'result.nextView=in.nextView;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>nextView</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 339 26 26 -24 12 #rect
Ms0 f3 @|RichDialogMethodStartIcon #fIcon
Ms0 f3 -1|-1|-9671572 #nodeStyle
Ms0 f4 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f4 435 339 26 26 0 12 #rect
Ms0 f4 @|RichDialogProcessEndIcon #fIcon
Ms0 f4 -1|-1|-9671572 #nodeStyle
Ms0 f6 guid 13D0171B58AD5337 #txt
Ms0 f6 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f6 83 147 26 26 -15 12 #rect
Ms0 f6 @|RichDialogProcessStartIcon #fIcon
Ms0 f6 -1|-1|-9671572 #nodeStyle
Ms0 f20 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f20 guid 13D01736661937A1 #txt
Ms0 f20 211 147 26 26 0 12 #rect
Ms0 f20 @|RichDialogEndIcon #fIcon
Ms0 f20 -1|-1|-9671572 #nodeStyle
Ms0 f7 expr out #txt
Ms0 f7 109 160 211 160 #arcP
Ms0 f27 guid 13D01F2037B4084E #txt
Ms0 f27 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f27 method stopProcessing() #txt
Ms0 f27 disableUIEvents false #txt
Ms0 f27 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f27 inParameterMapAction 'out.processing=false;
' #txt
Ms0 f27 outParameterDecl '<> result;
' #txt
Ms0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>stopProcessing</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f27 83 243 26 26 -43 12 #rect
Ms0 f27 @|RichDialogMethodStartIcon #fIcon
Ms0 f27 -1|-1|-9671572 #nodeStyle
Ms0 f28 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ms0 f28 211 243 26 26 0 12 #rect
Ms0 f28 @|RichDialogProcessEndIcon #fIcon
Ms0 f28 -1|-1|-9671572 #nodeStyle
Ms0 f29 109 256 211 256 #arcP
Ms0 f31 expr out #txt
Ms0 f31 109 352 216 352 #arcP
Ms0 f32 328 352 435 352 #arcP
>Proto Ms0 .type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ct0 f26 expr in #txt
Ct0 f26 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Processing</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f26 88 336 224 288 #arcP
Ct0 f26 1 88 288 #addKink
Ct0 f26 1 0.4090909090909091 0 -8 #arcLabel
Ct0 f23 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ct0 f23 actionTable 'out=in;
out.nextView="Summary";
' #txt
Ct0 f23 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f23 224 266 112 44 58 -2 #rect
Ct0 f23 @|StepIcon #fIcon
Ct0 f23 -1|-1|-9671572 #nodeStyle
Ct0 f19 expr in #txt
Ct0 f19 outCond 'in.currentView == "Invoice"' #txt
Ct0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Invoice
</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f19 88 336 224 96 #arcP
Ct0 f19 1 88 96 #addKink
Ct0 f19 1 0.3088235294117647 0 -3 #arcLabel
Ct0 f21 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ct0 f21 actionTable 'out=in;
out.nextView="CreditCardProcessing";
' #txt
Ct0 f21 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f21 224 170 112 44 58 -2 #rect
Ct0 f21 @|StepIcon #fIcon
Ct0 f21 -1|-1|-9671572 #nodeStyle
Ct0 f16 expr in #txt
Ct0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Credit Card
</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f16 248 576 352 512 #arcP
Ct0 f16 1 248 512 #addKink
Ct0 f16 1 0.36538461538461536 0 -4 #arcLabel
Ct0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ct0 f11 actionTable 'out=in;
out.nextView="CreditCard";
' #txt
Ct0 f11 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f11 352 490 112 44 58 -2 #rect
Ct0 f11 @|StepIcon #fIcon
Ct0 f11 -1|-1|-9671572 #nodeStyle
Ct0 f15 expr in #txt
Ct0 f15 outCond in.paymentKind=="Invoice" #txt
Ct0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Invoice</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f15 248 608 352 672 #arcP
Ct0 f15 1 248 672 #addKink
Ct0 f15 1 0.25961538461538464 0 10 #arcLabel
Ct0 f10 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ct0 f10 actionTable 'out=in;
out.nextView="Invoice";
' #txt
Ct0 f10 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f10 352 650 112 44 58 -2 #rect
Ct0 f10 @|StepIcon #fIcon
Ct0 f10 -1|-1|-9671572 #nodeStyle
Ct0 f13 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Payment Kind?</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f13 232 576 32 32 24 -9 #rect
Ct0 f13 @|AlternativeIcon #fIcon
Ct0 f13 -1|-1|-9671572 #nodeStyle
Ct0 f12 actionDecl 'ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData out;
' #txt
Ct0 f12 actionTable 'out=in;
out.nextView="Summary";
' #txt
Ct0 f12 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f12 224 74 112 44 58 -2 #rect
Ct0 f12 @|StepIcon #fIcon
Ct0 f12 -1|-1|-9671572 #nodeStyle
Ct0 f14 expr in #txt
Ct0 f14 outCond 'in.currentView == "MultiViewDemo"' #txt
Ct0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MultiViewDemo
</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f14 88 368 232 592 #arcP
Ct0 f14 1 88 592 #addKink
Ct0 f14 1 0.45394736842105265 0 -2 #arcLabel
Ct0 f25 expr in #txt
Ct0 f25 outCond 'in.currentView == "CreditCard"' #txt
Ct0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Credit Card
</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f25 88 336 224 192 #arcP
Ct0 f25 1 88 192 #addKink
Ct0 f25 1 0.375 0 -3 #arcLabel
Ct0 f5 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Current View?</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f5 72 336 32 32 23 -8 #rect
Ct0 f5 @|AlternativeIcon #fIcon
Ct0 f5 -1|-1|-9671572 #nodeStyle
Ct0 g0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>in 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g0 19 339 26 26 0 5 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g0 -1|-1|-9671572 #nodeStyle
Ct0 f0 45 352 72 352 #arcP
Ct0 g1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>out 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g1 659 339 26 26 0 5 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 g1 -1|-1|-9671572 #nodeStyle
Ct0 f9 type ch.ivyteam.htmldialog.demo.input.MultiViewDemo.MultiViewDemoData #txt
Ct0 f9 560 336 32 32 0 16 #rect
Ct0 f9 @|AlternativeIcon #fIcon
Ct0 f9 -1|-1|-9671572 #nodeStyle
Ct0 f1 expr in #txt
Ct0 f1 592 352 659 352 #arcP
Ct0 f17 expr out #txt
Ct0 f17 464 512 576 368 #arcP
Ct0 f17 1 576 512 #addKink
Ct0 f7 expr out #txt
Ct0 f7 464 672 576 368 #arcP
Ct0 f7 1 576 672 #addKink
Ct0 f7 1 0.3274472488214351 0 0 #arcLabel
Ct0 f8 expr out #txt
Ct0 f8 336 288 576 336 #arcP
Ct0 f8 1 576 288 #addKink
Ct0 f6 expr out #txt
Ct0 f6 336 192 576 336 #arcP
Ct0 f6 1 576 192 #addKink
Ct0 f6 0 0.8288361902806625 0 0 #arcLabel
Ct0 f4 expr out #txt
Ct0 f4 336 96 576 336 #arcP
Ct0 f4 1 576 96 #addKink
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f6 mainOut f7 tail #connect
Ms0 f7 head f20 mainIn #connect
Ms0 f27 mainOut f29 tail #connect
Ms0 f29 head f28 mainIn #connect
Ms0 f31 head S10 g0 #connect
Ms0 S10 g1 f32 tail #connect
Ms0 f32 head f4 mainIn #connect
Ms0 f3 mainOut f31 tail #connect
Ct0 f5 out f14 tail #connect
Ct0 f14 head f13 in #connect
Ct0 f13 out f15 tail #connect
Ct0 f15 head f10 mainIn #connect
Ct0 f13 out f16 tail #connect
Ct0 f16 head f11 mainIn #connect
Ct0 f5 out f19 tail #connect
Ct0 f19 head f12 mainIn #connect
Ct0 f5 out f25 tail #connect
Ct0 f25 head f21 mainIn #connect
Ct0 f5 out f26 tail #connect
Ct0 f26 head f23 mainIn #connect
Ct0 g0 m f0 tail #connect
Ct0 f0 head f5 in #connect
Ct0 f9 out f1 tail #connect
Ct0 f1 head g1 m #connect
Ct0 f11 mainOut f17 tail #connect
Ct0 f17 head f9 in #connect
Ct0 f10 mainOut f7 tail #connect
Ct0 f7 head f9 in #connect
Ct0 f23 mainOut f8 tail #connect
Ct0 f8 head f9 in #connect
Ct0 f21 mainOut f6 tail #connect
Ct0 f6 head f9 in #connect
Ct0 f12 mainOut f4 tail #connect
Ct0 f4 head f9 in #connect
Ct0 0 0 736 760 0 #ivRect
