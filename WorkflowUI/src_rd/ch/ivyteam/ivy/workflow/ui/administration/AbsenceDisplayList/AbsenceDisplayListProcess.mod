[Ivy]
[>Created: Thu Sep 22 13:36:18 CEST 2011]
12A196714EFC9E34 3.17 #module
>Proto >Proto Collection #zClass
As0 AbsenceManagementProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogEnd f17 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogProcessEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogMethodStart f6 '' #zField
As0 @PushWFArc f7 '' #zField
>Proto As0 As0 AbsenceManagementProcess #zField
As0 f0 guid 1198ABD3DECFDD60 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents false #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '{/userDisplayListRDC {/fieldName "userDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/userAbsenceDisplayListRDC {/fieldName "userAbsenceDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/separatorRDC {/fieldName "separatorRDC"/startMethod "start(String)"/parameterMapping ""/initScript "param.separatorText = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc\");"/userContext * }/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"/ch/ivyteam/ivy/workflow/ui/administration/images/absence48\";\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/allAbsenceShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/allAbsenceLongDesc\");\n"/userContext * }}' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 54 46 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f1 51 203 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f17 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f17 guid 12061AD5D7A35B2D #txt
As0 f17 211 203 26 26 14 0 #rect
As0 f17 @|RichDialogEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 64 66 64 203 #arcP
As0 f3 guid 1308AD7FE68F84EA #txt
As0 f3 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.richdialog.exec.RdEvent;

if (event instanceof RdEvent && (event as RdEvent).getParameter() instanceof IUser)
{	
		out.selectedUser = (event as RdEvent).getParameter() as IUser;
		ivy.log.debug("Displaying absences for user {0}.", out.selectedUser.getName());
		panel.userAbsenceDisplayListRDC.setUser(out.selectedUser);
		panel.separatorRDC.setSeparatorText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/definedAbsencesFor", [out.selectedUser.getName()]));
}' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadUserAbsences</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 366 46 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f4 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f4 366 206 20 20 13 0 #rect
As0 f4 @|RichDialogProcessEndIcon #fIcon
As0 f5 expr out #txt
As0 f5 376 66 376 206 #arcP
As0 f6 guid 13290EB5CEEEB1E6 #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
As0 f6 method close() #txt
As0 f6 disableUIEvents false #txt
As0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f6 outParameterDecl '<> result;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
As0 f6 214 46 20 20 13 0 #rect
As0 f6 @|RichDialogMethodStartIcon #fIcon
As0 f7 expr out #txt
As0 f7 224 66 224 203 #arcP
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f6 mainOut f7 tail #connect
As0 f7 head f17 mainIn #connect
