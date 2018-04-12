[Ivy]
16150E26E34D4339 3.23 #module
>Proto >Proto Collection #zClass
pt0 personClient Big #zClass
pt0 B #cInfo
pt0 #process
pt0 @TextInP .resExport .resExport #zField
pt0 @TextInP .type .type #zField
pt0 @TextInP .processKind .processKind #zField
pt0 @AnnotationInP-0n ai ai #zField
pt0 @MessageFlowInP-0n messageIn messageIn #zField
pt0 @MessageFlowOutP-0n messageOut messageOut #zField
pt0 @TextInP .xml .xml #zField
pt0 @TextInP .responsibility .responsibility #zField
pt0 @StartRequest f0 '' #zField
pt0 @EndTask f1 '' #zField
pt0 @WSElement f2 '' #zField
pt0 @PushWFArc f3 '' #zField
pt0 @GridStep f5 '' #zField
pt0 @PushWFArc f6 '' #zField
pt0 @PushWFArc f4 '' #zField
pt0 @StartRequest f7 '' #zField
pt0 @WSElement f8 '' #zField
pt0 @PushWFArc f9 '' #zField
pt0 @PushWFArc f10 '' #zField
pt0 @StartRequest f11 '' #zField
pt0 @WSElement f12 '' #zField
pt0 @PushWFArc f13 '' #zField
pt0 @PushWFArc f14 '' #zField
pt0 @InfoButton f15 '' #zField
>Proto pt0 pt0 personClient #zField
pt0 f0 outLink read.ivp #txt
pt0 f0 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f0 inParamDecl '<> param;' #txt
pt0 f0 inParamTable 'out.appName=ivy.wf.getApplication().getName();
out.serverUri=com.axonivy.connectivity.soap.client.ServerUriHelper.getCurrentServer();
' #txt
pt0 f0 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f0 guid 16150E26E3CC8DCF #txt
pt0 f0 requestEnabled true #txt
pt0 f0 triggerEnabled false #txt
pt0 f0 callSignature read() #txt
pt0 f0 persist false #txt
pt0 f0 startName '9.2.1 read data' #txt
pt0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
pt0 f0 caseData businessCase.attach=true #txt
pt0 f0 showInStartList 1 #txt
pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read.ivp</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pt0 f0 @C|.responsibility Everybody #txt
pt0 f0 241 137 30 30 -21 17 #rect
pt0 f0 @|StartRequestIcon #fIcon
pt0 f1 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f1 657 137 30 30 0 15 #rect
pt0 f1 @|EndIcon #fIcon
pt0 f2 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f2 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f2 actionTable 'out=in;
out.persons=wsResponse;
' #txt
pt0 f2 beanConfig "" #txt
pt0 f2 clientId 16150E44A158D09C #txt
pt0 f2 port PersonServicePort #txt
pt0 f2 operation getPersons #txt
pt0 f2 returningObjectList '[]' #txt
pt0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getPersons</name>
    </language>
</elementInfo>
' #txt
pt0 f2 328 130 112 44 -32 -8 #rect
pt0 f2 @|WebServiceIcon #fIcon
pt0 f3 expr out #txt
pt0 f3 271 152 328 152 #arcP
pt0 f5 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f5 actionTable 'out=in;
' #txt
pt0 f5 actionCode 'for (int i = 0; i < in.persons.size(); i++)
{
	ivy.log.info(""+ in.persons.get(i).id + " " + in.persons.get(i).firstname);
}' #txt
pt0 f5 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log</name>
    </language>
</elementInfo>
' #txt
pt0 f5 488 130 112 44 -8 -8 #rect
pt0 f5 @|StepIcon #fIcon
pt0 f6 expr out #txt
pt0 f6 440 152 488 152 #arcP
pt0 f6 0 0.558359006007981 0 0 #arcLabel
pt0 f4 expr out #txt
pt0 f4 600 152 657 152 #arcP
pt0 f4 0 0.558359006007981 0 0 #arcLabel
pt0 f7 outLink delete.ivp #txt
pt0 f7 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f7 inParamDecl '<> param;' #txt
pt0 f7 inParamTable 'out.appName=ivy.wf.getApplication().getName();
out.serverUri=com.axonivy.connectivity.soap.client.ServerUriHelper.getCurrentServer();
' #txt
pt0 f7 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f7 guid 1615102F6BD3BAD6 #txt
pt0 f7 requestEnabled true #txt
pt0 f7 triggerEnabled false #txt
pt0 f7 callSignature delete() #txt
pt0 f7 persist false #txt
pt0 f7 startName '9.2.3 delete data' #txt
pt0 f7 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
pt0 f7 caseData businessCase.attach=true #txt
pt0 f7 showInStartList 1 #txt
pt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pt0 f7 @C|.responsibility Everybody #txt
pt0 f7 103 329 30 30 -26 17 #rect
pt0 f7 @|StartRequestIcon #fIcon
pt0 f8 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f8 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f8 actionTable 'out=in;
' #txt
pt0 f8 actionCode 'ivy.log.info("delete Richelieu");' #txt
pt0 f8 beanConfig "" #txt
pt0 f8 clientId 16150E44A158D09C #txt
pt0 f8 port PersonServicePort #txt
pt0 f8 operation deletePerson #txt
pt0 f8 inputParams 'parameters.name="Richelieu";
' #txt
pt0 f8 returningObjectList '[]' #txt
pt0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deletePerson Richelieu</name>
    </language>
