[Ivy]
155BB4D0A6771B1B 9.4.8 #module
>Proto >Proto Collection #zClass
Bs0 BusinessDataDossierModifierProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .colors .colors #zField
Bs0 @TextInP color color #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @UdProcessEnd f1 '' #zField
Bs0 @UdEvent f3 '' #zField
Bs0 @UdExitEnd f4 '' #zField
Bs0 @Alternative f6 '' #zField
Bs0 @GridStep f8 '' #zField
Bs0 @PushWFArc f9 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f7 '' #zField
Bs0 @PushWFArc f11 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @GridStep f12 '' #zField
Bs0 @UdProcessEnd f13 '' #zField
Bs0 @PushWFArc f14 '' #zField
Bs0 @PushWFArc f15 '' #zField
Bs0 @UdInit f16 '' #zField
Bs0 @PushWFArc f17 '' #zField
>Proto Bs0 Bs0 BusinessDataDossierModifierProcess #zField
Bs0 f1 435 83 26 26 0 12 #rect
Bs0 f3 guid 155BB4D0A93C5899 #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 339 26 26 -16 12 #rect
Bs0 f4 435 339 26 26 0 12 #rect
Bs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create new?</name>
    </language>
</elementInfo>
' #txt
Bs0 f6 176 80 32 32 -33 -36 #rect
Bs0 f8 actionTable 'out=in;
' #txt
Bs0 f8 actionCode 'in.id = ivy.repo.save(in.dossier).getId();' #txt
Bs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
    </language>
</elementInfo>
' #txt
Bs0 f8 216 330 112 44 -13 -8 #rect
Bs0 f9 expr out #txt
Bs0 f9 109 352 216 352 #arcP
Bs0 f5 expr out #txt
Bs0 f5 328 352 435 352 #arcP
Bs0 f7 actionTable 'out=in;
' #txt
Bs0 f7 actionCode 'in.dossier.person.address; // initialize for JSF' #txt
Bs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Bs0 f7 264 74 112 44 -17 -8 #rect
Bs0 f11 expr in #txt
Bs0 f11 outCond in.id.isEmpty() #txt
Bs0 f11 208 96 264 96 #arcP
Bs0 f2 expr out #txt
Bs0 f2 376 96 435 96 #arcP
Bs0 f12 actionTable 'out=in;
' #txt
Bs0 f12 actionCode 'import ch.ivyteam.ivy.business.data.store.BusinessDataInfo;
import workflow.businessdata.Dossier;

in.dossier = ivy.repo.find(in.id,Dossier.class) as Dossier;

BusinessDataInfo info = ivy.repo.getInfo(in.dossier);
ivy.log.debug("info"+info);
in.dossierInfo = "Last modified "+info.getModifiedAt().format("short") +" by "+ info.getModifiedByUserName();' #txt
Bs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
    </language>
</elementInfo>
' #txt
Bs0 f12 264 170 112 44 -12 -8 #rect
Bs0 f13 435 179 26 26 0 12 #rect
Bs0 f14 expr in #txt
Bs0 f14 192 112 264 192 #arcP
Bs0 f14 1 192 192 #addKink
Bs0 f14 1 0.1556203489120305 0 0 #arcLabel
Bs0 f15 expr out #txt
Bs0 f15 376 192 435 192 #arcP
Bs0 f16 guid 156D6BFA70854D75 #txt
Bs0 f16 method start(String,String) #txt
Bs0 f16 inParameterDecl '<String businessDataId,String title> param;' #txt
Bs0 f16 inParameterMapAction 'out.id=param.businessDataId;
out.title=param.title;
' #txt
Bs0 f16 outParameterDecl '<String id> result;' #txt
Bs0 f16 outParameterMapAction 'result.id=in.id;
' #txt
Bs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String)</name>
    </language>
</elementInfo>
' #txt
Bs0 f16 83 83 26 26 -49 15 #rect
Bs0 f17 expr out #txt
Bs0 f17 109 96 176 96 #arcP
Bs0 f17 0 0.5386526882461282 0 0 #arcLabel
>Proto Bs0 .type workflow.businessdata.BusinessDataDossierModifier.BusinessDataDossierModifierData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
Bs0 f3 mainOut f9 tail #connect
Bs0 f9 head f8 mainIn #connect
Bs0 f8 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f6 out f11 tail #connect
Bs0 f11 head f7 mainIn #connect
Bs0 f7 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
Bs0 f6 out f14 tail #connect
Bs0 f14 head f12 mainIn #connect
Bs0 f12 mainOut f15 tail #connect
Bs0 f15 head f13 mainIn #connect
Bs0 f16 mainOut f17 tail #connect
Bs0 f17 head f6 in #connect
