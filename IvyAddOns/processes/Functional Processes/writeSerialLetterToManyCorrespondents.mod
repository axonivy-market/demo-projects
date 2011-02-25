[Ivy]
[>Created: Tue Feb 08 07:25:08 CET 2011]
1249FCC8592E4E39 3.15 #module
>Proto >Proto Collection #zClass
ws0 writeSerialLetterToManyCorrespondants Big #zClass
ws0 B #cInfo
ws0 #process
ws0 @TextInP .xml .xml #zField
ws0 @TextInP .responsibility .responsibility #zField
ws0 @AnnotationInP-0n ai ai #zField
ws0 @TextInP .resExport .resExport #zField
ws0 @TextInP .type .type #zField
ws0 @TextInP .processKind .processKind #zField
ws0 @MessageFlowInP-0n messageIn messageIn #zField
ws0 @MessageFlowOutP-0n messageOut messageOut #zField
ws0 @StartSub f0 '' #zField
ws0 @EndSub f1 '' #zField
ws0 @InfoButton f11 '' #zField
ws0 @InfoButton f12 '' #zField
ws0 @GridStep f14 '' #zField
ws0 @GridStep f16 '' #zField
ws0 @GridStep f9 '' #zField
ws0 @PushWFArc f10 '' #zField
ws0 @PushWFArc f2 '' #zField
ws0 @PushWFArc f3 '' #zField
ws0 @PushWFArc f4 '' #zField
ws0 @InfoButton f5 '' #zField
>Proto ws0 ws0 writeSerialLetterToManyCorrespondants #zField
ws0 f0 inParamDecl '<java.lang.String optionalSingleDocumentOutputPath,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate> documentTemplatesList,java.lang.Boolean allInOneDocument,java.lang.Boolean allInSeparatesDocuments,java.lang.String optionalSingleDocumentFormat,java.lang.String optionalSingleDocumentName> param;' #txt
ws0 f0 inParamTable 'out.manyDocuments=param.allInSeparatesDocuments;
out.oneDocument=param.allInOneDocument;
out.oneDocumentFormat=param.optionalSingleDocumentFormat;
out.oneDocumentName=param.optionalSingleDocumentName;
out.oneDocumentPath=param.optionalSingleDocumentOutputPath;
out.templateDocumentsList=param.documentTemplatesList;
' #txt
ws0 f0 outParamDecl '<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage FileOperationMessage,List<ch.ivyteam.ivy.addons.docfactory.FileOperationMessage> listOfFileOperationMessages> result;
' #txt
ws0 f0 outParamTable 'result.FileOperationMessage=in.fileOperationMessage;
result.listOfFileOperationMessages=in.listofFileOperationMessages;
' #txt
ws0 f0 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany out;
' #txt
ws0 f0 callSignature writeSerialLettersToManyCorrespondents(String,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate>,Boolean,Boolean,String,String) #txt
ws0 f0 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeSerialLettersToManyCorrespondents</name>
        <nameStyle>38,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f0 323 59 26 26 -104 -39 #rect
ws0 f0 @|StartSubIcon #fIcon
ws0 f1 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
ws0 f1 323 395 26 26 14 0 #rect
ws0 f1 @|EndSubIcon #fIcon
ws0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If the boolean allInOne parameter is True
all the letters are going to be append 
in one single document.</name>
        <nameStyle>105,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f11 35 171 234 58 -112 -24 #rect
ws0 f11 @|IBIcon #fIcon
ws0 f11 -993312|-1|-16777216 #nodeStyle
ws0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If the boolean allInSeparatesDocuments 
parameter is True
each documentTemplate Object 
is going to generate one single letter.</name>
        <nameStyle>127,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f12 35 267 234 74 -112 -32 #rect
ws0 f12 @|IBIcon #fIcon
ws0 f12 -7484683|-1|-16777216 #nodeStyle
ws0 f14 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany out;
' #txt
ws0 f14 actionTable 'out=in;
' #txt
ws0 f14 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
if(in.oneDocument){
	
	if(in.#documentFactory!=null){
		in.fileOperationMessage = in.documentFactory.generateMultipleDocumentsInOne( in.oneDocumentPath,in.oneDocumentName,in.oneDocumentFormat,in.templateDocumentsList);
	}
}' #txt
ws0 f14 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
ws0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the serial letter</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f14 318 188 36 24 22 -9 #rect
ws0 f14 @|StepIcon #fIcon
ws0 f16 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany out;
' #txt
ws0 f16 actionTable 'out=in;
' #txt
ws0 f16 actionCode 'import ch.ivyteam.ivy.addons.docfactory.TemplateMergeField;
import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;


