[Ivy]
173A4BC5D38BAD52 9.3.1 #module
>Proto >Proto Collection #zClass
Ph0 Starts Big #zClass
Ph0 B #cInfo
Ph0 #process
Ph0 @TextInP .type .type #zField
Ph0 @TextInP .processKind .processKind #zField
Ph0 @TextInP .xml .xml #zField
Ph0 @TextInP .responsibility .responsibility #zField
Ph0 @StartRequest f0 '' #zField
Ph0 @EndTask f1 '' #zField
Ph0 @UserDialog f3 '' #zField
Ph0 @PushWFArc f4 '' #zField
Ph0 @PushWFArc f2 '' #zField
Ph0 @InfoButton f5 '' #zField
Ph0 @StartRequest f6 '' #zField
Ph0 @InfoButton f7 '' #zField
Ph0 @UserDialog f8 '' #zField
Ph0 @PushWFArc f9 '' #zField
Ph0 @EndTask f10 '' #zField
Ph0 @PushWFArc f11 '' #zField
Ph0 @GridStep f12 '' #zField
Ph0 @EndTask f13 '' #zField
Ph0 @StartRequest f14 '' #zField
Ph0 @PushWFArc f15 '' #zField
Ph0 @PushWFArc f16 '' #zField
>Proto Ph0 Ph0 Starts #zField
Ph0 f0 outLink personSearch.ivp #txt
Ph0 f0 inParamDecl '<> param;' #txt
Ph0 f0 requestEnabled true #txt
Ph0 f0 triggerEnabled false #txt
Ph0 f0 callSignature personSearch() #txt
Ph0 f0 startName <%=ivy.cms.co("/Processes/Names/personSearch")%> #txt
Ph0 f0 caseData businessCase.attach=true #txt
Ph0 f0 wfuser 1 #txt
Ph0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>personSearch.ivp</name>
    </language>
</elementInfo>
' #txt
Ph0 f0 @C|.responsibility Everybody #txt
Ph0 f0 81 113 30 30 -21 17 #rect
Ph0 f1 337 113 30 30 0 15 #rect
Ph0 f3 dialogId ch.ivyteam.demo.jpa.demos.PersonSearch #txt
Ph0 f3 startMethod start() #txt
Ph0 f3 requestActionDecl '<> param;' #txt
Ph0 f3 responseMappingAction 'out=in;
' #txt
Ph0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PersonSearch</name>
    </language>
</elementInfo>
' #txt
Ph0 f3 168 106 112 44 -39 -8 #rect
Ph0 f4 111 128 168 128 #arcP
Ph0 f2 280 128 337 128 #arcP
Ph0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Lazy Search with Search Filter&#13;
Server side filtering and sorting</name>
    </language>
</elementInfo>
' #txt
Ph0 f5 80 42 176 44 -85 -16 #rect
Ph0 f6 outLink departmentSearch.ivp #txt
Ph0 f6 inParamDecl '<> param;' #txt
Ph0 f6 requestEnabled true #txt
Ph0 f6 triggerEnabled false #txt
Ph0 f6 callSignature departmentSearch() #txt
Ph0 f6 startName <%=ivy.cms.co("/Processes/Names/departmentSearch")%> #txt
Ph0 f6 caseData businessCase.attach=true #txt
Ph0 f6 wfuser 1 #txt
Ph0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>departmentSearch.ivp</name>
    </language>
</elementInfo>
' #txt
Ph0 f6 @C|.responsibility Everybody #txt
Ph0 f6 81 305 30 30 -47 14 #rect
Ph0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Eager search with findAll(),&#13;
Client side filtering and sorting</name>
    </language>
</elementInfo>
' #txt
Ph0 f7 80 234 176 44 -83 -16 #rect
Ph0 f8 dialogId ch.ivyteam.demo.jpa.demos.DepartmentSearch #txt
Ph0 f8 startMethod start() #txt
Ph0 f8 requestActionDecl '<> param;' #txt
Ph0 f8 responseMappingAction 'out=in;
' #txt
Ph0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DepartmentSearch</name>
    </language>
</elementInfo>
' #txt
Ph0 f8 168 298 112 44 -52 -8 #rect
Ph0 f9 111 320 168 320 #arcP
Ph0 f10 337 305 30 30 0 15 #rect
Ph0 f11 280 320 337 320 #arcP
Ph0 f12 actionTable 'out=in;
' #txt
Ph0 f12 actionCode 'import ch.ivyteam.demo.jpa.demos.service.PersonService;


PersonService.raiseSalaries();
' #txt
Ph0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>raise salary</name>
    </language>
</elementInfo>
' #txt
Ph0 f12 168 458 112 44 -32 -8 #rect
Ph0 f13 337 465 30 30 0 15 #rect
Ph0 f14 outLink raiseSalary.ivp #txt
Ph0 f14 inParamDecl '<> param;' #txt
Ph0 f14 requestEnabled true #txt
Ph0 f14 triggerEnabled false #txt
Ph0 f14 callSignature raiseSalary() #txt
Ph0 f14 startName <%=ivy.cms.co("/Processes/Names/raiseSalaries")%> #txt
Ph0 f14 caseData businessCase.attach=true #txt
Ph0 f14 wfuser 1 #txt
Ph0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>raiseSalary.ivp</name>
    </language>
</elementInfo>
' #txt
Ph0 f14 @C|.responsibility Everybody #txt
Ph0 f14 81 465 30 30 -21 17 #rect
Ph0 f15 280 480 337 480 #arcP
Ph0 f16 111 480 168 480 #arcP
>Proto Ph0 .type ch.ivyteam.demo.jpa.demos.Data #txt
>Proto Ph0 .processKind NORMAL #txt
>Proto Ph0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Person Search</swimlaneLabel>
        <swimlaneLabel>Department Search</swimlaneLabel>
        <swimlaneLabel>Raise Salary</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-3342337</swimlaneColor>
    <swimlaneColor gradient="false">-3355393</swimlaneColor>
    <swimlaneColor gradient="false">-13057</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ph0 0 0 32 24 18 0 #rect
>Proto Ph0 @|BIcon #fIcon
Ph0 f0 mainOut f4 tail #connect
Ph0 f4 head f3 mainIn #connect
Ph0 f3 mainOut f2 tail #connect
Ph0 f2 head f1 mainIn #connect
Ph0 f6 mainOut f9 tail #connect
Ph0 f9 head f8 mainIn #connect
Ph0 f8 mainOut f11 tail #connect
Ph0 f11 head f10 mainIn #connect
Ph0 f14 mainOut f16 tail #connect
Ph0 f16 head f12 mainIn #connect
Ph0 f12 mainOut f15 tail #connect
Ph0 f15 head f13 mainIn #connect
