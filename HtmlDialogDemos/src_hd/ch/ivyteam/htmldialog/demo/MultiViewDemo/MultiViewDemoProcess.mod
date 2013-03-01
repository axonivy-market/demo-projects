[Ivy]
[>Created: Fri Mar 01 11:26:54 CET 2013]
13D0159BD5D40664 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MultiViewDemoProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
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
Ms0 @Alternative f5 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @GridStep f10 '' #zField
Ms0 @GridStep f11 '' #zField
Ms0 @GridStep f12 '' #zField
Ms0 @Alternative f13 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @PushWFArc f16 '' #zField
Ms0 @PushWFArc f18 '' #zField
Ms0 @PushWFArc f19 '' #zField
Ms0 @RichDialogEnd f20 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @PushWFArc f8 '' #zField
Ms0 @GridStep f21 '' #zField
Ms0 @PushWFArc f22 '' #zField
Ms0 @GridStep f23 '' #zField
Ms0 @PushWFArc f24 '' #zField
Ms0 @PushWFArc f25 '' #zField
Ms0 @PushWFArc f26 '' #zField
Ms0 @RichDialogMethodStart f27 '' #zField
Ms0 @RichDialogProcessEnd f28 '' #zField
Ms0 @PushWFArc f29 '' #zField
Ms0 @PushWFArc f17 '' #zField
>Proto Ms0 Ms0 MultiViewDemoProcess #zField
Ms0 f0 guid 13D0159BD8A52D62 #txt
Ms0 f0 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
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
Ms0 f0 86 54 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f1 86 150 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 96 74 96 150 #arcP
Ms0 f3 guid 13D016AD58EF27F9 #txt
Ms0 f3 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
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
Ms0 f3 334 54 20 20 13 0 #rect
Ms0 f3 @|RichDialogMethodStartIcon #fIcon
Ms0 f4 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f4 262 374 20 20 13 0 #rect
Ms0 f4 @|RichDialogProcessEndIcon #fIcon
Ms0 f6 guid 13D0171B58AD5337 #txt
Ms0 f6 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
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
Ms0 f6 86 214 20 20 13 0 #rect
Ms0 f6 @|RichDialogProcessStartIcon #fIcon
Ms0 f5 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Current View?</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f5 330 106 28 28 12 -23 #rect
Ms0 f5 @|AlternativeIcon #fIcon
Ms0 f9 expr out #txt
Ms0 f9 344 74 344 106 #arcP
Ms0 f10 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f10 actionTable 'out=in;
out.nextView="Invoice";
' #txt
Ms0 f10 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f10 182 236 36 24 20 -2 #rect
Ms0 f10 @|StepIcon #fIcon
Ms0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f11 actionTable 'out=in;
out.nextView="CreditCard";
' #txt
Ms0 f11 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f11 254 236 36 24 20 -2 #rect
Ms0 f11 @|StepIcon #fIcon
Ms0 f12 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f12 actionTable 'out=in;
out.nextView="Summary";
' #txt
Ms0 f12 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f12 398 236 36 24 20 -2 #rect
Ms0 f12 @|StepIcon #fIcon
Ms0 f13 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Payment Kind?</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f13 218 162 28 28 13 -22 #rect
Ms0 f13 @|AlternativeIcon #fIcon
Ms0 f14 expr in #txt
Ms0 f14 outCond 'in.currentView == "MultiViewDemo"' #txt
Ms0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MultiViewDemo
</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f14 330 120 232 162 #arcP
Ms0 f14 1 232 120 #addKink
Ms0 f14 0 0.6020408163265306 0 -1 #arcLabel
Ms0 f15 expr in #txt
Ms0 f15 outCond in.paymentKind=="Invoice" #txt
Ms0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Invoice</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f15 218 176 200 236 #arcP
Ms0 f15 1 200 176 #addKink
Ms0 f15 1 0.5166666666666667 0 0 #arcLabel
Ms0 f16 expr in #txt
Ms0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Credit Card
</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f16 246 176 272 236 #arcP
Ms0 f16 1 272 176 #addKink
Ms0 f16 1 0.6833333333333333 -3 0 #arcLabel
Ms0 f18 expr out #txt
Ms0 f18 272 260 272 374 #arcP
Ms0 f19 expr in #txt
Ms0 f19 outCond 'in.currentView == "Invoice"' #txt
Ms0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Invoice
</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f19 358 120 416 236 #arcP
Ms0 f19 1 416 120 #addKink
Ms0 f19 1 0.46551724137931033 -4 0 #arcLabel
Ms0 f20 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f20 guid 13D01736661937A1 #txt
Ms0 f20 86 310 20 20 13 0 #rect
Ms0 f20 @|RichDialogEndIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 96 234 96 310 #arcP
Ms0 f8 expr out #txt
Ms0 f8 403 260 282 375 #arcP
Ms0 f21 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f21 actionTable 'out=in;
out.nextView="CreditCardProcessing";
' #txt
Ms0 f21 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f21 462 236 36 24 20 -2 #rect
Ms0 f21 @|StepIcon #fIcon
Ms0 f22 expr out #txt
Ms0 f22 462 260 282 377 #arcP
Ms0 f23 actionDecl 'ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData out;
' #txt
Ms0 f23 actionTable 'out=in;
out.nextView="Summary";
' #txt
Ms0 f23 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f23 526 236 36 24 20 -2 #rect
Ms0 f23 @|StepIcon #fIcon
Ms0 f24 expr out #txt
Ms0 f24 526 257 282 379 #arcP
Ms0 f25 expr in #txt
Ms0 f25 outCond 'in.currentView == "CreditCard"' #txt
Ms0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Credit Card
</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f25 358 120 480 236 #arcP
Ms0 f25 1 480 120 #addKink
Ms0 f25 1 0.4482758620689655 -1 0 #arcLabel
Ms0 f26 expr in #txt
Ms0 f26 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Processing</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f26 358 120 544 236 #arcP
Ms0 f26 1 544 120 #addKink
Ms0 f26 1 0.3793103448275862 9 0 #arcLabel
Ms0 f27 guid 13D01F2037B4084E #txt
Ms0 f27 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
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
Ms0 f27 86 374 20 20 13 0 #rect
Ms0 f27 @|RichDialogMethodStartIcon #fIcon
Ms0 f28 type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
Ms0 f28 86 470 20 20 13 0 #rect
Ms0 f28 @|RichDialogProcessEndIcon #fIcon
Ms0 f29 96 394 96 470 #arcP
Ms0 f17 expr out #txt
Ms0 f17 206 260 267 375 #arcP
Ms0 f17 0 0.49999999999999994 0 0 #arcLabel
>Proto Ms0 .type ch.ivyteam.htmldialog.demo.MultiViewDemo.MultiViewDemoData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f9 tail #connect
Ms0 f9 head f5 in #connect
Ms0 f5 out f14 tail #connect
Ms0 f14 head f13 in #connect
Ms0 f13 out f15 tail #connect
Ms0 f15 head f10 mainIn #connect
Ms0 f13 out f16 tail #connect
Ms0 f16 head f11 mainIn #connect
Ms0 f11 mainOut f18 tail #connect
Ms0 f18 head f4 mainIn #connect
Ms0 f5 out f19 tail #connect
Ms0 f19 head f12 mainIn #connect
Ms0 f6 mainOut f7 tail #connect
Ms0 f7 head f20 mainIn #connect
Ms0 f12 mainOut f8 tail #connect
Ms0 f8 head f4 mainIn #connect
Ms0 f21 mainOut f22 tail #connect
Ms0 f22 head f4 mainIn #connect
Ms0 f23 mainOut f24 tail #connect
Ms0 f24 head f4 mainIn #connect
Ms0 f5 out f25 tail #connect
Ms0 f25 head f21 mainIn #connect
Ms0 f5 out f26 tail #connect
Ms0 f26 head f23 mainIn #connect
Ms0 f27 mainOut f29 tail #connect
Ms0 f29 head f28 mainIn #connect
Ms0 f10 mainOut f17 tail #connect
Ms0 f17 head f4 mainIn #connect
