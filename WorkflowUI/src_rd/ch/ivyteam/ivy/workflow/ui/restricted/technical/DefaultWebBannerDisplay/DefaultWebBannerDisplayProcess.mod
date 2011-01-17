[Ivy]
[>Created: Wed Jun 23 17:36:06 CEST 2010]
129653262B4670B1 3.12 #module
>Proto >Proto Collection #zClass
Ds0 DefaultWebBannerDisplayProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogProcessEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
>Proto Ds0 Ds0 DefaultWebBannerDisplayProcess #zField
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 guid 1296532636014763 #txt
Ds0 f0 type ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 90 40 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData #txt
Ds0 f1 90 140 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 100 60 100 140 #arcP
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadXpertLineWebSite</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 guid 129653B69BDBE07F #txt
Ds0 f3 type ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 actionCode 'import com.ulcjava.base.application.ClientContext;

ClientContext.showDocument(ivy.var.xivy_workflow_ui_restricted_xpertLineOfficialWebSite);' #txt
Ds0 f3 198 38 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData #txt
Ds0 f4 198 150 20 20 13 0 #rect
Ds0 f4 @|RichDialogProcessEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 208 58 208 150 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay.DefaultWebBannerDisplayData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
