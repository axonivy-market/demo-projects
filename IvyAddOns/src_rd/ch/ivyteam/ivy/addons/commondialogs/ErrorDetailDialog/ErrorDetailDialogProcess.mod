[Ivy]
[>Created: Fri May 07 15:18:37 CEST 2010]
1180E72D324A3BE5 3.12 #module
>Proto >Proto Collection #zClass
Es0 ErrorDetailDialogProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessStart f1 '' #zField
Es0 @RichDialogEnd f2 '' #zField
Es0 @PushWFArc f3 '' #zField
Es0 @RichDialogProcessEnd f4 '' #zField
Es0 @RichDialogProcessStep f6 '' #zField
Es0 @PushWFArc f7 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @RichDialogInitStart f8 '' #zField
Es0 @PushWFArc f12 '' #zField
>Proto Es0 Es0 ErrorDetailDialogProcess #zField
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetailError(Throwable)</name>
        <nameStyle>26,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 guid 1180E75DFA8E606F #txt
Es0 f0 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f0 method showDetailError(java.lang.Throwable) #txt
Es0 f0 disableUIEvents false #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Throwable error> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inActionCode 'import java.io.StringWriter;
import java.io.PrintWriter;

StringWriter writer = new StringWriter(1000);
PrintWriter printer = new PrintWriter(writer);

param.error.printStackTrace(printer);

out.errorStackTrace = writer.toString();
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 embeddedRdInitializations '* ' #txt
Es0 f0 54 38 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 guid 1180E75E9B47C51C #txt
Es0 f1 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f1 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData out;
' #txt
Es0 f1 actionTable 'out=in;
' #txt
Es0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f1 510 46 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessStartIcon #fIcon
Es0 f2 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f2 guid 1180E76072C5B80E #txt
Es0 f2 507 163 26 26 14 0 #rect
Es0 f2 @|RichDialogEndIcon #fIcon
Es0 f3 expr out #txt
Es0 f3 520 66 520 163 #arcP
Es0 f4 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f4 51 163 26 26 14 0 #rect
Es0 f4 @|RichDialogProcessEndIcon #fIcon
Es0 f6 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData out;
' #txt
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 actionCode panel.getRootPane().setDefaultButton(panel.okButton); #txt
Es0 f6 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default button</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 46 92 36 24 20 -2 #rect
Es0 f6 @|RichDialogProcessStepIcon #fIcon
Es0 f7 expr out #txt
Es0 f7 64 58 64 92 #arcP
Es0 f5 expr out #txt
Es0 f5 64 116 64 163 #arcP
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetailError(IvyResultStatus)</name>
        <nameStyle>32,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f8 guid 12871C62D3E65550 #txt
Es0 f8 type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
Es0 f8 method showDetailError(ch.ivyteam.ivy.addons.data.technical.IvyResultStatus) #txt
Es0 f8 disableUIEvents true #txt
Es0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus> param = methodEvent.getInputArguments();
' #txt
Es0 f8 inActionCode 'import ch.ivyteam.ivy.addons.commondialogs.ErrorDialog.ErrorDialogHelper;
import java.util.HashSet;
import ch.ivyteam.ivy.addons.data.technical.IvyResultStatus;

// print out the IvyResultStatus to the String
out.errorStackTrace = ErrorDialogHelper.writeIvyResultStatusToString(param.ivyResultStatus);


/*

import java.io.StringWriter;
import java.io.PrintWriter;

StringWriter stringWriter = new StringWriter(10000);
PrintWriter printer = new PrintWriter(stringWriter);

IvyResultStatus currentIvyResultStatus = param.ivyResultStatus;

// ensure that there is no duplicate IvyResultStatus objects
HashSet ivyResultStatusHashSet = new HashSet();

while (#currentIvyResultStatus is initialized && ivyResultStatusHashSet.add(currentIvyResultStatus))
{	
	stringWriter.write("MESSAGE: " + currentIvyResultStatus.message + "\n");
	stringWriter.write("CODE: " + currentIvyResultStatus.code + "\n");
	stringWriter.write("SEVERITY: " + currentIvyResultStatus.getSeverity().toString() + "\n");
	stringWriter.write("DETAIL:\n" + currentIvyResultStatus.detail + "\n");
	stringWriter.write("JAVA EXCEPTION:\n");	
	currentIvyResultStatus.javaException.printStackTrace(printer);
	
	// get the next element of IvyResultStatus stack
	currentIvyResultStatus = currentIvyResultStatus.getIvyResultStatusStack();
	stringWriter.write("\n\n");
}

// removes all of the elements from this set
ivyResultStatusHashSet.clear();

// write the result to the RD Data attribute
out.errorStackTrace = stringWriter.toString();

*/' #txt
Es0 f8 outParameterDecl '<> result;
' #txt
Es0 f8 embeddedRdInitializations '* ' #txt
Es0 f8 246 38 20 20 13 0 #rect
Es0 f8 @|RichDialogInitStartIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 256 58 82 103 #arcP
Es0 f12 1 256 88 #addKink
Es0 f12 1 0.37895253151529346 0 0 #arcLabel
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>470</swimlaneSize>
    <swimlaneSize>112</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16764007</swimlaneColor>
</elementInfo>
' #txt
>Proto Es0 .type ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog.ErrorDetailDialogData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 .rdData2UIAction 'panel.detailTextArea.text=in.errorStackTrace;
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f1 mainOut f3 tail #connect
Es0 f3 head f2 mainIn #connect
Es0 f0 mainOut f7 tail #connect
Es0 f7 head f6 mainIn #connect
Es0 f6 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
Es0 f8 mainOut f12 tail #connect
Es0 f12 head f6 mainIn #connect
