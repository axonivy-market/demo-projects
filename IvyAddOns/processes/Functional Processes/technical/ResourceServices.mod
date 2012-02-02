[Ivy]
[>Created: Wed Nov 10 17:21:33 CET 2010]
12C3114E5AE8A976 3.13.1 #module
>Proto >Proto Collection #zClass
Rs0 ResourceServices Big #zClass
Rs0 B #cInfo
Rs0 #process
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @StartSub f0 '' #zField
Rs0 @EndSub f1 '' #zField
Rs0 @GridStep f3 '' #zField
Rs0 @PushWFArc f4 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @EndSub f5 '' #zField
Rs0 @StartSub f6 '' #zField
Rs0 @GridStep f7 '' #zField
Rs0 @PushWFArc f8 '' #zField
Rs0 @PushWFArc f9 '' #zField
Rs0 @GridStep f10 '' #zField
Rs0 @EndSub f11 '' #zField
Rs0 @StartSub f12 '' #zField
Rs0 @PushWFArc f13 '' #zField
Rs0 @PushWFArc f14 '' #zField
>Proto Rs0 Rs0 ResourceServices #zField
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readCaseResourcesPath</name>
        <nameStyle>21,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 inParamDecl '<java.lang.Number caseIdentifier> param;' #txt
Rs0 f0 inParamTable 'out.caseIdentifier=param.caseIdentifier;
' #txt
Rs0 f0 outParamDecl '<java.lang.String caseResourcesPath> result;
' #txt
Rs0 f0 outParamTable 'result.caseResourcesPath=in.caseResourcesPath;
' #txt
Rs0 f0 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f0 callSignature readCaseResourcesPath(Number) #txt
Rs0 f0 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f0 523 43 26 26 14 0 #rect
Rs0 f0 @|StartSubIcon #fIcon
Rs0 f1 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f1 523 163 26 26 14 0 #rect
Rs0 f1 @|EndSubIcon #fIcon
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>return the 
caseResourcesPath</name>
        <nameStyle>29,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 actionCode 'import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;

out.caseResourcesPath = 
		ResourceServicesHelper.readCaseResourcesPath(in.caseIdentifier);

ivy.log.info("Delivering case resources path: {0}", out.caseResourcesPath);
' #txt
Rs0 f3 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f3 518 100 36 24 20 -2 #rect
Rs0 f3 @|StepIcon #fIcon
Rs0 f4 expr out #txt
Rs0 f4 536 69 536 100 #arcP
Rs0 f2 expr out #txt
Rs0 f2 536 124 536 163 #arcP
Rs0 f5 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f5 291 163 26 26 14 0 #rect
Rs0 f5 @|EndSubIcon #fIcon
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readCaseDocumentsPath</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f6 inParamDecl '<java.lang.Number caseIdentifier> param;' #txt
Rs0 f6 inParamTable 'out.caseIdentifier=param.caseIdentifier;
' #txt
Rs0 f6 outParamDecl '<java.lang.String caseDocumentsPath> result;
' #txt
Rs0 f6 outParamTable 'result.caseDocumentsPath=in.caseDocumentsPath;
' #txt
Rs0 f6 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f6 callSignature readCaseDocumentsPath(Number) #txt
Rs0 f6 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f6 291 43 26 26 14 0 #rect
Rs0 f6 @|StartSubIcon #fIcon
Rs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>return the 
caseDocumentsPath</name>
        <nameStyle>29,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f7 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f7 actionTable 'out=in;
' #txt
Rs0 f7 actionCode 'import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;

out.caseDocumentsPath = 
		ResourceServicesHelper.readCaseDocumentsPath(in.caseIdentifier);

ivy.log.info("Delivering case documents path: {0}", out.caseDocumentsPath);
' #txt
Rs0 f7 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f7 286 100 36 24 20 -2 #rect
Rs0 f7 @|StepIcon #fIcon
Rs0 f8 expr out #txt
Rs0 f8 304 69 304 100 #arcP
Rs0 f9 expr out #txt
Rs0 f9 304 124 304 163 #arcP
Rs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>return the 
applicationResourcesPath</name>
        <nameStyle>36,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f10 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f10 actionTable 'out=in;
' #txt
Rs0 f10 actionCode 'import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;

out.applicationResourcesPath = 
	ResourceServicesHelper.readApplicationResourcesPath(in.applicationCode, in.applicationModule);

ivy.log.info("Delivering application resources path: {0}", out.applicationResourcesPath);
' #txt
Rs0 f10 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f10 46 100 36 24 20 -2 #rect
Rs0 f10 @|StepIcon #fIcon
Rs0 f11 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f11 51 163 26 26 14 0 #rect
Rs0 f11 @|EndSubIcon #fIcon
Rs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readApplicationResourcesPath</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f12 inParamDecl '<java.lang.String applicationCode,java.lang.String applicationModule> param;' #txt
Rs0 f12 inParamTable 'out.applicationCode=param.applicationCode;
out.applicationModule=param.applicationModule;
' #txt
Rs0 f12 outParamDecl '<java.lang.String applicationResourcesPath> result;
' #txt
Rs0 f12 outParamTable 'result.applicationResourcesPath=in.applicationResourcesPath;
' #txt
Rs0 f12 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices out;
' #txt
Rs0 f12 callSignature readApplicationResourcesPath(String,String) #txt
Rs0 f12 type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
Rs0 f12 51 43 26 26 14 0 #rect
Rs0 f12 @|StartSubIcon #fIcon
Rs0 f13 expr out #txt
Rs0 f13 64 69 64 100 #arcP
Rs0 f14 expr out #txt
Rs0 f14 64 124 64 163 #arcP
>Proto Rs0 .type ch.ivyteam.ivy.addons.data.restricted.technical.ResourceServices #txt
>Proto Rs0 .processKind CALLABLE_SUB #txt
>Proto Rs0 0 0 32 24 18 0 #rect
>Proto Rs0 @|BIcon #fIcon
Rs0 f0 mainOut f4 tail #connect
Rs0 f4 head f3 mainIn #connect
Rs0 f3 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f6 mainOut f8 tail #connect
Rs0 f8 head f7 mainIn #connect
Rs0 f7 mainOut f9 tail #connect
Rs0 f9 head f5 mainIn #connect
Rs0 f12 mainOut f13 tail #connect
Rs0 f13 head f10 mainIn #connect
Rs0 f10 mainOut f14 tail #connect
Rs0 f14 head f11 mainIn #connect
