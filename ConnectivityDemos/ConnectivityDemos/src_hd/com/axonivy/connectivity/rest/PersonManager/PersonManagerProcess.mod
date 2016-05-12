[Ivy]
[>Created: Thu May 12 11:52:59 CEST 2016]
15470DE765DF45FC 3.18 #module
>Proto >Proto Collection #zClass
Ps0 PersonManagerProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f3 '' #zField
Ps0 @RichDialogEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @RichDialogMethodStart f6 '' #zField
Ps0 @RichDialogProcessEnd f7 '' #zField
Ps0 @PushWFArc f8 '' #zField
Ps0 @RichDialogProcessStart f9 '' #zField
Ps0 @RichDialogProcessEnd f10 '' #zField
Ps0 @GridStep f12 '' #zField
Ps0 @PushWFArc f13 '' #zField
Ps0 @PushWFArc f11 '' #zField
Ps0 @RichDialogProcessStart f14 '' #zField
Ps0 @RichDialogProcessEnd f15 '' #zField
Ps0 @GridStep f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RichDialogMethodStart f19 '' #zField
Ps0 @RichDialogProcessEnd f21 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @RichDialogMethodStart f22 '' #zField
Ps0 @RichDialogProcessEnd f23 '' #zField
Ps0 @PushWFArc f24 '' #zField
>Proto Ps0 Ps0 PersonManagerProcess #zField
Ps0 f0 guid 15470DE767CB62E5 #txt
Ps0 f0 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inActionCode 'out.editPerson; //init' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -16 15 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 109 64 211 64 #arcP
Ps0 f3 guid 15470DE7696A313C #txt
Ps0 f3 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f3 actionDecl 'com.axonivy.connectivity.rest.PersonManager.PersonManagerData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 179 26 26 -15 12 #rect
Ps0 f3 @|RichDialogProcessStartIcon #fIcon
Ps0 f4 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f4 guid 15470DE769693E66 #txt
Ps0 f4 211 179 26 26 0 12 #rect
Ps0 f4 @|RichDialogEndIcon #fIcon
Ps0 f5 expr out #txt
Ps0 f5 109 192 211 192 #arcP
Ps0 f6 guid 154714B11193C26B #txt
Ps0 f6 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f6 method edit(com.axonivy.connectivity.Person) #txt
Ps0 f6 disableUIEvents false #txt
Ps0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axonivy.connectivity.Person person> param = methodEvent.getInputArguments();
' #txt
Ps0 f6 inParameterMapAction 'out.editPerson=param.person;
' #txt
Ps0 f6 outParameterDecl '<> result;
' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit(Person)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 83 115 26 26 -34 15 #rect
Ps0 f6 @|RichDialogMethodStartIcon #fIcon
Ps0 f7 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f7 211 115 26 26 0 12 #rect
Ps0 f7 @|RichDialogProcessEndIcon #fIcon
Ps0 f8 109 128 211 128 #arcP
Ps0 f9 guid 1547568524C22385 #txt
Ps0 f9 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f9 actionDecl 'com.axonivy.connectivity.rest.PersonManager.PersonManagerData out;
' #txt
Ps0 f9 actionTable 'out=in;
' #txt
Ps0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f9 83 339 26 26 -10 15 #rect
Ps0 f9 @|RichDialogProcessStartIcon #fIcon
Ps0 f10 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f10 339 339 26 26 0 12 #rect
Ps0 f10 @|RichDialogProcessEndIcon #fIcon
Ps0 f12 actionDecl 'com.axonivy.connectivity.rest.PersonManager.PersonManagerData out;
' #txt
Ps0 f12 actionTable 'out=in;
' #txt
Ps0 f12 actionCode 'import com.axonivy.connectivity.rest.client.PersonClient;
out.response = PersonClient.add(in.firstName,in.lastName);' #txt
Ps0 f12 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonClient.add(...)</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 160 330 128 44 -56 -8 #rect
Ps0 f12 @|StepIcon #fIcon
Ps0 f13 expr out #txt
Ps0 f13 109 352 160 352 #arcP
Ps0 f11 expr out #txt
Ps0 f11 288 352 339 352 #arcP
Ps0 f14 guid 154756D22FAF47CA #txt
Ps0 f14 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f14 actionDecl 'com.axonivy.connectivity.rest.PersonManager.PersonManagerData out;
' #txt
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 83 403 26 26 -19 15 #rect
Ps0 f14 @|RichDialogProcessStartIcon #fIcon
Ps0 f15 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f15 339 403 26 26 0 12 #rect
Ps0 f15 @|RichDialogProcessEndIcon #fIcon
Ps0 f17 actionDecl 'com.axonivy.connectivity.rest.PersonManager.PersonManagerData out;
' #txt
Ps0 f17 actionTable 'out=in;
' #txt
Ps0 f17 actionCode 'import com.axonivy.connectivity.rest.client.PersonClient;
out.response = PersonClient.update(in.editPerson);' #txt
Ps0 f17 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonClient.update(.)</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 160 394 128 44 -61 -8 #rect
Ps0 f17 @|StepIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 109 416 160 416 #arcP
Ps0 f16 expr out #txt
Ps0 f16 288 416 339 416 #arcP
Ps0 f19 guid 154756E891F20C23 #txt
Ps0 f19 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f19 method getPersons() #txt
Ps0 f19 disableUIEvents false #txt
Ps0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f19 outParameterDecl '<java.util.List<com.axonivy.connectivity.Person> persons> result;
' #txt
Ps0 f19 outParameterMapAction 'result.persons=com.axonivy.connectivity.rest.client.PersonClient.getPersons();
' #txt
Ps0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getPersons()</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f19 83 275 26 26 -36 15 #rect
Ps0 f19 @|RichDialogMethodStartIcon #fIcon
Ps0 f21 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f21 338 275 26 26 0 12 #rect
Ps0 f21 @|RichDialogProcessEndIcon #fIcon
Ps0 f20 expr out #txt
Ps0 f20 109 288 338 288 #arcP
Ps0 f22 guid 154996947DF8D2D2 #txt
Ps0 f22 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f22 method delete(java.lang.Integer) #txt
Ps0 f22 disableUIEvents false #txt
Ps0 f22 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer id> param = methodEvent.getInputArguments();
' #txt
Ps0 f22 inActionCode 'out.response = com.axonivy.connectivity.rest.client.PersonClient.delete(param.id);' #txt
Ps0 f22 outParameterDecl '<> result;
' #txt
Ps0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete(Integer)</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f22 83 467 26 26 -40 15 #rect
Ps0 f22 @|RichDialogMethodStartIcon #fIcon
Ps0 f23 type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
Ps0 f23 339 467 26 26 0 12 #rect
Ps0 f23 @|RichDialogProcessEndIcon #fIcon
Ps0 f24 expr out #txt
Ps0 f24 109 480 339 480 #arcP
>Proto Ps0 .type com.axonivy.connectivity.rest.PersonManager.PersonManagerData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Invokes REST client calls</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>288</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>256</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f6 mainOut f8 tail #connect
Ps0 f8 head f7 mainIn #connect
Ps0 f9 mainOut f13 tail #connect
Ps0 f13 head f12 mainIn #connect
Ps0 f12 mainOut f11 tail #connect
Ps0 f11 head f10 mainIn #connect
Ps0 f14 mainOut f18 tail #connect
Ps0 f18 head f17 mainIn #connect
Ps0 f17 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f19 mainOut f20 tail #connect
Ps0 f20 head f21 mainIn #connect
Ps0 f22 mainOut f24 tail #connect
Ps0 f24 head f23 mainIn #connect
