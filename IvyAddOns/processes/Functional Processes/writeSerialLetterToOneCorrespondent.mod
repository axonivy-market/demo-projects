[Ivy]
[>Created: Thu Nov 05 08:58:15 CET 2009]
124971223DD62955 3.12 #module
>Proto >Proto Collection #zClass
wr0 writeSerialLetter Big #zClass
wr0 B #cInfo
wr0 #process
wr0 @TextInP .xml .xml #zField
wr0 @TextInP .responsibility .responsibility #zField
wr0 @AnnotationInP-0n ai ai #zField
wr0 @MessageFlowInP-0n messageIn messageIn #zField
wr0 @MessageFlowOutP-0n messageOut messageOut #zField
wr0 @TextInP .resExport .resExport #zField
wr0 @TextInP .type .type #zField
wr0 @TextInP .processKind .processKind #zField
wr0 @StartSub f0 '' #zField
wr0 @EndSub f1 '' #zField
wr0 @GridStep f4 '' #zField
wr0 @GridStep f7 '' #zField
wr0 @PushWFArc f6 '' #zField
wr0 @PushWFArc f2 '' #zField
wr0 @GridStep f3 '' #zField
wr0 @PushWFArc f5 '' #zField
wr0 @PushWFArc f8 '' #zField
wr0 @InfoButton f9 '' #zField
>Proto wr0 wr0 writeSerialLetter #zField
wr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeSerialLetterToOneCorrespondant</name>
        <nameStyle>35,9
</nameStyle>
        <desc>This callable writes a letter to one Correspondant
with the help of a document factory Object.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; TemplatePath: this is the path of the template (document model)
-&gt; list of TemplateMergeFields. Each mergefield corresponds to a mergeField in the template.
If ne correspondance for a MergeField was found, it will be simply ignored.
Optional input parameters:
-&gt; optionalOutputPath: where to store the created java.io.File. By default &quot;ivy_RIA_files&quot;
-&gt; optionalOutputFormat: by default the first supported one (in general it will be &quot;doc&quot;
-&gt; optionalLetterName: the file name of the letter. By default &quot;letter&quot;+ the nanoTime, 
to be sure the file doesn''t overwrite any other.

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the porcess.

In this callable, just one java.io.File should be created.</desc>
    </language>
</elementInfo>
' #txt
wr0 f0 inParamDecl '<List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField> listOfTemplateMergeFields,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath> param;' #txt
wr0 f0 inParamTable 'out.mergeFieldsList=param.listOfTemplateMergeFields;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.templatePath=param.templatePath;
' #txt
wr0 f0 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f0 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f0 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f0 callSignature writeSerialLetterToOneCorrespondant(List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField>,String,String,String,String) #txt
wr0 f0 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f0 139 67 26 26 -98 -31 #rect
wr0 f0 @|StartSubIcon #fIcon
wr0 f1 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f1 139 363 26 26 14 0 #rect
wr0 f1 @|EndSubIcon #fIcon
wr0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f4 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f4 actionTable 'out=in;
' #txt
wr0 f4 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f4 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f4 134 140 36 24 22 -15 #rect
wr0 f4 @|StepIcon #fIcon
wr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serialLetter</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f7 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f7 actionTable 'out=in;
' #txt
wr0 f7 actionCode '
out.fileOperationMessage = 
in.documentFactory.generateDocument(in.templatePath,in.serialLetterName,in.outputPath,in.outputFormat,in.mergeFieldsList);' #txt
wr0 f7 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f7 134 292 36 24 22 -9 #rect
wr0 f7 @|StepIcon #fIcon
wr0 f6 expr out #txt
wr0 f6 152 316 152 363 #arcP
wr0 f2 expr out #txt
wr0 f2 152 93 152 140 #arcP
wr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName</name>
        <nameStyle>55,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f3 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f3 actionTable 'out=in;
' #txt
wr0 f3 actionCode 'import ch.ivyteam.ivy.addons.docfactory.FileUtil;

// if desired format not valid, we take the first supportedFormat
if(in.#outputFormat == null || in.outputFormat.trim().equalsIgnoreCase("") 
	|| !in.documentFactory.isFormatSupported(in.outputFormat)){
	if(in.documentFactory.getSupportedFormats().size()>0){
		out.outputFormat=in.documentFactory.getSupportedFormats().get(0);
	}
}

//if desired letter name not valid, we take the name "letter_nanoTime()"
if(in.#serialLetterName == null || in.serialLetterName.trim().equalsIgnoreCase("")
	|| !ch.ivyteam.ivy.addons.docfactory.FileUtil.isFileNameValid(in.serialLetterName)){
		out.serialLetterName = "letter_"+System.nanoTime();
}

//if desired outputPath is not valid, we take "ivy_RIA_Files"
if(in.outputPath==null || in.outputPath.trim().equalsIgnoreCase("")){
	out.outputPath="ivy_RIA_files";
}' #txt
wr0 f3 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f3 134 212 36 24 22 -18 #rect
wr0 f3 @|StepIcon #fIcon
wr0 f5 expr out #txt
wr0 f5 152 164 152 212 #arcP
wr0 f8 expr out #txt
wr0 f8 152 236 152 292 #arcP
wr0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This callable produces a document with a list of merge fields and 
with the help of a document factory Object.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; TemplatePath: this is the path of the template (document model)
-&gt; list of TemplateMergeFields. Each mergefield corresponds to a mergeField in the template.
If no correspondance for a MergeField was found, it will be simply ignored.
Optional input parameters:
-&gt; optionalOutputPath: where to store the created java.io.File. By default &quot;ivy_RIA_files&quot;
-&gt; optionalOutputFormat: by default the first supported one (in general it will be &quot;doc&quot;
-&gt; optionalLetterName: the file name of the letter. By default &quot;letter&quot;+ the nanoTime, 
to be sure the file doesn''t overwrite any other.

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the porcess.

In this callable, just one java.io.File should be created.</name>
        <nameStyle>110,0,7,23
227,9
27,0,23
237,9
26,0,23
319,9
55,0,23
154,9
59,0,23
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f9 348 35 521 362 -255 -176 #rect
wr0 f9 @|IBIcon #fIcon
wr0 f9 -657956|-1|-16777216 #nodeStyle
>Proto wr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>181</swimlaneSize>
    <swimlaneSize>87</swimlaneSize>
    <swimlaneSize>69</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-103</swimlaneColor>
    <swimlaneColor>-3368449</swimlaneColor>
</elementInfo>
' #txt
>Proto wr0 .type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
>Proto wr0 .processKind CALLABLE_SUB #txt
>Proto wr0 0 0 32 24 18 0 #rect
>Proto wr0 @|BIcon #fIcon
wr0 f7 mainOut f6 tail #connect
wr0 f6 head f1 mainIn #connect
wr0 f0 mainOut f2 tail #connect
wr0 f2 head f4 mainIn #connect
wr0 f4 mainOut f5 tail #connect
wr0 f5 head f3 mainIn #connect
wr0 f3 mainOut f8 tail #connect
wr0 f8 head f7 mainIn #connect