if(in.manyDocuments){
	in.listofFileOperationMessages.clear();
	
	if(in.#documentFactory!=null){
		in.listofFileOperationMessages.addAll(
			in.documentFactory.generateDocumentsWithDifferentDestination(in.templateDocumentsList)
		);
	}
	
	
}' #txt
ws0 f16 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
ws0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>write the letters</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f16 318 292 36 24 22 -8 #rect
ws0 f16 @|StepIcon #fIcon
ws0 f9 actionDecl 'ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany out;
' #txt
ws0 f9 actionTable 'out=in;
' #txt
ws0 f9 actionCode 'import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;
in.documentFactory= BaseDocFactory.getInstance();
' #txt
ws0 f9 type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
ws0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the documentFactory Object</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f9 318 116 36 24 20 -2 #rect
ws0 f9 @|StepIcon #fIcon
ws0 f10 expr out #txt
ws0 f10 336 85 336 116 #arcP
ws0 f2 expr out #txt
ws0 f2 336 140 336 188 #arcP
ws0 f3 expr out #txt
ws0 f3 336 212 336 292 #arcP
ws0 f4 expr out #txt
ws0 f4 336 316 336 395 #arcP
ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This callable produces documents with a List of DocumentTemplate objects and 
with the help of a document factory Object. Each DocumentTemplate will be 
turned into a document.
The Document Factory Object is a Java Object that can parse a document model
that contains mergefields and replace those mergefields by some String Data.

This callable takes some mandatory and some optional input parameters.
Mandatory input Parameters:
-&gt; list of DocumentTemplate. Each DocumentTemplate contains the path to the template it refers to,
and a list of mergeFields. Each mergefield corresponds to a mergeField in the template.
If no correspondance for a MergeField was found, it will be simply ignored.
-&gt; boolean allInOneDocument: if true all the produced documents are going to be appended in one Serial letter.
-&gt; boolean allInSeparatesDocuments: if true each DocumentTemplate will be turned into a single file. 
Each DocumentTemplate contains its outputPath (default &quot;ivy_RIA_files&quot;) , 
format(default &quot;doc&quot;) and name (default  &quot;letter&quot;+ the nanoTime).
If the two boolean are false, nothing will occur, if they are both true, both operations are going to be performed.

Optional input parameters:
-&gt; optionalSingleDocumentOutputPath: if allInOneDocument is true, used to store the created java.io.File serial letter.
By default &quot;ivy_RIA_files&quot;
-&gt; optionalSingleDocumentFormat: if allInOneDocument is true, the desired serial letterformat.
by default the first supported one (in general it will be &quot;doc&quot;)
-&gt; optionalSingleDocumentName: if allInOneDocument is true, the file name of the serial letter.
By default &quot;letter&quot;+ the nanoTime, to be sure the file doesn''t overwrite any other.

It returns:
-&gt; A FileOperationMessage Object reflecting the result of the serial Document production 
if the  boolean allInOneDocument was true. It contains the single File corresponding to the serial document.
-&gt; A List&lt;FileOperationMessage&gt;: if the boolean allInSeparatesDocuments was true 
each FileOperationMessage Object reflects the result of the production of one document.
It contains the list of java.io.File objects created during the mail merge operation.

</name>
        <nameStyle>176,0,7,23
227,9
27,0,23
735,9
26,0,23
489,9
11,0,23
456,9
1,0,23
</nameStyle>
    </language>
</elementInfo>
' #txt
ws0 f5 573 35 646 538 -318 -264 #rect
ws0 f5 @|IBIcon #fIcon
ws0 f5 -657956|-1|-16777216 #nodeStyle
>Proto ws0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>102</swimlaneSize>
    <swimlaneSize>112</swimlaneSize>
    <swimlaneSize>101</swimlaneSize>
    <swimlaneColor>-10027162</swimlaneColor>
    <swimlaneColor>-103</swimlaneColor>
    <swimlaneColor>-3368449</swimlaneColor>
    <swimlaneColor>-6710887</swimlaneColor>
</elementInfo>
' #txt
>Proto ws0 .type ch.ivyteam.ivy.addons.docfactory.WriteSerialLetterToMany #txt
>Proto ws0 .processKind CALLABLE_SUB #txt
>Proto ws0 0 0 32 24 18 0 #rect
>Proto ws0 @|BIcon #fIcon
ws0 f0 mainOut f10 tail #connect
ws0 f10 head f9 mainIn #connect
ws0 f9 mainOut f2 tail #connect
ws0 f2 head f14 mainIn #connect
ws0 f14 mainOut f3 tail #connect
ws0 f3 head f16 mainIn #connect
ws0 f16 mainOut f4 tail #connect
ws0 f4 head f1 mainIn #connect
