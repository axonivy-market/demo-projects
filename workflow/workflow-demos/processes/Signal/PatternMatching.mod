[Ivy]
16AC5A6319BD9D86 9.4.0 #module
>Proto >Proto Collection #zClass
Pg0 PatternMatching Big #zClass
Pg0 B #cInfo
Pg0 #process
Pg0 @TextInP .type .type #zField
Pg0 @TextInP .processKind .processKind #zField
Pg0 @AnnotationInP-0n ai ai #zField
Pg0 @MessageFlowInP-0n messageIn messageIn #zField
Pg0 @MessageFlowOutP-0n messageOut messageOut #zField
Pg0 @TextInP .xml .xml #zField
Pg0 @TextInP .responsibility .responsibility #zField
Pg0 @StartRequest f0 '' #zField
Pg0 @EndTask f1 '' #zField
Pg0 @SignalStartEvent f3 '' #zField
Pg0 @GridStep f4 '' #zField
Pg0 @PushWFArc f5 '' #zField
Pg0 @PushWFArc f2 '' #zField
Pg0 @EndTask f6 '' #zField
Pg0 @PushWFArc f7 '' #zField
Pg0 @SignalStartEvent f8 '' #zField
Pg0 @PushWFArc f9 '' #zField
Pg0 @SignalStartEvent f10 '' #zField
Pg0 @PushWFArc f11 '' #zField
Pg0 @SignalStartEvent f12 '' #zField
Pg0 @PushWFArc f13 '' #zField
Pg0 @SignalStartEvent f14 '' #zField
Pg0 @PushWFArc f15 '' #zField
Pg0 @SignalStartEvent f16 '' #zField
Pg0 @EndTask f18 '' #zField
Pg0 @PushWFArc f19 '' #zField
Pg0 @SignalStartEvent f17 '' #zField
Pg0 @PushWFArc f20 '' #zField
Pg0 @SignalStartEvent f21 '' #zField
Pg0 @PushWFArc f22 '' #zField
Pg0 @InfoButton f23 '' #zField
Pg0 @InfoButton f24 '' #zField
>Proto Pg0 Pg0 PatternMatching #zField
Pg0 f0 outLink start.ivp #txt
Pg0 f0 inParamDecl '<> param;' #txt
Pg0 f0 requestEnabled true #txt
Pg0 f0 triggerEnabled false #txt
Pg0 f0 callSignature start() #txt
Pg0 f0 persist false #txt
Pg0 f0 caseData businessCase.attach=true #txt
Pg0 f0 showInStartList 0 #txt
Pg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Pg0 f0 @C|.responsibility Everybody #txt
Pg0 f0 81 49 30 30 -25 17 #rect
Pg0 f1 457 49 30 30 0 15 #rect
Pg0 f3 signalCode airport:passenger:boarding:3424 #txt
Pg0 f3 attachToBusinessCase true #txt
Pg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>airport:passenger:boarding:3424</name>
    </language>
</elementInfo>
' #txt
Pg0 f3 81 145 30 30 -13 16 #rect
Pg0 f4 actionTable 'out=in;
' #txt
Pg0 f4 actionCode ivy.wf.signals().send("airport:passenger:boarding:3424"); #txt
Pg0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send signal
`airport:passenger:boarding:3424`</name>
    </language>
</elementInfo>
' #txt
Pg0 f4 160 42 240 44 -102 -15 #rect
Pg0 f5 expr out #txt
Pg0 f5 111 64 160 64 #arcP
Pg0 f2 expr out #txt
Pg0 f2 400 64 457 64 #arcP
Pg0 f6 465 145 30 30 0 15 #rect
Pg0 f7 111 160 465 160 #arcP
Pg0 f8 signalCode airport:passenger:boarding #txt
Pg0 f8 attachToBusinessCase true #txt
Pg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>airport:passenger:boarding</name>
    </language>
</elementInfo>
' #txt
Pg0 f8 81 209 30 30 -16 17 #rect
Pg0 f9 111 224 480 175 #arcP
Pg0 f9 1 480 224 #addKink
Pg0 f9 0 0.5861981311600389 0 0 #arcLabel
Pg0 f10 signalCode airport:passenger #txt
Pg0 f10 attachToBusinessCase true #txt
Pg0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>airport:passenger</name>
    </language>
