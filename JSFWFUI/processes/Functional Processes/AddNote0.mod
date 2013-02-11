[Ivy]
[>Created: Mon Jan 21 09:35:13 CET 2013]
13C5C3F16B9C914C 3.17 #module
>Proto >Proto Collection #zClass
Ae0 AddNote0 Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .resExport .resExport #zField
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartSub f0 '' #zField
Ae0 @EndSub f1 '' #zField
Ae0 @Alternative f18 '' #zField
Ae0 @Page f11 '' #zField
Ae0 @GridStep f12 '' #zField
Ae0 @PushWFArc f28 '' #zField
Ae0 @PushWFArc f19 '' #zField
Ae0 @PushWFArc f20 '' #zField
Ae0 @PushWFArc f3 '' #zField
Ae0 @StartSub f4 '' #zField
Ae0 @EndSub f5 '' #zField
Ae0 @PushWFArc f8 '' #zField
>Proto Ae0 Ae0 AddNote0 #zField
Ae0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Ae0 f0 inParamTable 'out=param.in;
' #txt
Ae0 f0 outParamDecl '<htmlwfui.Data out> result;
' #txt
Ae0 f0 outParamTable 'result.out=in;
' #txt
Ae0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f0 callSignature call(htmlwfui.Data) #txt
Ae0 f0 type htmlwfui.Data #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 99 35 26 26 14 0 #rect
Ae0 f0 @|StartSubIcon #fIcon
Ae0 f1 type htmlwfui.Data #txt
Ae0 f1 99 291 26 26 14 0 #rect
Ae0 f1 @|EndSubIcon #fIcon
Ae0 f18 type htmlwfui.Data #txt
Ae0 f18 98 226 28 28 14 0 #rect
Ae0 f18 @|AlternativeIcon #fIcon
Ae0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Ae0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
Ae0 f11 template "/ProcessPages/AddNote/taskNote.ivc" #txt
Ae0 f11 type htmlwfui.Data #txt
Ae0 f11 skipLink skip.ivp #txt
Ae0 f11 sortLink sort.ivp #txt
Ae0 f11 templateWizard '#
#Wed Apr 07 12:24:36 CEST 2010
' #txt
Ae0 f11 pageArchivingActivated false #txt
Ae0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Bemerkung
hinzufügen</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f11 @C|.responsibility Everybody #txt
Ae0 f11 94 92 36 24 23 -2 #rect
Ae0 f11 @|PageIcon #fIcon
Ae0 f12 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f12 actionTable 'out=in.clone();
' #txt
Ae0 f12 actionCode 'if(in.note.trim().length()>0)
{
	if(in.noteFor.equals("task")){
		in.tmpTask.createNote(in.wfSession,in.note);
	}else{
		in.tempCase.createNote(in.wfSession,in.note);
	}
}' #txt
Ae0 f12 type htmlwfui.Data #txt
Ae0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ae0 f12 94 156 36 24 20 -2 #rect
Ae0 f12 @|StepIcon #fIcon
Ae0 f28 expr data #txt
Ae0 f28 outCond ivp=="LinkA.ivp" #txt
Ae0 f28 112 116 112 156 #arcP
Ae0 f19 expr out #txt
Ae0 f19 112 180 112 226 #arcP
Ae0 f20 expr data #txt
Ae0 f20 outCond ivp=="LinkB.ivp" #txt
Ae0 f20 100 116 105 233 #arcP
Ae0 f20 1 48 168 #addKink
Ae0 f20 0 0.9641564137988272 0 0 #arcLabel
Ae0 f3 expr in #txt
Ae0 f3 112 254 112 291 #arcP
Ae0 f4 outParamDecl '<> result;
' #txt
Ae0 f4 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f4 callSignature call() #txt
Ae0 f4 type htmlwfui.Data #txt
Ae0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
    </language>
</elementInfo>
' #txt
Ae0 f4 1043 523 26 26 14 0 #rect
Ae0 f4 @|StartSubIcon #fIcon
Ae0 f5 type htmlwfui.Data #txt
Ae0 f5 1043 595 26 26 14 0 #rect
Ae0 f5 @|EndSubIcon #fIcon
Ae0 f8 expr out #txt
Ae0 f8 112 61 112 92 #arcP
>Proto Ae0 .type htmlwfui.Data #txt
>Proto Ae0 .processKind CALLABLE_SUB #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f11 out f28 tail #connect
Ae0 f28 head f12 mainIn #connect
Ae0 f12 mainOut f19 tail #connect
Ae0 f19 head f18 in #connect
Ae0 f11 out f20 tail #connect
Ae0 f20 head f18 in #connect
Ae0 f18 out f3 tail #connect
Ae0 f3 head f1 mainIn #connect
Ae0 f0 mainOut f8 tail #connect
Ae0 f8 head f11 mainIn #connect
