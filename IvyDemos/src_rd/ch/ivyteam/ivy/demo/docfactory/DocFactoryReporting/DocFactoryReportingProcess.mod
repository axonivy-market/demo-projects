[Ivy]
[>Created: Tue May 08 18:32:03 EDT 2012]
1372C781E5242D8D 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DocFactoryReportingProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogProcessStep f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @CallSub f8 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @RichDialogProcessEnd f9 '' #zField
Ds0 @RichDialogProcessStep f33 '' #zField
Ds0 @RichDialogProcessStep f15 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @RichDialogProcessStart f13 '' #zField
Ds0 @RichDialogProcessStep f14 '' #zField
Ds0 @PushWFArc f16 '' #zField
Ds0 @CallSub f18 '' #zField
Ds0 @PushWFArc f19 '' #zField
Ds0 @RichDialogProcessStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f11 '' #zField
Ds0 @RichDialogProcessStep f20 '' #zField
Ds0 @PushWFArc f21 '' #zField
Ds0 @RichDialogProcessEnd f22 '' #zField
Ds0 @PushWFArc f23 '' #zField
Ds0 @RichDialogProcessStart f24 '' #zField
Ds0 @RichDialogProcessStep f25 '' #zField
Ds0 @PushWFArc f26 '' #zField
Ds0 @CallSub f27 '' #zField
Ds0 @RichDialogProcessStep f28 '' #zField
Ds0 @PushWFArc f29 '' #zField
Ds0 @PushWFArc f30 '' #zField
Ds0 @RichDialogProcessStep f31 '' #zField
Ds0 @PushWFArc f32 '' #zField
Ds0 @RichDialogProcessEnd f34 '' #zField
Ds0 @PushWFArc f35 '' #zField
>Proto Ds0 Ds0 DocFactoryReportingProcess #zField
Ds0 f0 guid 1372C781F05C05D9 #txt
Ds0 f0 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 86 54 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f1 86 238 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 1372CAB1CDED2C00 #txt
Ds0 f3 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reportingWithListOfDataclasses</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 422 46 20 20 -47 -29 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f4 actionTable 'out=in;
' #txt
Ds0 f4 actionCode 'import ch.ivyteam.ivy.demo.docfactory.reporting.*;

in.aData.date1 = new Date();
in.aData.number1 = Math.round(Math.random()).intValue();
in.aData.string1="Report for company";
in.aData.string2="Test";

Company comp = new Company();
comp.name = "Soreco AG";
comp.address="Ringstrasse 7
CH-8603 Schwerzenbach";

Department dpt = new Department();
dpt.name="Marketing";
dpt.location="Schwerzenbach";

Employee emp = new Employee();
emp.name = "Müller";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";

HumanCapital hca = new HumanCapital();
hca.name="English language";
hca.level=8;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="HR Management";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Richardson";
emp.firstname = "Test";
emp.jobTitle="Web Marketing Specialist";

hca = new HumanCapital();
hca.name="English language";
hca.level=10;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Web Networking/Analyse";
hca.level=8;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

dpt = new Department();
dpt.name="Software developement";
dpt.location="Bolligen";

emp = new Employee();
emp.name = "Kelly";
emp.firstname = "Test";
emp.jobTitle="Java developer";

hca = new HumanCapital();
hca.name="English language";
hca.level=6;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Joly";
emp.firstname = "Test";
emp.jobTitle="Web developer";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Web technologies (Html 5, JavaScript, css...)";
hca.level=9;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

in.companies.add(comp);


comp = new Company();
comp.name = "IvyTeam AG";
comp.address="Alpenstrasse 9
CH-6304 Zug";

dpt = new Department();
dpt.name="Research";
dpt.location="Zug 1";

emp = new Employee();
emp.name = "andrea";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";

hca = new HumanCapital();
hca.name="English language";
hca.level=8;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Computer Engineering";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="HR Management";
hca.level=4;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Johanson";
emp.firstname = "Test";
emp.jobTitle="Computer languages specialist";

hca = new HumanCapital();
hca.name="English language";
hca.level=4;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="C++/C#";
hca.level=8;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

dpt = new Department();
dpt.name="Support";
dpt.location="Zug 2";

emp = new Employee();
emp.name = "Marry";
emp.firstname = "Test";
emp.jobTitle="Hotline Manager";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Richter";
emp.firstname = "Test";
emp.jobTitle="Hotline employee";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Computer sciences";
hca.level=9;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