</elementInfo>
' #txt
Pg0 f10 81 273 30 30 -16 17 #rect
Pg0 f11 111 288 480 175 #arcP
Pg0 f11 1 480 288 #addKink
Pg0 f11 0 0.668773729726818 0 0 #arcLabel
Pg0 f12 attachToBusinessCase true #txt
Pg0 f12 81 337 30 30 0 15 #rect
Pg0 f13 111 352 480 175 #arcP
Pg0 f13 1 480 352 #addKink
Pg0 f13 0 0.7513382007022681 0 0 #arcLabel
Pg0 f14 signalCode airport:crew:boarding #txt
Pg0 f14 attachToBusinessCase true #txt
Pg0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>airport:crew:boarding</name>
    </language>
</elementInfo>
' #txt
Pg0 f14 81 401 30 30 -16 17 #rect
Pg0 f14 -1|-1|-65536 #nodeStyle
Pg0 f15 111 416 480 175 #arcP
Pg0 f15 1 480 416 #addKink
Pg0 f15 0 0.8336933382563666 0 0 #arcLabel
Pg0 f16 signalCode airport:*:boarding #txt
Pg0 f16 attachToBusinessCase true #txt
Pg0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>airport:*:boarding</name>
    </language>
</elementInfo>
' #txt
Pg0 f16 81 497 30 30 -13 16 #rect
Pg0 f18 465 497 30 30 0 15 #rect
Pg0 f19 111 512 465 512 #arcP
Pg0 f19 0 0.5009869167342629 0 0 #arcLabel
Pg0 f17 signalCode *:*:boarding #txt
Pg0 f17 attachToBusinessCase true #txt
Pg0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>*:*:boarding</name>
    </language>
</elementInfo>
' #txt
Pg0 f17 81 561 30 30 -13 16 #rect
Pg0 f20 111 576 480 527 #arcP
Pg0 f20 1 480 576 #addKink
Pg0 f20 0 0.5861981311600389 0 0 #arcLabel
Pg0 f21 signalCode *:boarding #txt
Pg0 f21 attachToBusinessCase true #txt
Pg0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>*:boarding</name>
    </language>
</elementInfo>
' #txt
Pg0 f21 81 625 30 30 -13 16 #rect
Pg0 f21 -1|-1|-65536 #nodeStyle
Pg0 f22 111 640 480 527 #arcP
Pg0 f22 1 480 640 #addKink
Pg0 f22 0 0.668773729726818 0 0 #arcLabel
Pg0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Signals can be received 
by listening to a shared prefix</name>
    </language>
</elementInfo>
' #txt
Pg0 f23 536 266 192 44 -93 -15 #rect
Pg0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Signals patterns can
contain wildcards (*)</name>
    </language>
</elementInfo>
' #txt
Pg0 f24 536 554 144 44 -65 -15 #rect
>Proto Pg0 .type workflow.humantask.Data #txt
>Proto Pg0 .processKind NORMAL #txt
>Proto Pg0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Prefix Matchers</swimlaneLabel>
        <swimlaneLabel>Wildcard Matchers</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>336</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor gradient="false">432865228</swimlaneColor>
    <swimlaneColor gradient="false">429509887</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>128</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Pg0 0 0 32 24 18 0 #rect
>Proto Pg0 @|BIcon #fIcon
Pg0 f0 mainOut f5 tail #connect
Pg0 f5 head f4 mainIn #connect
Pg0 f4 mainOut f2 tail #connect
Pg0 f2 head f1 mainIn #connect
Pg0 f3 mainOut f7 tail #connect
Pg0 f7 head f6 mainIn #connect
Pg0 f8 mainOut f9 tail #connect
Pg0 f9 head f6 mainIn #connect
Pg0 f10 mainOut f11 tail #connect
Pg0 f11 head f6 mainIn #connect
Pg0 f12 mainOut f13 tail #connect
Pg0 f13 head f6 mainIn #connect
Pg0 f14 mainOut f15 tail #connect
Pg0 f15 head f6 mainIn #connect
Pg0 f16 mainOut f19 tail #connect
Pg0 f19 head f18 mainIn #connect
Pg0 f17 mainOut f20 tail #connect
Pg0 f20 head f18 mainIn #connect
Pg0 f21 mainOut f22 tail #connect
Pg0 f22 head f18 mainIn #connect