</elementInfo>
' #txt
pt0 f8 184 322 144 44 -64 -8 #rect
pt0 f8 @|WebServiceIcon #fIcon
pt0 f9 expr out #txt
pt0 f9 328 344 384 174 #arcP
pt0 f9 1 384 344 #addKink
pt0 f9 0 0.49422078281463927 0 0 #arcLabel
pt0 f10 expr out #txt
pt0 f10 133 344 184 344 #arcP
pt0 f10 0 0.48020749781656163 0 0 #arcLabel
pt0 f11 outLink add.ivp #txt
pt0 f11 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f11 inParamDecl '<> param;' #txt
pt0 f11 inParamTable 'out.appName=ivy.wf.getApplication().getName();
out.serverUri=com.axonivy.connectivity.soap.client.ServerUriHelper.getCurrentServer();
' #txt
pt0 f11 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f11 guid 1615103F266C3A4F #txt
pt0 f11 requestEnabled true #txt
pt0 f11 triggerEnabled false #txt
pt0 f11 callSignature add() #txt
pt0 f11 persist false #txt
pt0 f11 startName '9.2.2 add data' #txt
pt0 f11 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
pt0 f11 caseData businessCase.attach=true #txt
pt0 f11 showInStartList 1 #txt
pt0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add.ivp</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pt0 f11 @C|.responsibility Everybody #txt
pt0 f11 105 241 30 30 -19 17 #rect
pt0 f11 @|StartRequestIcon #fIcon
pt0 f12 type com.axonivy.connectivity.soap.PersonClientData #txt
pt0 f12 actionDecl 'com.axonivy.connectivity.soap.PersonClientData out;
' #txt
pt0 f12 actionTable 'out=in;
' #txt
pt0 f12 actionCode 'ivy.log.info("add Richelieu");' #txt
pt0 f12 beanConfig "" #txt
pt0 f12 clientId 16150E44A158D09C #txt
pt0 f12 port PersonServicePort #txt
pt0 f12 operation addPerson #txt
pt0 f12 inputParams 'parameters.name="Richelieu";
' #txt
pt0 f12 returningObjectList '[]' #txt
pt0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addPerson Richelieu</name>
    </language>
</elementInfo>
' #txt
pt0 f12 192 234 128 44 -58 -8 #rect
pt0 f12 @|WebServiceIcon #fIcon
pt0 f13 expr out #txt
pt0 f13 135 256 192 256 #arcP
pt0 f14 expr out #txt
pt0 f14 320 256 384 174 #arcP
pt0 f14 1 384 256 #addKink
pt0 f14 1 0.41076014139365474 0 0 #arcLabel
pt0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This processes call the Web Service Process (personService) with the web service client.
The web service client is configured with HTTP_BASIC feature, because the personService is protected by HTTP_BASIC.
</name>
        <nameStyle>205,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pt0 f15 56 44 672 56 -327 -24 #rect
pt0 f15 @|IBIcon #fIcon
>Proto pt0 .type com.axonivy.connectivity.soap.PersonClientData #txt
>Proto pt0 .processKind NORMAL #txt
>Proto pt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto pt0 0 0 32 24 18 0 #rect
>Proto pt0 @|BIcon #fIcon
pt0 f0 mainOut f3 tail #connect
pt0 f3 head f2 mainIn #connect
pt0 f2 mainOut f6 tail #connect
pt0 f6 head f5 mainIn #connect
pt0 f5 mainOut f4 tail #connect
pt0 f4 head f1 mainIn #connect
pt0 f8 mainOut f9 tail #connect
pt0 f9 head f2 mainIn #connect
pt0 f7 mainOut f10 tail #connect
pt0 f10 head f8 mainIn #connect
pt0 f11 mainOut f13 tail #connect
pt0 f13 head f12 mainIn #connect
pt0 f12 mainOut f14 tail #connect
pt0 f14 head f2 mainIn #connect