in.companies.add(comp);

' #txt
Ds0 f4 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create the data</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 414 108 36 24 20 -2 #rect
Ds0 f4 @|RichDialogProcessStepIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 432 66 432 108 #arcP
Ds0 f8 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f8 processCall 'Functional Processes/writeSerialLetterToOneCorrespondent:writeDocumentWithMailMergeNestedTableWithListOfDatas(String,String,String,String,ch.ivyteam.ivy.scripting.objects.CompositeObject,List<ch.ivyteam.ivy.scripting.objects.CompositeObject>)' #txt
Ds0 f8 doCall true #txt
Ds0 f8 requestActionDecl '<java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,ch.ivyteam.ivy.scripting.objects.CompositeObject aData,List<ch.ivyteam.ivy.scripting.objects.CompositeObject> nestedListOfDatas> param;
' #txt
Ds0 f8 requestMappingAction 'param.templatePath=in.templatePath;
param.aData=in.aData;
param.nestedListOfDatas=in.companies;
' #txt
Ds0 f8 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f8 responseMappingAction 'out=in;
out.fileOperationMessage=result.fileOperationMessage;
' #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeNestedTableWithListOfDatas
(String,String,String,String,CompositeObject,List&lt;CompositeObject&gt;)</name>
        <nameStyle>120,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f8 414 180 36 24 20 -2 #rect
Ds0 f8 @|CallSubIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 432 132 432 180 #arcP
Ds0 f9 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f9 422 326 20 20 13 0 #rect
Ds0 f9 @|RichDialogProcessEndIcon #fIcon
Ds0 f33 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f33 actionTable 'out=in;
' #txt
Ds0 f33 actionCode 'import ch.ivyteam.ivy.cm.IContentObjectValue;
File f = new File("/docfactory/templatecache/reporting1");
if (! f.exists())
{
    //legt leeres file an (muss vorhanden sein für export)
    f.createNewFile();          
 		// export content from cms
    IContentObjectValue cov = ivy.cms.getContentObjectValue("/docfactory/templatecache/reporting1", null,true);
    cov.exportContentToFile(f.getJavaFile(), null);
}


if(f.exists()){
	in.templatePath = f.getAbsolutePath();
}' #txt
Ds0 f33 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>we set the template
with the per default 
inserted doc template in the cms</name>
        <nameStyle>74,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f33 78 172 36 24 20 -22 #rect
Ds0 f33 @|RichDialogProcessStepIcon #fIcon
Ds0 f15 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f15 actionTable 'out=in;
' #txt
Ds0 f15 actionCode ivy.session.loginSessionUser("Developer","Developer"); #txt
Ds0 f15 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login as Developer</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f15 78 116 36 24 24 -18 #rect
Ds0 f15 @|RichDialogProcessStepIcon #fIcon
Ds0 f17 expr out #txt
Ds0 f17 96 74 96 116 #arcP
Ds0 f2 expr out #txt
Ds0 f2 96 140 96 172 #arcP
Ds0 f12 expr out #txt
Ds0 f12 96 196 96 238 #arcP
Ds0 f13 guid 1372D380EA32C179 #txt
Ds0 f13 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f13 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f13 actionTable 'out=in;
' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reporting withTree</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f13 422 398 20 20 13 0 #rect
Ds0 f13 @|RichDialogProcessStartIcon #fIcon
Ds0 f14 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f14 actionTable 'out=in;
' #txt
Ds0 f14 actionCode 'import ch.ivyteam.ivy.demo.docfactory.reporting.tree.*;
import ch.ivyteam.ivy.demo.docfactory.reporting.HumanCapital;

in.aData.date1 = new Date();
in.aData.number1 = Math.round(Math.random()).intValue();
in.aData.string1="Report for company";
in.aData.string2="Test";
in.aTree.info=in.aData.string1;
in.aTree.value=in.aData;

Tree tComp1 = new Tree();
Company comp = new Company();
comp.name = "Soreco AG";
comp.address="Ringstrasse 7
CH-8603 Schwerzenbach";
tComp1.value=comp;

Tree tDpt1= new Tree();
Department dpt = new Department();
dpt.name="Marketing";
dpt.location="Schwerzenbach";
tDpt1.value=dpt;

Tree tEmp = new Tree();
Employee emp = new Employee();
emp.name = "Müller";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";
tEmp.value=emp;

