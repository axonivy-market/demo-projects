[Ivy]
[>Created: Thu Jun 13 15:46:47 CEST 2013]
12AF1BDC1F7D64CA 3.17 #module
>Proto >Proto Collection #zClass
Ps0 ProgressDialogProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogProcessStart f3 '' #zField
Ps0 @InfoButton f6 '' #zField
Ps0 @RichDialogProcessStep f7 '' #zField
Ps0 @PushWFArc f8 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @AnnotationArc f9 '' #zField
Ps0 @Alternative f10 '' #zField
Ps0 @PushWFArc f11 '' #zField
Ps0 @RichDialogProcessStep f12 '' #zField
Ps0 @RichDialogUiSync f13 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @PushWFArc f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RichDialogEnd f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @RichDialogProcessStart f4 '' #zField
Ps0 @RichDialogProcessStart f5 '' #zField
Ps0 @RichDialogProcessStep f19 '' #zField
Ps0 @RichDialogProcessStep f20 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @RichDialogProcessEnd f22 '' #zField
Ps0 @PushWFArc f23 '' #zField
Ps0 @RichDialogProcessEnd f24 '' #zField
Ps0 @PushWFArc f25 '' #zField
Ps0 @PushWFArc f26 '' #zField
>Proto Ps0 Ps0 ProgressDialogProcess #zField
Ps0 f0 guid 12AF1BDCAFC6C104 #txt
Ps0 f0 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f0 method start(Number) #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number amountOfWork> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.currentWork=0;
out.workToDo=param.amountOfWork;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Number)</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 78 38 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f1 78 190 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 guid 12AF1E7F72F89BC1 #txt
Ps0 f3 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f3 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doWork</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 286 38 20 20 13 0 #rect
Ps0 f3 @|RichDialogProcessStartIcon #fIcon
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Please note the usage of ivy.rd.clickDeferred(hiddenButton)   to
call the doWork process after the init method has finished.</name>
        <nameStyle>25,7
34,3,7
6,7
9,7
6,0,7
9,7
5,2,7
30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 21 243 407 43 -198 -16 #rect
Ps0 f6 @|IBIcon #fIcon
Ps0 f6 -256|-256|-16777216 #nodeStyle
Ps0 f7 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f7 actionTable 'out=in;
' #txt
Ps0 f7 actionCode 'panel.workProgressBar.string = "Starting...";
panel.workProgressBar.value = 0;
panel.workProgressBar.minimum = 0;
panel.workProgressBar.maximum = in.workToDo;

ivy.rd.clickDeferred(panel.hiddenButton);' #txt
Ps0 f7 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 70 92 36 24 27 -5 #rect
Ps0 f7 @|RichDialogProcessStepIcon #fIcon
Ps0 f8 expr out #txt
Ps0 f8 88 58 88 92 #arcP
Ps0 f2 expr out #txt
Ps0 f2 88 116 88 190 #arcP
Ps0 f9 223 242 83 116 #arcP
Ps0 f10 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>done?</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 282 90 28 28 -59 -17 #rect
Ps0 f10 @|AlternativeIcon #fIcon
Ps0 f11 expr out #txt
Ps0 f11 296 58 296 90 #arcP
Ps0 f12 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f12 actionTable 'out=in;
' #txt
Ps0 f12 actionCode 'out.currentWork = Math.min(in.currentWork + in.rand.nextInt(in.workToDo/10), in.workToDo);

Thread.sleep(500);

panel.workProgressBar.value = out.currentWork;
panel.workProgressBar.string = "Completed "+out.currentWork+"/"+out.workToDo+" of my work";' #txt
Ps0 f12 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>work</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 374 92 36 24 -15 17 #rect
Ps0 f12 @|RichDialogProcessStepIcon #fIcon
Ps0 f13 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f13 guid 12AF1EE7FEB4AC95 #txt
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update UI</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f13 443 91 26 26 20 -4 #rect
Ps0 f13 @|RichDialogUiSyncIcon #fIcon
Ps0 f14 expr out #txt
Ps0 f14 410 104 443 104 #arcP
Ps0 f15 expr out #txt
Ps0 f15 456 117 302 112 #arcP
Ps0 f15 1 456 152 #addKink
Ps0 f15 2 328 152 #addKink
Ps0 f15 1 0.46942677815633893 0 0 #arcLabel
Ps0 f16 expr in #txt
Ps0 f16 310 104 374 104 #arcP
Ps0 f16 0 0.5150350090425634 0 0 #arcLabel
Ps0 f17 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f17 guid 12AF1EEC04EDC51E #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close when done</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 286 190 20 20 23 -2 #rect
Ps0 f17 @|RichDialogEndIcon #fIcon
Ps0 f18 expr in #txt
Ps0 f18 outCond 'in.currentWork >= in.workToDo' #txt
Ps0 f18 296 118 296 190 #arcP
Ps0 f4 guid 12AF573E49CF54EF #txt
Ps0 f4 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f4 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f4 actionTable 'out=in;
' #txt
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>one</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 134 342 20 20 13 0 #rect
Ps0 f4 @|RichDialogProcessStartIcon #fIcon
Ps0 f5 guid 12AF573FA7FC9D1A #txt
Ps0 f5 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f5 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>two</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 334 342 20 20 13 0 #rect
Ps0 f5 @|RichDialogProcessStartIcon #fIcon
Ps0 f19 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f19 actionTable 'out=in;
' #txt
Ps0 f19 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f19 126 412 36 24 20 -2 #rect
Ps0 f19 @|RichDialogProcessStepIcon #fIcon
Ps0 f20 actionDecl 'ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData out;
' #txt
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f20 326 404 36 24 20 -2 #rect
Ps0 f20 @|RichDialogProcessStepIcon #fIcon
Ps0 f21 expr out #txt
Ps0 f21 344 362 344 404 #arcP
Ps0 f22 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f22 334 478 20 20 13 0 #rect
Ps0 f22 @|RichDialogProcessEndIcon #fIcon
Ps0 f23 expr out #txt
Ps0 f23 344 428 344 478 #arcP
Ps0 f24 type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
Ps0 f24 134 478 20 20 13 0 #rect
Ps0 f24 @|RichDialogProcessEndIcon #fIcon
Ps0 f25 expr out #txt
Ps0 f25 144 436 144 478 #arcP
Ps0 f26 expr out #txt
Ps0 f26 144 362 144 412 #arcP
>Proto Ps0 .type ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog.ProgressDialogData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f8 tail #connect
Ps0 f8 head f7 mainIn #connect
Ps0 f7 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f6 ao f9 tail #connect
Ps0 f9 head f7 @CG|ai #connect
Ps0 f3 mainOut f11 tail #connect
Ps0 f11 head f10 in #connect
Ps0 f12 mainOut f14 tail #connect
Ps0 f14 head f13 mainIn #connect
Ps0 f13 mainOut f15 tail #connect
Ps0 f15 head f10 in #connect
Ps0 f16 head f12 mainIn #connect
Ps0 f10 out f18 tail #connect
Ps0 f18 head f17 mainIn #connect
Ps0 f10 out f16 tail #connect
Ps0 f5 mainOut f21 tail #connect
Ps0 f21 head f20 mainIn #connect
Ps0 f20 mainOut f23 tail #connect
Ps0 f23 head f22 mainIn #connect
Ps0 f19 mainOut f25 tail #connect
Ps0 f25 head f24 mainIn #connect
Ps0 f4 mainOut f26 tail #connect
Ps0 f26 head f19 mainIn #connect
