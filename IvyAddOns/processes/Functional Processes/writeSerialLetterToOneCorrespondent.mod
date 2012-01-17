[Ivy]
[>Created: Thu May 19 07:39:04 CEST 2011]
124971223DD62955 3.17 #module
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
wr0 @StartSub f10 '' #zField
wr0 @InfoButton f11 '' #zField
wr0 @GridStep f12 '' #zField
wr0 @PushWFArc f13 '' #zField
wr0 @GridStep f14 '' #zField
wr0 @PushWFArc f15 '' #zField
wr0 @GridStep f16 '' #zField
wr0 @PushWFArc f17 '' #zField
wr0 @GridStep f18 '' #zField
wr0 @PushWFArc f19 '' #zField
wr0 @EndSub f20 '' #zField
wr0 @PushWFArc f21 '' #zField
wr0 @StartSub f22 '' #zField
wr0 @GridStep f23 '' #zField
wr0 @GridStep f24 '' #zField
wr0 @GridStep f25 '' #zField
wr0 @PushWFArc f26 '' #zField
wr0 @PushWFArc f27 '' #zField
wr0 @PushWFArc f28 '' #zField
wr0 @EndSub f29 '' #zField
wr0 @PushWFArc f30 '' #zField
wr0 @StartSub f31 '' #zField
wr0 @GridStep f32 '' #zField
wr0 @GridStep f33 '' #zField
wr0 @GridStep f34 '' #zField
wr0 @PushWFArc f35 '' #zField
wr0 @PushWFArc f36 '' #zField
wr0 @PushWFArc f37 '' #zField
wr0 @EndSub f38 '' #zField
wr0 @PushWFArc f39 '' #zField
wr0 @StartSub f40 '' #zField
wr0 @GridStep f41 '' #zField
wr0 @GridStep f42 '' #zField
wr0 @GridStep f43 '' #zField
wr0 @PushWFArc f44 '' #zField
wr0 @PushWFArc f45 '' #zField
wr0 @PushWFArc f46 '' #zField
wr0 @EndSub f47 '' #zField
wr0 @PushWFArc f48 '' #zField
wr0 @InfoButton f49 '' #zField
wr0 @StartSub f50 '' #zField
wr0 @GridStep f51 '' #zField
wr0 @GridStep f52 '' #zField
wr0 @GridStep f53 '' #zField
wr0 @GridStep f54 '' #zField
wr0 @PushWFArc f55 '' #zField
wr0 @PushWFArc f56 '' #zField
wr0 @PushWFArc f57 '' #zField
wr0 @PushWFArc f58 '' #zField
wr0 @EndSub f59 '' #zField
wr0 @PushWFArc f60 '' #zField
wr0 @StartSub f61 '' #zField
wr0 @GridStep f62 '' #zField
wr0 @GridStep f63 '' #zField
wr0 @GridStep f64 '' #zField
wr0 @GridStep f65 '' #zField
wr0 @PushWFArc f66 '' #zField
wr0 @PushWFArc f67 '' #zField
wr0 @PushWFArc f68 '' #zField
wr0 @PushWFArc f69 '' #zField
wr0 @EndSub f70 '' #zField
wr0 @PushWFArc f71 '' #zField
>Proto wr0 wr0 writeSerialLetter #zField
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
wr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeSerialLetterToOneCorrespondant</name>
        <nameStyle>35,7,9
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
wr0 f0 139 67 26 26 -98 -31 #rect
wr0 f0 @|StartSubIcon #fIcon
wr0 f1 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f1 139 363 26 26 14 0 #rect
wr0 f1 @|EndSubIcon #fIcon
wr0 f4 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f4 actionTable 'out=in;
' #txt
wr0 f4 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f4 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f4 134 140 36 24 22 -15 #rect
wr0 f4 @|StepIcon #fIcon
wr0 f7 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f7 actionTable 'out=in;
' #txt
wr0 f7 actionCode '
out.fileOperationMessage = 
in.documentFactory.generateDocument(in.templatePath,in.serialLetterName,in.outputPath,in.outputFormat,in.mergeFieldsList);' #txt
wr0 f7 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serialLetter</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f7 134 292 36 24 22 -9 #rect
wr0 f7 @|StepIcon #fIcon
wr0 f6 expr out #txt
wr0 f6 152 316 152 363 #arcP
wr0 f2 expr out #txt
wr0 f2 152 93 152 140 #arcP
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
a list of java.io.File that were created during the process.