Tree tHca1 = new Tree();
HumanCapital hca = new HumanCapital();
hca.name="English language";
hca.level=8;
tHca1.value = hca;

Tree tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
tHca2.value = hca;

Tree tHca3 = new Tree();
hca = new HumanCapital();
hca.name="HR Management";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Richardson";
emp.firstname = "Test";
emp.jobTitle="Web Marketing Specialist";
tEmp.value=emp;

tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=10;
tHca1.value = hca;

tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
tHca2.value = hca;

tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Web Networking/Analyse";
hca.level=8;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);

tDpt1= new Tree();
dpt = new Department();
dpt.name="Software developement";
dpt.location="Bolligen";
tDpt1.value=dpt;

tEmp = new Tree();
emp = new Employee();
emp.name = "Kelly";
emp.firstname = "Test";
emp.jobTitle="Java developer";
tEmp.value = emp;

tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=6;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Joly";
emp.firstname = "Test";
emp.jobTitle="Web developer";
tEmp.value = emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Web technologies (Html 5, JavaScript, css...)";
hca.level=9;
tHca2.value = hca;
tEmp.addAll([tHca1,tHca2]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);
in.aTree.add(tComp1);

tComp1 = new Tree();
comp = new Company();
comp.name = "IvyTeam AG";
comp.address="Alpenstrasse 9
CH-6304 Zug";
tComp1.value=comp;

tDpt1= new Tree();
dpt = new Department();
dpt.name="Research";
dpt.location="Zug 1";
tDpt1.value=dpt;

tEmp = new Tree();
emp = new Employee();
emp.name = "andrea";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=8;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Computer Engineering";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="HR Management";
hca.level=4;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Johanson";
emp.firstname = "Test";
emp.jobTitle="Computer languages specialist";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=4;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="C++/C#";
hca.level=8;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);

tDpt1= new Tree();
dpt = new Department();
dpt.name="Support";
dpt.location="Zug 2";
tDpt1.value=dpt;
tEmp = new Tree();
emp = new Employee();
emp.name = "Marry";
emp.firstname = "Test";
emp.jobTitle="Hotline Manager";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tEmp = new Tree();
emp = new Employee();
emp.name = "Richter";
emp.firstname = "Test";
emp.jobTitle="Hotline employee";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Computer sciences";
hca.level=9;
tHca2.value = hca;
tEmp.addAll([tHca1,tHca2]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);
in.aTree.add(tComp1);

' #txt
Ds0 f14 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create the data in form of a Tree</name>
        <nameStyle>33
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 414 444 36 24 20 -2 #rect
Ds0 f14 @|RichDialogProcessStepIcon #fIcon
Ds0 f16 expr out #txt
Ds0 f16 432 418 432 444 #arcP
Ds0 f18 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f18 processCall 'Functional Processes/writeSerialLetterToOneCorrespondent:writeDocumentWithMailMergeNestedTableWithTree(String,String,String,String,Tree)' #txt
Ds0 f18 doCall true #txt
Ds0 f18 requestActionDecl '<java.lang.String optionalOutputpath,java.lang.String optionalLetterName,java.lang.String optionalOutputFormat,java.lang.String templatePath,ch.ivyteam.ivy.scripting.objects.Tree treeData> param;
' #txt
Ds0 f18 requestMappingAction 'param.templatePath=in.templatePath;
param.treeData=in.aTree;
' #txt
Ds0 f18 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f18 responseMappingAction 'out=in;
out.fileOperationMessage=result.fileOperationMessage;
' #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeDocumentWithMailMergeNestedTableWithTree(String,String,String,String,Tree)</name>
        <nameStyle>79,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f18 414 508 36 24 20 -2 #rect
