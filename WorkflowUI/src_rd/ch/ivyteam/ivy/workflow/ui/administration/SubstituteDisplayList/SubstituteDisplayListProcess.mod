[Ivy]
[>Created: Thu Sep 22 13:47:39 CEST 2011]
12A19679D334BA22 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SubstituteManagementProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f5 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogMethodStart f2 '' #zField
Ss0 @RichDialogEnd f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
>Proto Ss0 Ss0 SubstituteManagementProcess #zField
Ss0 f0 guid 11990B668C81AC8B #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/userDisplayListRDC {/fieldName "userDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/userSubstituteDisplayListRDC {/fieldName "userSubstituteDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/separatorRDC {/fieldName "separatorRDC"/startMethod "start(String)"/parameterMapping ""/initScript "param.separatorText = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc\");"/userContext * }/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/administration/images/substitute48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/allSubstitutesShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/allSubstitutesLongDesc\");\n"/userContext * }}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 62 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f1 59 203 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f5 guid 1307A1845AD57C7C #txt
Ss0 f5 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.richdialog.exec.RdEvent;

if (event instanceof RdEvent && (event as RdEvent).getParameter() instanceof IUser)
{	
		out.selectedUser = (event as RdEvent).getParameter() as IUser;
		ivy.log.debug("Displaying substitutions for user {0}.", out.selectedUser.getName());
		panel.userSubstituteDisplayListRDC.setUser(out.selectedUser);
		panel.separatorRDC.setSeparatorText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/definedSubstitutesFor", [out.selectedUser.getName()]));
}' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadUserSubstitutes</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 438 54 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f6 438 206 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 448 74 448 206 #arcP
Ss0 f9 expr out #txt
Ss0 f9 72 74 72 203 #arcP
Ss0 f2 guid 13290F63E8FBA7F4 #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f2 method close() #txt
Ss0 f2 disableUIEvents false #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Ss0 f2 270 54 20 20 13 0 #rect
Ss0 f2 @|RichDialogMethodStartIcon #fIcon
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f3 guid 13290F64C4BE0807 #txt
Ss0 f3 270 206 20 20 13 0 #rect
Ss0 f3 @|RichDialogEndIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 280 74 280 206 #arcP
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>181</swimlaneSize>
    <swimlaneSize>211</swimlaneSize>
    <swimlaneSize>308</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f5 mainOut f10 tail #connect
Ss0 f10 head f6 mainIn #connect
Ss0 f0 mainOut f9 tail #connect
Ss0 f9 head f1 mainIn #connect
Ss0 f2 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
