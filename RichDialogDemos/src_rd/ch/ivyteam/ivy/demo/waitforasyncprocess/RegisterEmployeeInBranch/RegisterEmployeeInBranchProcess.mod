[Ivy]
[>Created: Fri May 06 11:59:14 CEST 2011]
13054278F0891C12 3.17 #module
>Proto >Proto Collection #zClass
Rs0 RegisterEmployeeInBranchProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogEnd f3 '' #zField
Rs0 @PushWFArc f4 '' #zField
Rs0 @RichDialogInitStart f1 '' #zField
Rs0 @RichDialogProcessStep f2 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @RichDialogProcessEnd f6 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @RichDialogProcessStart f8 '' #zField
Rs0 @RichDialogEnd f9 '' #zField
Rs0 @PushWFArc f10 '' #zField
>Proto Rs0 Rs0 RegisterEmployeeInBranchProcess #zField
Rs0 f0 guid 12FC4B8D8F9C86ED #txt
Rs0 f0 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 86 38 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f3 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f3 guid 12FC4BAE99784DBF #txt
Rs0 f3 86 102 20 20 13 0 #rect
Rs0 f3 @|RichDialogEndIcon #fIcon
Rs0 f4 expr out #txt
Rs0 f4 96 58 96 102 #arcP
Rs0 f1 guid 12FC4BB08BDE4E36 #txt
Rs0 f1 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f1 method register(String) #txt
Rs0 f1 disableUIEvents true #txt
Rs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name> param = methodEvent.getInputArguments();
' #txt
Rs0 f1 inParameterMapAction 'out.name=param.name;
' #txt
Rs0 f1 outParameterDecl '<java.lang.String branch> result;
' #txt
Rs0 f1 outParameterMapAction 'result.branch=in.branch;
' #txt
Rs0 f1 embeddedRdInitializations '* ' #txt
Rs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register(String)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f1 198 46 20 20 13 0 #rect
Rs0 f1 @|RichDialogInitStartIcon #fIcon
Rs0 f2 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData out;
' #txt
Rs0 f2 actionTable 'out=in;
' #txt
Rs0 f2 actionCode 'in.list.add("Development");
in.list.add("Support");' #txt
Rs0 f2 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read branches</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f2 190 100 36 24 20 -2 #rect
Rs0 f2 @|RichDialogProcessStepIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 208 66 208 100 #arcP
Rs0 f6 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f6 198 182 20 20 13 0 #rect
Rs0 f6 @|RichDialogProcessEndIcon #fIcon
Rs0 f7 expr out #txt
Rs0 f7 208 124 208 182 #arcP
Rs0 f8 guid 12FC4BDC79EFB94C #txt
Rs0 f8 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f8 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData out;
' #txt
Rs0 f8 actionTable 'out=in;
' #txt
Rs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OK</name>
        <nameStyle>2,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f8 430 54 20 20 13 0 #rect
Rs0 f8 @|RichDialogProcessStartIcon #fIcon
Rs0 f9 type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
Rs0 f9 guid 12FC4BE24A3EC90C #txt
Rs0 f9 430 142 20 20 13 0 #rect
Rs0 f9 @|RichDialogEndIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 440 74 440 142 #arcP
>Proto Rs0 .ui2RdDataAction 'out.branch=IF(panel.ComboBox.#selectedListEntry == null, "Development", panel.ComboBox.selectedListEntry as String);
' #txt
>Proto Rs0 .rdData2UIAction 'panel.ComboBox.listData=in.list;
panel.Label.text=in.name;
' #txt
>Proto Rs0 .type ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch.RegisterEmployeeInBranchData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f4 tail #connect
Rs0 f4 head f3 mainIn #connect
Rs0 f1 mainOut f5 tail #connect
Rs0 f5 head f2 mainIn #connect
Rs0 f2 mainOut f7 tail #connect
Rs0 f7 head f6 mainIn #connect
Rs0 f8 mainOut f10 tail #connect
Rs0 f10 head f9 mainIn #connect