Ds0 f18 @|CallSubIcon #fIcon
Ds0 f19 expr out #txt
Ds0 f19 432 468 432 508 #arcP
Ds0 f6 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'if(!in.fileOperationMessage.files.isEmpty() && in.fileOperationMessage.files.get(0)!=null)
{
	
	panel.desktopHandlerPanel.openFile(in.fileOperationMessage.files.get(0));
}' #txt
Ds0 f6 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f6 414 244 36 24 20 -2 #rect
Ds0 f6 @|RichDialogProcessStepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 432 204 432 244 #arcP
Ds0 f11 expr out #txt
Ds0 f11 432 268 432 326 #arcP
Ds0 f20 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f20 actionTable 'out=in;
' #txt
Ds0 f20 actionCode 'if(!in.fileOperationMessage.files.isEmpty() && in.fileOperationMessage.files.get(0)!=null)
{
	
	panel.desktopHandlerPanel.openFile(in.fileOperationMessage.files.get(0));
}' #txt
Ds0 f20 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f20 414 564 36 24 20 -2 #rect
Ds0 f20 @|RichDialogProcessStepIcon #fIcon
Ds0 f21 expr out #txt
Ds0 f21 432 532 432 564 #arcP
Ds0 f22 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f22 422 622 20 20 13 0 #rect
Ds0 f22 @|RichDialogProcessEndIcon #fIcon
Ds0 f23 expr out #txt
Ds0 f23 432 588 432 622 #arcP
Ds0 f24 guid 1372DBA22007F166 #txt
Ds0 f24 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f24 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f24 actionTable 'out=in;
' #txt
Ds0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>serialReporting</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f24 958 46 20 20 17 -6 #rect
Ds0 f24 @|RichDialogProcessStartIcon #fIcon
Ds0 f25 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f25 actionTable 'out=in;
' #txt
Ds0 f25 actionCode 'import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
import ch.ivyteam.ivy.demo.docfactory.reporting.*;
in.aData = new AData();
in.aData.date1 = new Date();
in.aData.number1 = Math.round(Math.random()).intValue();
in.aData.string1="Report for company";
in.aData.string2="Test";

Company comp = new Company();
comp.name = "Soreco AG";
comp.address="Ringstrasse 7
CH-8603 Schwerzenbach";

Department dpt = new Department();
dpt.name="Marketing";
dpt.location="Schwerzenbach";

Employee emp = new Employee();
emp.name = "Müller";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";

HumanCapital hca = new HumanCapital();
hca.name="English language";
hca.level=8;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="HR Management";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Richardson";
emp.firstname = "Test";
emp.jobTitle="Web Marketing Specialist";

hca = new HumanCapital();
hca.name="English language";
hca.level=10;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Web Networking/Analyse";
hca.level=8;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

dpt = new Department();
dpt.name="Software developement";
dpt.location="Bolligen";

emp = new Employee();
emp.name = "Kelly";
emp.firstname = "Test";
emp.jobTitle="Java developer";

hca = new HumanCapital();
hca.name="English language";
hca.level=6;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Joly";
emp.firstname = "Test";
emp.jobTitle="Web developer";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Web technologies (Html 5, JavaScript, css...)";
hca.level=9;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

in.companies.add(comp);


comp = new Company();
comp.name = "IvyTeam AG";
comp.address="Alpenstrasse 9
CH-6304 Zug";

dpt = new Department();
dpt.name="Research";
dpt.location="Zug 1";

emp = new Employee();
emp.name = "andrea";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";

hca = new HumanCapital();
hca.name="English language";
hca.level=8;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Computer Engineering";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="HR Management";
hca.level=4;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Johanson";
emp.firstname = "Test";
emp.jobTitle="Computer languages specialist";

hca = new HumanCapital();
hca.name="English language";
hca.level=4;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="C++/C#";
hca.level=8;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

dpt = new Department();
dpt.name="Support";
dpt.location="Zug 2";

emp = new Employee();
emp.name = "Marry";
emp.firstname = "Test";
emp.jobTitle="Hotline Manager";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

emp = new Employee();
emp.name = "Richter";
emp.firstname = "Test";
emp.jobTitle="Hotline employee";

hca = new HumanCapital();
hca.name="English language";
hca.level=7;
emp.capitalList.add(hca);
hca = new HumanCapital();
hca.name="Computer sciences";
hca.level=9;
emp.capitalList.add(hca);

dpt.employeesList.add(emp);

comp.departmentsList.add(dpt);

in.companies.add(comp);

DocumentTemplate doc = new DocumentTemplate();
doc.setData(in.aData);
doc.setTemplatePath(in.templatePath);
doc.setNestedDataSourceForNestedMailMerge(in.companies);
in.documentTemplates.add(doc);