In this callable, just one java.io.File should be created.</name>
        <nameStyle>110,0,7,23
227,7,9
27,0,7,23
237,7,9
26,0,7,23
319,7,9
55,0,7,23
154,7,9
59,0,7,23
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f9 44 427 521 362 -255 -176 #rect
wr0 f9 @|IBIcon #fIcon
wr0 f9 -657956|-1|-16777216 #nodeStyle
wr0 f10 inParamDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject data,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath> param;' #txt
wr0 f10 inParamTable 'out.data=param.data;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.templatePath=param.templatePath;
' #txt
wr0 f10 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f10 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f10 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f10 callSignature writeDocumentWithOneDataClass(ch.ivyteam.ivy.scripting.objects.CompositeObject,String,String,String,String) #txt
wr0 f10 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithOneDataClass(CompositeObject,String,String,String,String)</name>
        <nameStyle>74,5,7
</nameStyle>
        <desc>This callable produces a document with a data (DataClass) and 
with the help of a document factory Object.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; TemplatePath: this is the path of the template (document model)
-&gt; data . The values of the DataClass fields are going to be used to fill the template and to produce the document.
The fields of the data have to be named like the fields of the template.
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
wr0 f10 779 51 26 26 -204 -34 #rect
wr0 f10 @|StartSubIcon #fIcon
wr0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This callable produces a document with a data (DataClass) and 
with the help of a document factory Object.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; TemplatePath: this is the path of the template (document model)
-&gt; data: A CompositeObject (DataClass). 
The values of the DataClass fields are going to be used to fill the template and to produce the document.
The fields of the data have to be named like the fields of the template. 
Optional input parameters:
-&gt; optionalOutputPath: where to store the created java.io.File. By default &quot;ivy_RIA_files&quot;
-&gt; optionalOutputFormat: by default the first supported one (in general it will be &quot;doc&quot;
-&gt; optionalLetterName: the file name of the letter. By default &quot;letter&quot;+ the nanoTime, 
to be sure the file doesn''t overwrite any other.

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the process.

In this callable, just one java.io.File should be created.</name>
        <nameStyle>106,0,7,23
227,7,9
27,0,7,23
289,7,9
26,0,7,23
319,7,9
55,0,7,23
154,7,9
59,0,7,23
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f11 631 427 579 378 -284 -184 #rect
wr0 f11 @|IBIcon #fIcon
wr0 f11 -657956|-1|-16777216 #nodeStyle
wr0 f12 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f12 actionTable 'out=in;
' #txt
wr0 f12 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;

in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f12 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f12 774 132 36 24 30 -16 #rect
wr0 f12 @|StepIcon #fIcon
wr0 f13 expr out #txt
wr0 f13 792 77 792 132 #arcP
wr0 f14 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f14 actionTable 'out=in;
' #txt
wr0 f14 actionCode '
import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f14 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName
</name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f14 774 196 36 24 22 -18 #rect
wr0 f14 @|StepIcon #fIcon
wr0 f15 expr out #txt
wr0 f15 792 156 792 196 #arcP
wr0 f16 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f16 actionTable 'out=in;
' #txt
wr0 f16 actionCode 'import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;

out.documentTemplate = new DocumentTemplate(in.templatePath,in.outputPath, in.serialLetterName,in.outputFormat,in.data);' #txt
wr0 f16 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build DocumentTemplate</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f16 774 236 36 24 20 -2 #rect
wr0 f16 @|StepIcon #fIcon
wr0 f17 expr out #txt
wr0 f17 792 220 792 236 #arcP
wr0 f18 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f18 actionTable 'out=in;
' #txt
wr0 f18 actionCode out.fileOperationMessage=in.documentFactory.generateDocument(in.documentTemplate); #txt
wr0 f18 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serial letter</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f18 774 284 36 24 20 -2 #rect
wr0 f18 @|StepIcon #fIcon
wr0 f19 expr out #txt
wr0 f19 792 260 792 284 #arcP
wr0 f20 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f20 779 363 26 26 14 0 #rect
wr0 f20 @|EndSubIcon #fIcon
wr0 f21 expr out #txt
wr0 f21 792 308 792 363 #arcP
wr0 f22 inParamDecl '<List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField> listOfTemplateMergeFields,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,List<java.lang.String> tableNamesList,List<List<ch.ivyteam.ivy.scripting.objects.CompositeObject>> datasForTables> param;' #txt
wr0 f22 inParamTable 'out.ListOfCompositeObjectsToFillTheTables=param.datasForTables;
out.mergeFieldsList=param.listOfTemplateMergeFields;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.tablesNamesList=param.tableNamesList;
out.templatePath=param.templatePath;
' #txt
wr0 f22 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f22 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f22 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f22 callSignature writeDocumentWithMailMergeTable(List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField>,String,String,String,String,List<String>,List<List<ch.ivyteam.ivy.scripting.objects.CompositeObject>>) #txt
wr0 f22 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeTable(
List&lt;TemplateMergeField&gt;,
String,String,String,String,
List&lt;String&gt;,List&lt;List&lt;CompositeObject&gt;&gt;)</name>
        <nameStyle>129,5,7
</nameStyle>
        <desc>These callables produce a document with a list of merge fields and 
with the help of a document factory Object. The Merge Mail With Regions is supported.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

A Mail Merge Region is a Table in the template whose rows are going to be automatically filled with some data.
To be able to perform this operation, one may provide the list of the tables names, the merge fields names for each table and the data (rows).
If you want to fill some tables, the list of the tables names have to be provided in all the callables Starts. The tables are named in the template.
Then the fields names and the data can be provided in several ways:
	. Lists of DataClasses objects (CompositeObjects): each attribute name will be seen as a mergeField name, each object is a row in a table.
	. List of Recordsets: each field of the recordset is seen as a mergefield, and each record is a row of data.
	. For each table you provide a list of fields'' names and the rows are encapsulated into list of Objects.
If there is no table in the given template, or no match between your data and the tables names/fieldsnames, these callables just ignore the tables
and perform normal mail merge.

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
-&gt; Data for filling some tables (see description above about Mail Merge Regions) -&gt; HERE Lists of DataClasses objects (CompositeObjects)

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the process.

In these callables, just one java.io.File should be created.</desc>
    </language>
</elementInfo>
' #txt
wr0 f22 1459 59 26 26 16 -36 #rect
wr0 f22 @|StartSubIcon #fIcon
wr0 f23 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f23 actionTable 'out=in;
' #txt
wr0 f23 actionCode 'import java.util.HashMap;
HashMap map = new HashMap();

if(in.tablesNamesList.size()>0 && 
in.ListOfCompositeObjectsToFillTheTables.size()==in.tablesNamesList.size()){
	int i=0;
	for(String s : in.tablesNamesList)
	{
		map.put(s,in.ListOfCompositeObjectsToFillTheTables.get(i));
		i++;
	}
	
}
try{
	out.fileOperationMessage = 
	in.documentFactory.generateDocumentWithRegions(in.templatePath,in.serialLetterName,in.outputPath,in.outputFormat,in.mergeFieldsList,map);
}catch (Throwable t){
	ivy.log.error(t.getMessage(),t);
}

' #txt
wr0 f23 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the hash map for the merge mail with regions
and write the serialLetter</name>
        <nameStyle>50,7,9
4,7,9
22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f23 1454 292 36 24 22 -9 #rect
wr0 f23 @|StepIcon #fIcon
wr0 f24 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f24 actionTable 'out=in;
' #txt
wr0 f24 actionCode 'import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f24 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName </name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f24 1454 212 36 24 22 -18 #rect
wr0 f24 @|StepIcon #fIcon
wr0 f25 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f25 actionTable 'out=in;
' #txt
wr0 f25 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f25 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f25 1454 140 36 24 22 -15 #rect
wr0 f25 @|StepIcon #fIcon
wr0 f26 expr out #txt
wr0 f26 1472 164 1472 212 #arcP
wr0 f27 expr out #txt
wr0 f27 1472 236 1472 292 #arcP
wr0 f28 expr out #txt
wr0 f28 1472 85 1472 140 #arcP
wr0 f29 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f29 1459 363 26 26 14 0 #rect
wr0 f29 @|EndSubIcon #fIcon
wr0 f30 expr out #txt
wr0 f30 1472 316 1472 363 #arcP
wr0 f31 inParamDecl '<List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField> listOfTemplateMergeFields,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,List<java.lang.String> tableNamesList,List<ch.ivyteam.ivy.scripting.objects.Recordset> recordsetsList> param;' #txt
wr0 f31 inParamTable 'out.ListOfRecordsets=param.recordsetsList;
out.mergeFieldsList=param.listOfTemplateMergeFields;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.tablesNamesList=param.tableNamesList;
out.templatePath=param.templatePath;
' #txt
wr0 f31 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f31 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f31 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f31 callSignature writeDocumentWithMailMergeTable(List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField>,String,String,String,String,List<String>,List<Recordset>) #txt
wr0 f31 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeTable(
List&lt;TemplateMergeField&gt;,
String,String,String,String,
List&lt;String&gt;,List&lt;Recordset&gt;)</name>
        <nameStyle>117,5,7
</nameStyle>
        <desc>These callables produce a document with a list of merge fields and 
with the help of a document factory Object. The Merge Mail With Regions is supported.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

A Mail Merge Region is a Table in the template whose rows are going to be automatically filled with some data.
To be able to perform this operation, one may provide the list of the tables names, the merge fields names for each table and the data (rows).
If you want to fill some tables, the list of the tables names have to be provided in all the callables Starts. The tables are named in the template.
Then the fields names and the data can be provided in several ways:
	. Lists of DataClasses objects (CompositeObjects): each attribute name will be seen as a mergeField name, each object is a row in a table.
	. List of Recordsets: each field of the recordset is seen as a mergefield, and each record is a row of data.
	. For each table you provide a list of fields'' names and the rows are encapsulated into list of Objects.
If there is no table in the given template, or no match between your data and the tables names/fieldsnames, these callables just ignore the tables
and perform normal mail merge.

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
-&gt; Data for filling some tables (see description above about Mail Merge Regions) -&gt; HERE List of Recordsets

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the process.

In these callables, just one java.io.File should be created.</desc>
    </language>
</elementInfo>
' #txt
wr0 f31 2051 51 26 26 17 -31 #rect
wr0 f31 @|StartSubIcon #fIcon
wr0 f32 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f32 actionTable 'out=in;
' #txt
wr0 f32 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f32 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f32 2046 132 36 24 22 -15 #rect
wr0 f32 @|StepIcon #fIcon
wr0 f33 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f33 actionTable 'out=in;
' #txt
wr0 f33 actionCode 'import java.util.Hashtable;
Hashtable htable = new Hashtable();

if(in.tablesNamesList.size()>0 && 
	in.ListOfRecordsets.size()==in.tablesNamesList.size()){
	int i=0;
	for(String s : in.tablesNamesList)
	{
		htable.put(s,in.ListOfRecordsets.get(i));
		i++;
	}
}
try{
	out.fileOperationMessage = 
	in.documentFactory.generateDocumentWithRegions(in.templatePath,in.serialLetterName,in.outputPath,in.outputFormat,in.mergeFieldsList,htable);
}catch (Throwable t){
	ivy.log.error(t.getMessage(),t);
}

' #txt
wr0 f33 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the hash table for the merge mail with regions
and write the serialLetter</name>
        <nameStyle>52,7,9
4,7,9
22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f33 2046 284 36 24 22 -9 #rect
wr0 f33 @|StepIcon #fIcon
wr0 f34 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f34 actionTable 'out=in;
' #txt
wr0 f34 actionCode 'import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f34 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName </name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f34 2046 204 36 24 22 -18 #rect
wr0 f34 @|StepIcon #fIcon
wr0 f35 expr out #txt
wr0 f35 2064 156 2064 204 #arcP
wr0 f36 expr out #txt
wr0 f36 2064 228 2064 284 #arcP
wr0 f37 expr out #txt
wr0 f37 2064 77 2064 132 #arcP
wr0 f38 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f38 2051 363 26 26 14 0 #rect
wr0 f38 @|EndSubIcon #fIcon
wr0 f39 expr out #txt
wr0 f39 2064 308 2064 363 #arcP
wr0 f40 inParamDecl '<List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField> listOfTemplateMergeFields,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,List<java.lang.String> tableNamesList,List<List<java.lang.String>> tablesFieldsNames,List<List<List<java.lang.Object>>> tablesRowsValues> param;' #txt
wr0 f40 inParamTable 'out.ListOfTableFieldsNames=param.tablesFieldsNames;
out.ListOfTablesRows=param.tablesRowsValues;
out.mergeFieldsList=param.listOfTemplateMergeFields;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.tablesNamesList=param.tableNamesList;
out.templatePath=param.templatePath;
' #txt
wr0 f40 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f40 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f40 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f40 callSignature writeDocumentWithMailMergeTable(List<ch.ivyteam.ivy.addons.docfactory.TemplateMergeField>,String,String,String,String,List<String>,List<List<String>>,List<List<List>>) #txt
wr0 f40 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeTable(
List&lt;TemplateMergeField&gt;,
String,String,String,String,
List&lt;String&gt;,List&lt;List&lt;String&gt;&gt;,
List&lt;List&lt;List&gt;&gt;)</name>
        <nameStyle>138,5,7
</nameStyle>
        <desc>These callables produce a document with a list of merge fields and 
with the help of a document factory Object. The Merge Mail With Regions is supported.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

A Mail Merge Region is a Table in the template whose rows are going to be automatically filled with some data.
To be able to perform this operation, one may provide the list of the tables names, the merge fields names for each table and the data (rows).
If you want to fill some tables, the list of the tables names have to be provided in all the callables Starts. The tables are named in the template.
Then the fields names and the data can be provided in several ways:
	. Lists of DataClasses objects (CompositeObjects): each attribute name will be seen as a mergeField name, each object is a row in a table.
	. List of Recordsets: each field of the recordset is seen as a mergefield, and each record is a row of data.
	. For each table you provide a list of fields'' names and the rows are encapsulated into list of Objects.
If there is no table in the given template, or no match between your data and the tables names/fieldsnames, these callables just ignore the tables
and perform normal mail merge.

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
-&gt; Data for filling some tables (see description above about Mail Merge Regions) -&gt; HERE For each table you provide a list of fields'' names and the rows are encapsulated into list of Objects.

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the process.

In these callables, just one java.io.File should be created.</desc>
    </language>
</elementInfo>
' #txt
wr0 f40 2427 51 26 26 19 -35 #rect
wr0 f40 @|StartSubIcon #fIcon
wr0 f41 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f41 actionTable 'out=in;
' #txt
wr0 f41 actionCode 'import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f41 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName </name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f41 2422 212 36 24 22 -18 #rect
wr0 f41 @|StepIcon #fIcon
wr0 f42 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f42 actionTable 'out=in;
' #txt
wr0 f42 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f42 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f42 2422 140 36 24 22 -15 #rect
wr0 f42 @|StepIcon #fIcon
wr0 f43 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f43 actionTable 'out=in;
' #txt
wr0 f43 actionCode '
try{
	out.fileOperationMessage = 
	in.documentFactory.generateDocumentWithRegions(in.templatePath,in.serialLetterName,in.outputPath,in.outputFormat,in.mergeFieldsList,in.tablesNamesList,in.ListOfTableFieldsNames,in.ListOfTablesRows);
}catch (Throwable t){
	ivy.log.error(t.getMessage(),t);
}

' #txt
wr0 f43 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serialLetter</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f43 2422 292 36 24 22 -9 #rect
wr0 f43 @|StepIcon #fIcon
wr0 f44 expr out #txt
wr0 f44 2440 164 2440 212 #arcP
wr0 f45 expr out #txt
wr0 f45 2440 236 2440 292 #arcP
wr0 f46 expr out #txt
wr0 f46 2440 77 2440 140 #arcP
wr0 f47 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f47 2427 363 26 26 14 0 #rect
wr0 f47 @|EndSubIcon #fIcon
wr0 f48 expr out #txt
wr0 f48 2440 316 2440 363 #arcP
wr0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>These callables produce a document with a list of merge fields and 
with the help of a document factory Object. The Merge Mail With Regions is supported.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

A Mail Merge Region is a Table in the template whose rows are going to be automatically filled with some data.
To be able to perform this operation, one may provide the list of the tables names, the merge fields names for each table and the data (rows).
The Names of the tables in the template are given by a Start Mergefield(TableStart:nameOfTheTable).
If you want to fill some tables, the list of the tables names have to be provided in all the callables Starts. 
The fields names and the data can be provided in several ways:
	. Lists of DataClasses objects (CompositeObjects): each attribute name will be seen as a mergeField name, each object is a row in a table.
	. List of Recordsets: each field of the recordset is seen as a mergefield, and each record is a row of data.
	. For each table you provide a list of fields'' names and the rows are encapsulated into list of Objects.
If there is no table in the given template, or no match between your data and the tables names/fieldsnames, these callables just ignore the tables
and perform normal mail merge.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; TemplatePath: this is the path of the template (document model)
-&gt; list of TemplateMergeFields. Each mergefield corresponds to a mergeField in the template.
If no correspondance for a MergeField was found, it will be simply ignored.
-&gt; Or Composite Object whose attributes are going to be mapped with the template''s mergefields.

Optional input parameters:
-&gt; optionalOutputPath: where to store the created java.io.File. By default &quot;ivy_RIA_files&quot;
-&gt; optionalOutputFormat: by default the first supported one (in general it will be &quot;doc&quot;
-&gt; optionalLetterName: the file name of the letter. By default &quot;letter&quot;+ the nanoTime, 
to be sure the file doesn''t overwrite any other.
-&gt; Data for filling some tables (see description above about Mail Merge Regions)

It returns a FileOperationMessage Object that contains:
a Type indicating if the operation was successfull,
a message in the Session User language,
a list of java.io.File that were created during the process.

In these callables, just one java.io.File should be created.</name>
        <nameStyle>153,0,7,23
156,7,9
337,7,21
14,1,2,7,21
712,7,21
72,7,9
27,0,7,23
68,7,9
265,7,15
1,7,9
26,0,7,23
400,7,9
55,0,7,23
154,7,9
61,0,7,23
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f49 1348 411 1112 586 -417 -288 #rect
wr0 f49 @|IBIcon #fIcon
wr0 f49 -657956|-1|-16777216 #nodeStyle
wr0 f50 inParamDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject data,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,List<java.lang.String> tableNamesList,List<List<ch.ivyteam.ivy.scripting.objects.CompositeObject>> datasForTables> param;' #txt
wr0 f50 inParamTable 'out.data=param.data;
out.ListOfCompositeObjectsToFillTheTables=param.datasForTables;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.tablesNamesList=param.tableNamesList;
out.templatePath=param.templatePath;
' #txt
wr0 f50 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f50 outParamTable 'result.fileOperationMessage=in.fileOperationMessage;
' #txt
wr0 f50 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f50 callSignature writeDocumentWithMailMergeTable(ch.ivyteam.ivy.scripting.objects.CompositeObject,String,String,String,String,List<String>,List<List<ch.ivyteam.ivy.scripting.objects.CompositeObject>>) #txt
wr0 f50 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f50 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeTable(
CompositeObject,
String,String,String,String,
List&lt;String&gt;,List&lt;List&lt;CompositeObject&gt;&gt;)</name>
        <nameStyle>120,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f50 1347 59 26 26 -244 -41 #rect
wr0 f50 @|StartSubIcon #fIcon
wr0 f51 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f51 actionTable 'out=in;
' #txt
wr0 f51 actionCode 'import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
import java.util.HashMap;
HashMap map = new HashMap();

if(in.tablesNamesList.size()>0 && 
in.ListOfCompositeObjectsToFillTheTables.size()==in.tablesNamesList.size()){
	int i=0;
	for(String s : in.tablesNamesList)
	{
		map.put(s,in.ListOfCompositeObjectsToFillTheTables.get(i));
		i++;
	}
	
}
out.documentTemplate = new DocumentTemplate(in.templatePath,in.outputPath, in.serialLetterName,in.outputFormat,in.data,map);' #txt
wr0 f51 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f51 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build DocumentTemplate</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f51 1342 236 36 24 -163 -11 #rect
wr0 f51 @|StepIcon #fIcon
wr0 f52 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f52 actionTable 'out=in;
' #txt
wr0 f52 actionCode '
import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f52 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName
</name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f52 1342 196 36 24 -187 -26 #rect
wr0 f52 @|StepIcon #fIcon
wr0 f53 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f53 actionTable 'out=in;
' #txt
wr0 f53 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;

in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f53 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f53 1342 148 36 24 -175 -18 #rect
wr0 f53 @|StepIcon #fIcon
wr0 f54 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f54 actionTable 'out=in;
' #txt
wr0 f54 actionCode out.fileOperationMessage=in.documentFactory.generateDocument(in.documentTemplate); #txt
wr0 f54 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f54 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serial letter</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f54 1342 300 36 24 -139 -9 #rect
wr0 f54 @|StepIcon #fIcon
wr0 f55 expr out #txt
wr0 f55 1360 172 1360 196 #arcP
wr0 f56 expr out #txt
wr0 f56 1360 220 1360 236 #arcP
wr0 f57 expr out #txt
wr0 f57 1360 260 1360 300 #arcP
wr0 f58 expr out #txt
wr0 f58 1360 85 1360 148 #arcP
wr0 f59 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f59 1347 363 26 26 14 0 #rect
wr0 f59 @|EndSubIcon #fIcon
wr0 f60 expr out #txt
wr0 f60 1360 324 1360 363 #arcP
wr0 f61 inParamDecl '<ch.ivyteam.ivy.scripting.objects.CompositeObject data,java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,List<java.lang.String> tableNamesList,List<ch.ivyteam.ivy.scripting.objects.Recordset> recordsetsList> param;' #txt
wr0 f61 inParamTable 'out.data=param.data;
out.ListOfRecordsets=param.recordsetsList;
out.outputFormat=param.optionalOutputFormat;
out.outputPath=param.optionalOutputpath;
out.serialLetterName=param.optionalLetterName;
out.tablesNamesList=param.tableNamesList;
out.templatePath=param.templatePath;
' #txt
wr0 f61 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage fileOperationMessage> result;
' #txt
wr0 f61 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f61 callSignature writeDocumentWithMailMergeTable(ch.ivyteam.ivy.scripting.objects.CompositeObject,String,String,String,String,List<String>,List<Recordset>) #txt
wr0 f61 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f61 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeTable(
CompositeObject,String,
String,String,String,
List&lt;String&gt;,List&lt;Recordset&gt;)</name>
        <nameStyle>108,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f61 1931 51 26 26 -171 -37 #rect
wr0 f61 @|StartSubIcon #fIcon
wr0 f62 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f62 actionTable 'out=in;
' #txt
wr0 f62 actionCode '
import ch.ivyteam.ivy.addons.docfactory.FileUtil;

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
}

' #txt
wr0 f62 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f62 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check the outputFormat / 
outputPath / outputLetterName
</name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f62 1926 188 36 24 -183 -18 #rect
wr0 f62 @|StepIcon #fIcon
wr0 f63 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f63 actionTable 'out=in;
' #txt
wr0 f63 actionCode 'import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
import java.util.Hashtable;
Hashtable htable = new Hashtable();

if(in.tablesNamesList.size()>0 && 
	in.ListOfRecordsets.size()==in.tablesNamesList.size()){
	int i=0;
	for(String s : in.tablesNamesList)
	{
		htable.put(s,in.ListOfRecordsets.get(i));
		i++;
	}
}
out.documentTemplate = new DocumentTemplate(in.templatePath,in.outputPath, in.serialLetterName,in.outputFormat,in.data,htable);' #txt
wr0 f63 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build DocumentTemplate</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f63 1926 228 36 24 -160 -9 #rect
wr0 f63 @|StepIcon #fIcon
wr0 f64 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f64 actionTable 'out=in;
' #txt
wr0 f64 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;

in.documentFactory= BaseDocFactory.getInstance();' #txt
wr0 f64 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f64 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory 
Object</name>
        <nameStyle>32,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f64 1926 140 36 24 -168 -23 #rect
wr0 f64 @|StepIcon #fIcon
wr0 f65 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter out;
' #txt
wr0 f65 actionTable 'out=in;
' #txt
wr0 f65 actionCode out.fileOperationMessage=in.documentFactory.generateDocument(in.documentTemplate); #txt
wr0 f65 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f65 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serial letter</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
wr0 f65 1926 292 36 24 -139 -9 #rect
wr0 f65 @|StepIcon #fIcon
wr0 f66 expr out #txt
wr0 f66 1944 164 1944 188 #arcP
wr0 f67 expr out #txt
wr0 f67 1944 212 1944 228 #arcP
wr0 f68 expr out #txt
wr0 f68 1944 252 1944 292 #arcP
wr0 f69 expr out #txt
wr0 f69 1944 77 1944 140 #arcP
wr0 f70 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetter #txt
wr0 f70 1931 363 26 26 14 0 #rect
wr0 f70 @|EndSubIcon #fIcon
wr0 f71 expr out #txt
wr0 f71 1944 316 1944 363 #arcP
>Proto wr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>115</swimlaneSize>
    <swimlaneSize>64</swimlaneSize>
    <swimlaneSize>87</swimlaneSize>
    <swimlaneSize>75</swimlaneSize>
    <swimlaneColor>-1051265</swimlaneColor>
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
wr0 f10 mainOut f13 tail #connect
wr0 f13 head f12 mainIn #connect
wr0 f12 mainOut f15 tail #connect
wr0 f15 head f14 mainIn #connect
wr0 f14 mainOut f17 tail #connect
wr0 f17 head f16 mainIn #connect
wr0 f16 mainOut f19 tail #connect
wr0 f19 head f18 mainIn #connect
wr0 f18 mainOut f21 tail #connect
wr0 f21 head f20 mainIn #connect
wr0 f25 mainOut f26 tail #connect
wr0 f26 head f24 mainIn #connect
wr0 f24 mainOut f27 tail #connect
wr0 f27 head f23 mainIn #connect
wr0 f22 mainOut f28 tail #connect
wr0 f28 head f25 mainIn #connect
wr0 f23 mainOut f30 tail #connect
wr0 f30 head f29 mainIn #connect
wr0 f32 mainOut f35 tail #connect
wr0 f35 head f34 mainIn #connect
wr0 f34 mainOut f36 tail #connect
wr0 f36 head f33 mainIn #connect
wr0 f31 mainOut f37 tail #connect
wr0 f37 head f32 mainIn #connect
wr0 f33 mainOut f39 tail #connect
wr0 f39 head f38 mainIn #connect
wr0 f42 mainOut f44 tail #connect
wr0 f44 head f41 mainIn #connect
wr0 f41 mainOut f45 tail #connect
wr0 f45 head f43 mainIn #connect
wr0 f40 mainOut f46 tail #connect
wr0 f46 head f42 mainIn #connect
wr0 f43 mainOut f48 tail #connect
wr0 f48 head f47 mainIn #connect
wr0 f53 mainOut f55 tail #connect
wr0 f55 head f52 mainIn #connect
wr0 f52 mainOut f56 tail #connect
wr0 f56 head f51 mainIn #connect
wr0 f51 mainOut f57 tail #connect
wr0 f57 head f54 mainIn #connect
wr0 f50 mainOut f58 tail #connect
wr0 f58 head f53 mainIn #connect
wr0 f54 mainOut f60 tail #connect
wr0 f60 head f59 mainIn #connect
wr0 f64 mainOut f66 tail #connect
wr0 f66 head f62 mainIn #connect
wr0 f62 mainOut f67 tail #connect
wr0 f67 head f63 mainIn #connect
wr0 f63 mainOut f68 tail #connect
wr0 f68 head f65 mainIn #connect
wr0 f61 mainOut f69 tail #connect
wr0 f69 head f64 mainIn #connect
wr0 f65 mainOut f71 tail #connect
wr0 f71 head f70 mainIn #connect