' #txt
Ds0 f25 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create the data and first documentTemplate</name>
        <nameStyle>42
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f25 950 108 36 24 20 -2 #rect
Ds0 f25 @|RichDialogProcessStepIcon #fIcon
Ds0 f26 expr out #txt
Ds0 f26 968 66 968 108 #arcP
Ds0 f27 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f27 processCall 'Functional Processes/writeSerialLetterToManyCorrespondents:writeSerialLettersToManyCorrespondents(String,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate>,Boolean,Boolean,String,String)' #txt
Ds0 f27 doCall true #txt
Ds0 f27 requestActionDecl '<java.lang.String optionalSingleDocumentOutputPath,List<ch.ivyteam.ivy.addons.docfactory.DocumentTemplate> documentTemplatesList,java.lang.Boolean allInOneDocument,java.lang.Boolean allInSeparatesDocuments,java.lang.String optionalSingleDocumentFormat,java.lang.String optionalSingleDocumentName> param;
' #txt
Ds0 f27 requestMappingAction 'param.optionalSingleDocumentOutputPath="";
param.documentTemplatesList=in.documentTemplates;
param.allInOneDocument=true;
param.allInSeparatesDocuments=false;
param.optionalSingleDocumentFormat="pdf";
param.optionalSingleDocumentName="serialReport";
' #txt
Ds0 f27 responseActionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f27 responseMappingAction 'out=in;
out.fileOperationMessage=result.FileOperationMessage;
' #txt
Ds0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writeSerialLettersToManyCorrespondents(String,List&lt;DocumentTemplate&gt;,Boolean,Boolean,String,String)</name>
    </language>
</elementInfo>
' #txt
Ds0 f27 950 244 36 24 20 -2 #rect
Ds0 f27 @|CallSubIcon #fIcon
Ds0 f28 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f28 actionTable 'out=in;
' #txt
Ds0 f28 actionCode 'import ch.ivyteam.ivy.demo.docfactory.reporting.tree.*;
import ch.ivyteam.ivy.demo.docfactory.reporting.HumanCapital;
import ch.ivyteam.ivy.demo.docfactory.reporting.AData;
import ch.ivyteam.ivy.addons.docfactory.DocumentTemplate;
in.aData = new AData();
in.aData.date1 = new Date();
in.aData.number1 = Math.round(Math.random()).intValue();
in.aData.string1="Second Report for company";
in.aData.string2="Test number 2";
in.aTree.info=in.aData.string1;
in.aTree.value=in.aData;

Tree tComp1 = new Tree();
Company comp = new Company();
comp.name = "My Corporation";
comp.address="Ringstrasse 7
CH-8603 Schwerzenbach";
tComp1.value=comp;

Tree tDpt1= new Tree();
Department dpt = new Department();
dpt.name="Marketing";
dpt.location="Schwerzenbach";
tDpt1.value=dpt;

Tree tEmp = new Tree();
Employee emp = new Employee();
emp.name = "Müller";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";
tEmp.value=emp;

Tree tHca1 = new Tree();
HumanCapital hca = new HumanCapital();
hca.name="English language";
hca.level=8;
tHca1.value = hca;

Tree tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
tHca2.value = hca;

Tree tHca3 = new Tree();
hca = new HumanCapital();
hca.name="HR Management";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Richardson";
emp.firstname = "Test";
emp.jobTitle="Web Marketing Specialist";
tEmp.value=emp;

tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=10;
tHca1.value = hca;

tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Marketing and Organisation";
hca.level=9;
tHca2.value = hca;

tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Web Networking/Analyse";
hca.level=8;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);

tDpt1= new Tree();
dpt = new Department();
dpt.name="Software developement";
dpt.location="Bolligen";
tDpt1.value=dpt;

tEmp = new Tree();
emp = new Employee();
emp.name = "Kelly";
emp.firstname = "Test";
emp.jobTitle="Java developer";
tEmp.value = emp;

tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=6;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Joly";
emp.firstname = "Test";
emp.jobTitle="Web developer";
tEmp.value = emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Web technologies (Html 5, JavaScript, css...)";
hca.level=9;
tHca2.value = hca;
tEmp.addAll([tHca1,tHca2]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);
in.aTree.add(tComp1);

tComp1 = new Tree();
comp = new Company();
comp.name = "IvyTeam AG";
comp.address="Alpenstrasse 9
CH-6304 Zug";
tComp1.value=comp;

tDpt1= new Tree();
dpt = new Department();
dpt.name="Research";
dpt.location="Zug 1";
tDpt1.value=dpt;

tEmp = new Tree();
emp = new Employee();
emp.name = "andrea";
emp.firstname = "Test";
emp.jobTitle="Dpt Manager";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=8;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Computer Engineering";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="HR Management";
hca.level=4;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);

tEmp = new Tree();
emp = new Employee();
emp.name = "Johanson";
emp.firstname = "Test";
emp.jobTitle="Computer languages specialist";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=4;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="C++/C#";
hca.level=8;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);

tDpt1= new Tree();
dpt = new Department();
dpt.name="Support";
dpt.location="Zug 2";
tDpt1.value=dpt;
tEmp = new Tree();
emp = new Employee();
emp.name = "Marry";
emp.firstname = "Test";
emp.jobTitle="Hotline Manager";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Java";
hca.level=9;
tHca2.value = hca;
tHca3 = new Tree();
hca = new HumanCapital();
hca.name="Database";
hca.level=7;
tHca3.value = hca;
tEmp.addAll([tHca1,tHca2,tHca3]);
tDpt1.add(tEmp);
tEmp = new Tree();
emp = new Employee();
emp.name = "Richter";
emp.firstname = "Test";
emp.jobTitle="Hotline employee";
tEmp.value=emp;
tHca1 = new Tree();
hca = new HumanCapital();
hca.name="English language";
hca.level=7;
tHca1.value = hca;
tHca2 = new Tree();
hca = new HumanCapital();
hca.name="Computer sciences";
hca.level=9;
tHca2.value = hca;
tEmp.addAll([tHca1,tHca2]);
tDpt1.add(tEmp);
tComp1.add(tDpt1);
in.aTree.add(tComp1);

DocumentTemplate doc = new DocumentTemplate();
doc.setData(in.aData);
doc.setTemplatePath(in.templatePath);
doc.setTreeData(in.aTree);
in.documentTemplates.add(doc);' #txt
Ds0 f28 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create the data in form of a Tree
and put it in a second documentTemplate</name>
        <nameStyle>73
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f28 950 172 36 24 20 -2 #rect
Ds0 f28 @|RichDialogProcessStepIcon #fIcon
Ds0 f29 expr out #txt
Ds0 f29 968 132 968 172 #arcP
Ds0 f30 expr out #txt
Ds0 f30 968 196 968 244 #arcP
Ds0 f31 actionDecl 'ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData out;
' #txt
Ds0 f31 actionTable 'out=in;
' #txt
Ds0 f31 actionCode 'if(!in.fileOperationMessage.files.isEmpty() && in.fileOperationMessage.files.get(0)!=null)
{
	
	panel.desktopHandlerPanel.openFile(in.fileOperationMessage.files.get(0));
}' #txt
Ds0 f31 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f31 950 316 36 24 20 -2 #rect
Ds0 f31 @|RichDialogProcessStepIcon #fIcon
Ds0 f32 expr out #txt
Ds0 f32 968 268 968 316 #arcP
Ds0 f34 type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
Ds0 f34 958 382 20 20 13 0 #rect
Ds0 f34 @|RichDialogProcessEndIcon #fIcon
Ds0 f35 expr out #txt
Ds0 f35 968 340 968 382 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting.DocFactoryReportingData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f4 mainOut f10 tail #connect
Ds0 f10 head f8 mainIn #connect
Ds0 f0 mainOut f17 tail #connect
Ds0 f17 head f15 mainIn #connect
Ds0 f15 mainOut f2 tail #connect
Ds0 f2 head f33 mainIn #connect
Ds0 f33 mainOut f12 tail #connect
Ds0 f12 head f1 mainIn #connect
Ds0 f13 mainOut f16 tail #connect
Ds0 f16 head f14 mainIn #connect
Ds0 f14 mainOut f19 tail #connect
Ds0 f19 head f18 mainIn #connect
Ds0 f8 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f11 tail #connect
Ds0 f11 head f9 mainIn #connect
Ds0 f18 mainOut f21 tail #connect
Ds0 f21 head f20 mainIn #connect
Ds0 f20 mainOut f23 tail #connect
Ds0 f23 head f22 mainIn #connect
Ds0 f24 mainOut f26 tail #connect
Ds0 f26 head f25 mainIn #connect
Ds0 f25 mainOut f29 tail #connect
Ds0 f29 head f28 mainIn #connect
Ds0 f28 mainOut f30 tail #connect
Ds0 f30 head f27 mainIn #connect
Ds0 f27 mainOut f32 tail #connect
Ds0 f32 head f31 mainIn #connect
Ds0 f31 mainOut f35 tail #connect
Ds0 f35 head f34 mainIn #connect
