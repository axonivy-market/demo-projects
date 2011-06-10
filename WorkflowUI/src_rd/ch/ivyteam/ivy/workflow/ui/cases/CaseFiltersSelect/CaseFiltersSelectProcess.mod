[Ivy]
[>Created: Thu Jun 09 14:37:50 CEST 2011]
11AE9CE89D43B950 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseBusinessAndTaskFiltersSelectProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessStep f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogProcessStep f12 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogMethodStart f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStart f18 '' #zField
Cs0 @RichDialogProcessStart f20 '' #zField
Cs0 @RichDialogProcessEnd f21 '' #zField
Cs0 @RichDialogProcessStep f23 '' #zField
Cs0 @Alternative f25 '' #zField
Cs0 @PushWFArc f26 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @Alternative f28 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @RichDialogProcessStep f30 '' #zField
Cs0 @PushWFArc f31 '' #zField
Cs0 @PushWFArc f22 '' #zField
Cs0 @RichDialogProcessStep f33 '' #zField
Cs0 @PushWFArc f34 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @RichDialogProcessStep f92 '' #zField
Cs0 @RichDialogProcessStep f75 '' #zField
Cs0 @Alternative f35 '' #zField
Cs0 @Alternative f90 '' #zField
Cs0 @RichDialogProcessStep f113 '' #zField
Cs0 @PushWFArc f91 '' #zField
Cs0 @PushWFArc f77 '' #zField
Cs0 @PushWFArc f94 '' #zField
Cs0 @PushWFArc f117 '' #zField
Cs0 @PushWFArc f119 '' #zField
Cs0 @RichDialogProcessStart f40 '' #zField
Cs0 @PushWFArc f41 '' #zField
Cs0 @RichDialogProcessStart f38 '' #zField
Cs0 @RichDialogProcessEnd f42 '' #zField
Cs0 @RichDialogProcessStep f69 '' #zField
Cs0 @Alternative f98 '' #zField
Cs0 @RichDialogProcessStep f86 '' #zField
Cs0 @Alternative f44 '' #zField
Cs0 @RichDialogProcessStep f96 '' #zField
Cs0 @PushWFArc f99 '' #zField
Cs0 @PushWFArc f70 '' #zField
Cs0 @PushWFArc f100 '' #zField
Cs0 @PushWFArc f123 '' #zField
Cs0 @PushWFArc f125 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @PushWFArc f47 '' #zField
Cs0 @PushWFArc f46 '' #zField
Cs0 @RichDialogProcessEnd f29 '' #zField
Cs0 @PushWFArc f36 '' #zField
Cs0 @PushWFArc f39 '' #zField
Cs0 @PushWFArc f43 '' #zField
Cs0 @RichDialogProcessStep f19 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @RichDialogProcessStart f49 '' #zField
Cs0 @RichDialogProcessEnd f50 '' #zField
Cs0 @RichDialogFireEvent f52 '' #zField
Cs0 @PushWFArc f51 '' #zField
Cs0 @RichDialogProcessStep f54 '' #zField
Cs0 @PushWFArc f55 '' #zField
Cs0 @PushWFArc f53 '' #zField
Cs0 @RichDialogProcessStart f56 '' #zField
Cs0 @RichDialogFireEvent f57 '' #zField
Cs0 @PushWFArc f58 '' #zField
Cs0 @PushWFArc f59 '' #zField
Cs0 @RichDialogMethodStart f63 '' #zField
Cs0 @RichDialogInitStart f60 '' #zField
Cs0 @PushWFArc f61 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f3 '' #zField
>Proto Cs0 Cs0 CaseBusinessAndTaskFiltersSelectProcess #zField
Cs0 f0 guid 11A10DBA2429029F #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.caseStatePropertyFilter=ivy.wf.createCasePropertyFilter(ch.ivyteam.ivy.workflow.CaseProperty.STATE, ch.ivyteam.logicalexpression.RelationalOperator.EQUAL, ch.ivyteam.ivy.workflow.CaseState.RUNNING.intValue());
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 94 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f1 91 355 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;


// case name
out.caseNameRelationalOperatorsList = [RelationalOperator.LIKE, RelationalOperator.UNEQUAL];


// case display mode to 0 (user''s cases)
out.caseDisplayMode = 0;

// categories relational operators

out.caseProcessCategoriesRelationalOperatorsList = [RelationalOperator.EQUAL, RelationalOperator.UNEQUAL];

// processes relational operators

out.caseProcessesRelationalOperatorsList = [RelationalOperator.EQUAL, RelationalOperator.UNEQUAL];


// types relational operators
out.caseTypesRelationalOperatorsList = [RelationalOperator.EQUAL, RelationalOperator.UNEQUAL];

// sub-types relational operators
out.caseSubTypesRelationalOperatorsList = [RelationalOperator.EQUAL, RelationalOperator.UNEQUAL];


// business main contract type
out.businessMainContactTypeRelationalOperatorsList = [RelationalOperator.LIKE, RelationalOperator.UNEQUAL];


// business correspondent contact id
out.businessCorrespondentContactIdRelationalOperatorsList = [RelationalOperator.LIKE, RelationalOperator.UNEQUAL];


// business object code
out.businessObjectCodeRelationalOperatorsList = [RelationalOperator.LIKE, RelationalOperator.UNEQUAL];


// business creator user
out.businessCreatorUserRelationalOperatorsList = [RelationalOperator.LIKE, RelationalOperator.UNEQUAL];
' #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define relational operators
and index to -1</name>
        <nameStyle>43,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 86 132 36 24 20 -2 #rect
Cs0 f10 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 104 58 104 132 #arcP
Cs0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.workflow.CaseProperty;

import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;

List<IGroup> categoriesIGroup;

ICase elementOfCategoriesICase;



out.caseProcessCategoriesList.clear();


// read process categories and build the list 
categoriesIGroup.clear();


if (in.caseDisplayMode == 0)
{
	categoriesIGroup.addAll(ivy.session.findInvolvedCasesCategories(in.caseStatePropertyFilter, CaseProperty.PROCESS_CATEGORY_CODE, null));
}
else
{
	if (in.caseDisplayMode == 1)
	{
		categoriesIGroup.addAll(ivy.session.findInvolvedCasesByRoleCategories(ivy.session.getSessionUser().getRoles(), in.caseStatePropertyFilter, CaseProperty.PROCESS_CATEGORY_CODE, null));
	}
	else
	{
		if (in.caseDisplayMode == 2)
		{
			categoriesIGroup.addAll(ivy.wf.findCaseCategories(in.caseStatePropertyFilter, CaseProperty.PROCESS_CATEGORY_CODE, null));
		}	
	}	
}



CaseHierarchyTreeNodeValue processCategoryTreeNodeValue;
// add the element "ALL" to list
processCategoryTreeNodeValue  = new CaseHierarchyTreeNodeValue();
processCategoryTreeNodeValue.property = CaseProperty.PROCESS_CATEGORY_CODE;
processCategoryTreeNodeValue.categoryCode = "";
processCategoryTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");

out.caseProcessCategoriesList.add(processCategoryTreeNodeValue);

for (IGroup category: categoriesIGroup)
{
   elementOfCategoriesICase = category.getFirstObjectInGroup() as ICase;
   
   processCategoryTreeNodeValue  = new CaseHierarchyTreeNodeValue();
   processCategoryTreeNodeValue.property = CaseProperty.PROCESS_CATEGORY_CODE;
   processCategoryTreeNodeValue.categoryCode = elementOfCategoriesICase.getProcessCategoryCode();
   processCategoryTreeNodeValue.categoryName = (elementOfCategoriesICase.getProcessCategoryName() is initialized? elementOfCategoriesICase.getProcessCategoryName(): 
																								(elementOfCategoriesICase.getProcessCategoryCode() is initialized? ""+processCategoryTreeNodeValue.categoryCode: ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/uncategorizedCases").toString()));

   out.caseProcessCategoriesList.add(processCategoryTreeNodeValue) ;
}

panel.caseProcessCategoriesComboBox.setSelectedIndex(0);
' #txt
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the list of 
case process categories</name>
        <nameStyle>42,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 462 300 36 24 20 -2 #rect
Cs0 f12 @|RichDialogProcessStepIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 480 324 117 368 #arcP
Cs0 f2 1 480 368 #addKink
Cs0 f2 1 0.21680998180270664 0 0 #arcLabel
Cs0 f14 guid 11A115528E4CAAAC #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f14 method refreshCaseProcessCategories() #txt
Cs0 f14 disableUIEvents false #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refreshCaseProcessCategories()</name>
    </language>
</elementInfo>
' #txt
Cs0 f14 310 78 20 20 13 0 #rect
Cs0 f14 @|RichDialogMethodStartIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 320 98 462 312 #arcP
Cs0 f15 1 320 312 #addKink
Cs0 f15 0 0.7280598730780435 0 0 #arcLabel
Cs0 f16 guid 11A1155519D6068E #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refreshCaseProcessCategories</name>
        <nameStyle>28,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 366 118 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 376 138 462 312 #arcP
Cs0 f17 1 376 312 #addKink
Cs0 f17 0 0.9829157974143559 0 0 #arcLabel
Cs0 f18 guid 11A115DFF492F5A8 #txt
Cs0 f18 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f18 actionTable 'out=in;
' #txt
Cs0 f18 actionCode '

' #txt
Cs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f18 470 38 20 20 13 0 #rect
Cs0 f18 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 guid 11A116107E899DE1 #txt
Cs0 f20 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f20 actionTable 'out=in;
' #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadProcessesForProcessCategory</name>
        <nameStyle>31,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 94 470 20 20 13 0 #rect
Cs0 f20 @|RichDialogProcessStartIcon #fIcon
Cs0 f21 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f21 91 811 26 26 14 0 #rect
Cs0 f21 @|RichDialogProcessEndIcon #fIcon
Cs0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f23 actionTable 'out=in;
' #txt
Cs0 f23 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;

import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseProcessesIGroup;
ICase elementOfCasesProcessICase;
IPropertyFilter propertyFilter;


out.caseProcessCategoriesRelationalOperatorsEnabled = true;


RelationalOperator selectedParentRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedParentCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;



caseProcessesIGroup.clear();

//
propertyFilter = ivy.wf.createCasePropertyFilter(selectedParentCategoryTreeNodeValue.property, selectedParentRelationalOperator, selectedParentCategoryTreeNodeValue.categoryCode);

propertyFilter = propertyFilter.and(in.caseStatePropertyFilter);

if (in.caseDisplayMode == 0)
{
	caseProcessesIGroup.addAll(ivy.session.findInvolvedCasesCategories(propertyFilter, CaseProperty.PROCESS_CODE, null));
}
else
{
	if (in.caseDisplayMode == 1)
	{
		caseProcessesIGroup.addAll(ivy.session.findInvolvedCasesByRoleCategories(ivy.session.getSessionUser().getRoles(), propertyFilter, CaseProperty.PROCESS_CODE, null));
	}
	else
	{
		if (in.caseDisplayMode == 2)
		{
			caseProcessesIGroup.addAll(ivy.wf.findCaseCategories(propertyFilter, CaseProperty.PROCESS_CODE, null));
		}	
	}	
}




out.caseProcessesList = [];


// add the element "ALL" to the list
CaseHierarchyTreeNodeValue processTreeNodeValue;
   processTreeNodeValue = new CaseHierarchyTreeNodeValue();
   processTreeNodeValue.property = CaseProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = "";
   processTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");
out.caseProcessesList.add(processTreeNodeValue); 


// read children of the given category
for (IGroup process: caseProcessesIGroup)
{
   elementOfCasesProcessICase = process.getFirstObjectInGroup() as ICase;

   processTreeNodeValue = new CaseHierarchyTreeNodeValue();
   processTreeNodeValue.property = CaseProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = elementOfCasesProcessICase.getProcessCode();
   processTreeNodeValue.categoryName = elementOfCasesProcessICase.getProcessName();
   
   //
   out.caseProcessesList.add(processTreeNodeValue);   
}' #txt
Cs0 f23 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build list of 
processes</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 86 668 36 24 20 -2 #rect
Cs0 f23 @|RichDialogProcessStepIcon #fIcon
Cs0 f25 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f25 90 522 28 28 14 0 #rect
Cs0 f25 @|AlternativeIcon #fIcon
Cs0 f26 expr out #txt
Cs0 f26 104 490 104 522 #arcP
Cs0 f27 expr in #txt
Cs0 f27 118 536 117 824 #arcP
Cs0 f27 1 312 536 #addKink
Cs0 f27 2 312 824 #addKink
Cs0 f27 1 0.418418207661128 0 0 #arcLabel
Cs0 f28 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f28 90 586 28 28 14 0 #rect
Cs0 f28 @|AlternativeIcon #fIcon
Cs0 f24 expr in #txt
Cs0 f24 outCond '(panel.caseProcessCategoriesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).getCategoryCode() is initialized' #txt
Cs0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f24 104 614 104 668 #arcP
Cs0 f30 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f30 actionTable 'out=in;
' #txt
Cs0 f30 actionCode '// out.caseProcessesListSelectedIndex = 0;
panel.caseProcessesComboBox.selectedIndex = 0;' #txt
Cs0 f30 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f30 86 740 36 24 20 -2 #rect
Cs0 f30 @|RichDialogProcessStepIcon #fIcon
Cs0 f31 expr out #txt
Cs0 f31 104 692 104 740 #arcP
Cs0 f22 expr out #txt
Cs0 f22 104 764 104 811 #arcP
Cs0 f33 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f33 actionTable 'out=in;
' #txt
Cs0 f33 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.CaseProperty;


out.caseProcessCategoriesRelationalOperatorsEnabled = false;
panel.caseProcessCategoryRelationalOperatorComboBox.selectedIndex = 0;

out.caseProcessesList.clear();

CaseHierarchyTreeNodeValue processTreeNodeValue;
   processTreeNodeValue = new CaseHierarchyTreeNodeValue();
   processTreeNodeValue.property = CaseProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = "";
   processTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");

out.caseProcessesList.add(processTreeNodeValue); ' #txt
Cs0 f33 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build list with
only with &quot;ALL&quot;, 
rel. operator to &quot;=&quot;</name>
        <nameStyle>54,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f33 174 628 36 24 20 -2 #rect
Cs0 f33 @|RichDialogProcessStepIcon #fIcon
Cs0 f34 expr in #txt
Cs0 f34 118 600 192 628 #arcP
Cs0 f34 1 192 600 #addKink
Cs0 f34 1 0.2126826663137708 0 0 #arcLabel
Cs0 f32 expr out #txt
Cs0 f32 192 652 122 752 #arcP
Cs0 f32 1 192 752 #addKink
Cs0 f32 0 0.9632379519388304 0 0 #arcLabel
Cs0 f37 expr in #txt
Cs0 f37 outCond 'panel.caseProcessCategoriesComboBox.getSelectedListEntry() != null' #txt
Cs0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f37 104 550 104 586 #arcP
Cs0 f92 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f92 actionTable 'out=in;
' #txt
Cs0 f92 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.CaseProperty;

out.caseProcessesRelationalOperatorsEnabled = false;
panel.caseProcessRelationalOperatorComboBox.selectedIndex = 0;


out.caseTypesList.clear();

CaseHierarchyTreeNodeValue caseTypeTreeNodeValue;
   caseTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = CaseProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = "";
   caseTypeTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");

out.caseTypesList.add(caseTypeTreeNodeValue); ' #txt
Cs0 f92 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f92 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
rel operator to &quot;=&quot;</name>
        <nameStyle>50,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f92 478 636 36 24 20 -2 #rect
Cs0 f92 @|RichDialogProcessStepIcon #fIcon
Cs0 f75 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f75 actionTable 'out=in;
' #txt
Cs0 f75 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;


import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseTypesIGroup;

ICase elementOfCaseTypesICase;

IPropertyFilter propertyFilter;


out.caseProcessesRelationalOperatorsEnabled = true;


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;

propertyFilter = ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);



// read the case process
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;


caseTypesIGroup.clear();
propertyFilter = propertyFilter.and(ivy.wf.createCasePropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
// caseTypesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.TYPE_CODE, null, in.taskStatesEnumSet));


// consider the case state
propertyFilter = propertyFilter.and(in.caseStatePropertyFilter);



if (in.caseDisplayMode == 0)
{
	caseTypesIGroup.addAll(ivy.session.findInvolvedCasesCategories(propertyFilter, CaseProperty.TYPE_CODE, null));
}
else
{
	if (in.caseDisplayMode == 1)
	{
		caseTypesIGroup.addAll(ivy.session.findInvolvedCasesByRoleCategories(ivy.session.getSessionUser().getRoles(), propertyFilter, CaseProperty.TYPE_CODE, null));
	}
	else
	{
		if (in.caseDisplayMode == 2)
		{
			caseTypesIGroup.addAll(ivy.wf.findCaseCategories(propertyFilter, CaseProperty.TYPE_CODE, null));
		}	
	}	
}

 

out.caseTypesList = [];

// and the element "ALL" to the list
   CaseHierarchyTreeNodeValue caseTypeTreeNodeValue;
   caseTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = CaseProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = "";
   caseTypeTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");

   out.caseTypesList.add(caseTypeTreeNodeValue);


// build the result
for(IGroup caseType: caseTypesIGroup)
{
   elementOfCaseTypesICase = caseType.getFirstObjectInGroup() as ICase;
      
   caseTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = CaseProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = elementOfCaseTypesICase.getTypeCode();
   caseTypeTreeNodeValue.categoryName = elementOfCaseTypesICase.getTypeName();

   out.caseTypesList.add(caseTypeTreeNodeValue);

}// end for case types' #txt
Cs0 f75 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f75 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
case types</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f75 406 684 36 24 20 -2 #rect
Cs0 f75 @|RichDialogProcessStepIcon #fIcon
Cs0 f35 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f35 410 522 28 28 14 0 #rect
Cs0 f35 @|AlternativeIcon #fIcon
Cs0 f90 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f90 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f90 410 594 28 28 14 0 #rect
Cs0 f90 @|AlternativeIcon #fIcon
Cs0 f113 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f113 actionTable 'out=in;
' #txt
Cs0 f113 actionCode '// out.caseTypesListSelectedIndex = 0;
panel.caseTypesComboBox.setSelectedIndex(0);
' #txt
Cs0 f113 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f113 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f113 406 748 36 24 20 -2 #rect
Cs0 f113 @|RichDialogProcessStepIcon #fIcon
Cs0 f91 expr in #txt
Cs0 f91 outCond 'panel.caseProcessesComboBox.getSelectedListEntry() != null' #txt
Cs0 f91 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f91 424 550 424 594 #arcP
Cs0 f77 expr in #txt
Cs0 f77 outCond '(panel.caseProcessesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).getCategoryCode() is initialized' #txt
Cs0 f77 424 622 424 684 #arcP
Cs0 f94 expr in #txt
Cs0 f94 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f94 438 608 496 636 #arcP
Cs0 f94 1 496 608 #addKink
Cs0 f94 1 0.0988046638417042 -1 0 #arcLabel
Cs0 f117 expr out #txt
Cs0 f117 424 708 424 748 #arcP
Cs0 f119 expr out #txt
Cs0 f119 496 660 442 760 #arcP
Cs0 f119 1 496 760 #addKink
Cs0 f119 0 0.8245395417348147 0 0 #arcLabel
Cs0 f40 guid 11A1179DE8B1D633 #txt
Cs0 f40 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f40 actionTable 'out=in;
' #txt
Cs0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadTypesForProcess</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f40 414 470 20 20 13 0 #rect
Cs0 f40 @|RichDialogProcessStartIcon #fIcon
Cs0 f41 expr out #txt
Cs0 f41 424 490 424 522 #arcP
Cs0 f38 guid 11A11D9D713F03D8 #txt
Cs0 f38 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f38 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f38 actionTable 'out=in;
' #txt
Cs0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadSubTypesForType</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f38 726 462 20 20 13 0 #rect
Cs0 f38 @|RichDialogProcessStartIcon #fIcon
Cs0 f42 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f42 723 819 26 26 14 0 #rect
Cs0 f42 @|RichDialogProcessEndIcon #fIcon
Cs0 f69 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f69 actionTable 'out=in;
' #txt
Cs0 f69 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseSubTypesIGroup;

ICase elementOfCaseSubTypesICase;

IPropertyFilter propertyFilter;


out.caseTypesRelationalOperatorsEnabled = true;


out.caseSubTypesList = [];



// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
CaseHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as CaseHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createCasePropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createCasePropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));

caseSubTypesIGroup.clear();
// caseSubTypesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.SUB_TYPE_CODE, null, in.taskStatesEnumSet));


if (in.caseDisplayMode == 0)
{
	caseSubTypesIGroup.addAll(ivy.session.findInvolvedCasesCategories(propertyFilter, CaseProperty.SUB_TYPE_CODE, null));
}
else
{
	if (in.caseDisplayMode == 1)
	{
		caseSubTypesIGroup.addAll(ivy.session.findInvolvedCasesByRoleCategories(ivy.session.getSessionUser().getRoles(), propertyFilter, CaseProperty.SUB_TYPE_CODE, null));
	}
	else
	{
		if (in.caseDisplayMode == 2)
		{
			caseSubTypesIGroup.addAll(ivy.wf.findCaseCategories(propertyFilter, CaseProperty.SUB_TYPE_CODE, null));
		}	
	}	
}



// add the element "ALL" to the list
   CaseHierarchyTreeNodeValue caseSubTypeTreeNodeValue;
   caseSubTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = CaseProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = "";
   caseSubTypeTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");
      
   out.caseSubTypesList.add(caseSubTypeTreeNodeValue);


for(IGroup caseSubType: caseSubTypesIGroup)
{
   elementOfCaseSubTypesICase = caseSubType.getFirstObjectInGroup() as ICase;

   caseSubTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = CaseProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = elementOfCaseSubTypesICase.getSubTypeCode();
   caseSubTypeTreeNodeValue.categoryName = elementOfCaseSubTypesICase.getSubTypeName();
      
   out.caseSubTypesList.add(caseSubTypeTreeNodeValue);

}// end for case sub types' #txt
Cs0 f69 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f69 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the list of
case sub types</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f69 718 684 36 24 20 -2 #rect
Cs0 f69 @|RichDialogProcessStepIcon #fIcon
Cs0 f98 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f98 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f98 722 594 28 28 14 0 #rect
Cs0 f98 @|AlternativeIcon #fIcon
Cs0 f86 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f86 actionTable 'out=in;
' #txt
Cs0 f86 actionCode '// out.caseSubTypesListSelectedIndex = 0;
panel.caseSubTypesComboBox.setSelectedIndex(0);' #txt
Cs0 f86 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f86 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f86 718 748 36 24 20 -2 #rect
Cs0 f86 @|RichDialogProcessStepIcon #fIcon
Cs0 f44 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f44 722 514 28 28 14 0 #rect
Cs0 f44 @|AlternativeIcon #fIcon
Cs0 f96 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f96 actionTable 'out=in;
' #txt
Cs0 f96 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.CaseProperty;

out.caseTypesRelationalOperatorsEnabled = false;
panel.caseTypeRelationalOperatorComboBox.selectedIndex = 0;

out.caseSubTypesList.clear();

CaseHierarchyTreeNodeValue caseSubTypeTreeNodeValue;
   caseSubTypeTreeNodeValue = new CaseHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = CaseProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = "";
   caseSubTypeTreeNodeValue.categoryName = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/all");

out.caseSubTypesList.add(caseSubTypeTreeNodeValue); ' #txt
Cs0 f96 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f96 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the list
only with &quot;ALL&quot;
rel. operator to &quot;=&quot;</name>
        <nameStyle>51,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f96 782 636 36 24 20 -2 #rect
Cs0 f96 @|RichDialogProcessStepIcon #fIcon
Cs0 f99 expr in #txt
Cs0 f99 outCond 'panel.caseTypesComboBox.getSelectedListEntry() != null' #txt
Cs0 f99 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f99 736 542 736 594 #arcP
Cs0 f70 expr in #txt
Cs0 f70 outCond '(panel.caseTypesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).getCategoryCode() is initialized' #txt
Cs0 f70 736 622 736 684 #arcP
Cs0 f100 expr in #txt
Cs0 f100 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f100 750 608 800 636 #arcP
Cs0 f100 1 800 608 #addKink
Cs0 f100 0 0.809017480539028 0 0 #arcLabel
Cs0 f123 expr out #txt
Cs0 f123 736 708 736 748 #arcP
Cs0 f125 expr out #txt
Cs0 f125 800 660 754 760 #arcP
Cs0 f125 1 800 760 #addKink
Cs0 f125 0 0.8393649058548079 0 0 #arcLabel
Cs0 f45 expr out #txt
Cs0 f45 736 482 736 514 #arcP
Cs0 f47 expr in #txt
Cs0 f47 750 528 749 832 #arcP
Cs0 f47 1 912 528 #addKink
Cs0 f47 2 912 832 #addKink
Cs0 f47 1 0.38655108355008594 0 0 #arcLabel
Cs0 f46 expr out #txt
Cs0 f46 736 772 736 819 #arcP
Cs0 f29 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f29 411 811 26 26 14 0 #rect
Cs0 f29 @|RichDialogProcessEndIcon #fIcon
Cs0 f36 expr out #txt
Cs0 f36 424 772 424 811 #arcP
Cs0 f39 expr in #txt
Cs0 f39 438 536 437 824 #arcP
Cs0 f39 1 616 536 #addKink
Cs0 f39 2 616 824 #addKink
Cs0 f39 1 0.3729209609071373 0 0 #arcLabel
Cs0 f43 expr out #txt
Cs0 f43 104 156 104 355 #arcP
Cs0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 actionCode 'panel.caseProcessCategoryRelationalOperatorComboBox.setSelectedIndex(0);
panel.caseProcessRelationalOperatorComboBox.setSelectedIndex(0);
panel.caseTypeRelationalOperatorComboBox.setSelectedIndex(0);
panel.caseSubTypeRelationalOperatorComboBox.setSelectedIndex(0);


panel.businessMainContactTypeRelationalOperatorsComboBox.setSelectedIndex(0);

panel.businessCorrespondentContactIdRelationalOperatorsComboBox.setSelectedIndex(0);

panel.businessObjectCodeRelationalOperatorsComboBox.setSelectedIndex(0);
' #txt
Cs0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>rel operator to 0</name>
        <nameStyle>17,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 462 244 36 24 20 -2 #rect
Cs0 f19 @|RichDialogProcessStepIcon #fIcon
Cs0 f13 expr out #txt
Cs0 f13 480 268 480 300 #arcP
Cs0 f49 guid 11A123BC1A0EA372 #txt
Cs0 f49 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f49 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f49 actionTable 'out=in;
' #txt
Cs0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filterDefinitionConfirmed</name>
        <nameStyle>25,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f49 870 46 20 20 13 0 #rect
Cs0 f49 @|RichDialogProcessStartIcon #fIcon
Cs0 f50 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f50 867 355 26 26 14 0 #rect
Cs0 f50 @|RichDialogProcessEndIcon #fIcon
Cs0 f52 actionDecl 'ch.ivyteam.ivy.workflow.ui.data.cases.CaseAvailableFilters aCaseAvailableFilters;
' #txt
Cs0 f52 actionTable 'aCaseAvailableFilters=in.caseAvailableFilters;
' #txt
Cs0 f52 actionCode panel.fireFilterDefinitionConfirmed(aCaseAvailableFilters); #txt
Cs0 f52 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f52 fireEvent filterDefinitionConfirmed(ch.ivyteam.ivy.workflow.ui.data.cases.CaseAvailableFilters) #txt
Cs0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the RD Event 
filterDefinitionConfirmed</name>
        <nameStyle>44,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f52 862 236 36 24 20 -2 #rect
Cs0 f52 @|RichDialogFireEventIcon #fIcon
Cs0 f51 expr out #txt
Cs0 f51 880 260 880 355 #arcP
Cs0 f54 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f54 actionTable 'out=in;
' #txt
Cs0 f54 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.ui.data.cases.CaseAvailableFilters;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.ui.data.cases.CaseCategoryFilter;
import ch.ivyteam.ivy.workflow.ui.data.cases.CaseFilterProperty;



import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> childrenIGroup;
ICase elementOfChildrenICase;


out.caseAvailableFilters = new CaseAvailableFilters();


// case name
if (panel.caseNameTextField.getText().length() > 0)
{
	out.caseAvailableFilters.caseNameFilter.property = CaseProperty.NAME;
	out.caseAvailableFilters.caseNameFilter.relationalOperator = RelationalOperator.LIKE;
	out.caseAvailableFilters.caseNameFilter.value = "%" + panel.caseNameTextField.text + "%";
	
	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.caseNameFilter.property, out.caseAvailableFilters.caseNameFilter.relationalOperator, out.caseAvailableFilters.caseNameFilter.value):
			ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.caseNameFilter.property, out.caseAvailableFilters.caseNameFilter.relationalOperator, out.caseAvailableFilters.caseNameFilter.value));

	out.caseAvailableFilters.caseNameFilterIsDefined = true;

}
else
{
	out.caseAvailableFilters.caseNameFilterIsDefined = false;
}





// business start timestamp
if (panel.businessStartTimestampDatePicker.getValueAsDate() is initialized)
{
	out.caseAvailableFilters.businessStartTimestampFilter.property = CaseProperty.BUSINESS_START_TIMESTAMP;
	out.caseAvailableFilters.businessStartTimestampFilter.relationalOperator = RelationalOperator.EQUAL_OR_LARGER;
	out.caseAvailableFilters.businessStartTimestampFilter.value = panel.businessStartTimestampDatePicker.getValueAsDate();
	
	IPropertyFilter businessStartTimestampPropertyFilter = 
						ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessStartTimestampFilter.property,
																						out.caseAvailableFilters.businessStartTimestampFilter.relationalOperator,
																						out.caseAvailableFilters.businessStartTimestampFilter.value);
	
	
	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized? 
																								out.caseAvailableFilters.propertyFilter.and(businessStartTimestampPropertyFilter):
																								businessStartTimestampPropertyFilter);

	out.caseAvailableFilters.businessStartTimestampFilterIsDefined = true;
}
else
{
		out.caseAvailableFilters.businessStartTimestampFilterIsDefined = false;
}


// business milestone timestamp
if (panel.businessMilestoneTimestampDatePicker.getValueAsDate() is initialized)
{
	out.caseAvailableFilters.businessMilestoneTimestampFilter.property = CaseProperty.BUSINESS_MILESTONE_TIMESTAMP;
	out.caseAvailableFilters.businessMilestoneTimestampFilter.relationalOperator = RelationalOperator.EQUAL_OR_SMALLER;
	out.caseAvailableFilters.businessMilestoneTimestampFilter.value = panel.businessMilestoneTimestampDatePicker.getValueAsDate();
	
	IPropertyFilter businessMilestoneTimestampPropertyFilter = 
						ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessMilestoneTimestampFilter.property,
																						out.caseAvailableFilters.businessMilestoneTimestampFilter.relationalOperator,
																						out.caseAvailableFilters.businessMilestoneTimestampFilter.value);
	
	
	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized? 
																								out.caseAvailableFilters.propertyFilter.and(businessMilestoneTimestampPropertyFilter):
																								businessMilestoneTimestampPropertyFilter);

	out.caseAvailableFilters.businessMilestoneTimestampFilterIsDefined = true;
}
else
{
		out.caseAvailableFilters.businessMilestoneTimestampFilterIsDefined = false;
}



// business creator user
if (panel.businessCreatorUserTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessCreatorUserFilter.property = CaseProperty.BUSINESS_CREATOR_USER;
	out.caseAvailableFilters.businessCreatorUserFilter.relationalOperator = RelationalOperator.LIKE;
	out.caseAvailableFilters.businessCreatorUserFilter.value = "%" + panel.businessCreatorUserTextField.text + "%";
	
	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessCreatorUserFilter.property, out.caseAvailableFilters.businessCreatorUserFilter.relationalOperator, out.caseAvailableFilters.businessCreatorUserFilter.value):
			ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessCreatorUserFilter.property, out.caseAvailableFilters.businessCreatorUserFilter.relationalOperator, out.caseAvailableFilters.businessCreatorUserFilter.value);

	out.caseAvailableFilters.businessCreatorUserFilterIsDefined = true;
}
else
{
	out.caseAvailableFilters.businessCreatorUserFilterIsDefined = false;
}





// read the case process category and build the filter
if (panel.caseProcessCategoriesComboBox.getSelectedListEntry() != null && !"".equals((panel.caseProcessCategoriesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue).getCategoryCode())) 		
{

		// normal case process category
		RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
		CaseHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue;
		
		// build the category filter
		CaseCategoryFilter caseProcessCategoryFilter = new CaseCategoryFilter();
		caseProcessCategoryFilter.category = selectedCaseProcessCategoryTreeNodeValue;
		caseProcessCategoryFilter.relationalOperator = selectedCaseProcessCategoryRelationalOperator;
		
		
		out.caseAvailableFilters.caseProcessCategoriesFilterIsDefined = true;
		out.caseAvailableFilters.caseProcessCategoriesFilter = caseProcessCategoryFilter;
	
	
		out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode)):
			ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode));		
}
else
{	
	// uncategorized tasks
	if (panel.caseProcessCategoriesComboBox.getSelectedListEntry() != null &&
			(panel.caseProcessCategoriesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue).categoryName.equals(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/uncategorizedCases").toString()))
	{
		RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
		CaseHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue;
		selectedCaseProcessCategoryTreeNodeValue.categoryCode = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/uncategorizedCases").toString();
		
		// build the category filter
		CaseCategoryFilter caseProcessCategoryFilter = new CaseCategoryFilter();
		caseProcessCategoryFilter.category = selectedCaseProcessCategoryTreeNodeValue;

		caseProcessCategoryFilter.relationalOperator = selectedCaseProcessCategoryRelationalOperator;
		
		
		out.caseAvailableFilters.caseProcessCategoriesFilterIsDefined = true;
		out.caseAvailableFilters.caseProcessCategoriesFilter = caseProcessCategoryFilter;
		
		out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, ch.ivyteam.logicalexpression.RelationalOperator.IS, null)):
			ivy.wf.createCasePropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, null));
		
	}
	else
	{
		out.caseAvailableFilters.caseProcessCategoriesFilterIsDefined = false;	
	}
}





// read the case process for given category and build the filter
if (panel.caseProcessesComboBox.getSelectedListEntry() != null && !"".equals((panel.caseProcessesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue).getCategoryCode()))
{
	RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	CaseHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue;
	
	// build the category filter
	CaseCategoryFilter caseProcessesFilter = new CaseCategoryFilter();
	caseProcessesFilter.category = selectedCaseProcessTreeNodeValue;
	caseProcessesFilter.relationalOperator = selectedCaseProcessRelationalOperator;

	out.caseAvailableFilters.caseProcessesFilter = caseProcessesFilter;
	out.caseAvailableFilters.caseProcessesFilterIsDefined = true;
	
	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized?
		out.caseAvailableFilters.propertyFilter.and(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode):
		ivy.wf.createCasePropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
}
else
{
	out.caseAvailableFilters.caseProcessesFilterIsDefined = false;
}




// read the case type for given process and build the filter
if (panel.caseTypesComboBox.getSelectedListEntry() != null && !"".equals((panel.caseTypesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue).getCategoryCode()))
{
	RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	CaseHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue;
	
	// build the category filter	
	CaseCategoryFilter caseTypesFilter = new CaseCategoryFilter();
	caseTypesFilter.category = selectedCaseTypeTreeNodeValue;
	caseTypesFilter.relationalOperator = selectedCaseTypeRelationalOperator;
	
	out.caseAvailableFilters.caseTypesFilterIsDefined = true;
	out.caseAvailableFilters.caseTypesFilter = caseTypesFilter;
	
	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized?
		out.caseAvailableFilters.propertyFilter.and(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode):
		ivy.wf.createCasePropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
}
else
{
	out.caseAvailableFilters.caseTypesFilterIsDefined = false;
}



// read the case sub type for given case type and build the filter and build the filter
if (panel.caseSubTypesComboBox.getSelectedListEntry() != null && !"".equals((panel.caseSubTypesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue).getCategoryCode()))
{
	RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	CaseHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.getSelectedListEntry() as CaseHierarchyTreeNodeValue;
	
	// build the category filter
	CaseCategoryFilter caseSubTypesFilter = new CaseCategoryFilter();
	caseSubTypesFilter.category = selectedCaseSubTypeTreeNodeValue;
	caseSubTypesFilter.relationalOperator = selectedCaseSubTypeRelationalOperator;

  out.caseAvailableFilters.caseSubTypesFilterIsDefined = true;
  out.caseAvailableFilters.caseSubTypesFilter = caseSubTypesFilter;

	out.caseAvailableFilters.propertyFilter = (out.#caseAvailableFilters.#propertyFilter is initialized?
		out.caseAvailableFilters.propertyFilter.and(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode):
		ivy.wf.createCasePropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));
}
else
{
	  out.caseAvailableFilters.caseSubTypesFilterIsDefined = false;
}



// business main contact type
if (panel.businessMainContactTypeTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessMainContactTypeFilter.property = CaseProperty.BUSINESS_MAIN_CONTACT_TYPE;
	out.caseAvailableFilters.businessMainContactTypeFilter.relationalOperator = panel.businessMainContactTypeRelationalOperatorsComboBox.getSelectedListEntry() as RelationalOperator;
	out.caseAvailableFilters.businessMainContactTypeFilter.value = out.caseAvailableFilters.businessMainContactTypeFilter.relationalOperator.compareTo(RelationalOperator.LIKE) == 0?
																																					"%" + panel.businessMainContactTypeTextField.text + "%":
																																					panel.businessMainContactTypeTextField.text;
	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
		out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessMainContactTypeFilter.property, out.caseAvailableFilters.businessMainContactTypeFilter.relationalOperator, out.caseAvailableFilters.businessMainContactTypeFilter.value):
		ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessMainContactTypeFilter.property, out.caseAvailableFilters.businessMainContactTypeFilter.relationalOperator, out.caseAvailableFilters.businessMainContactTypeFilter.value);
	
	out.caseAvailableFilters.businessMainContactTypeFilterIsDefined = true;
}
else
{
	out.caseAvailableFilters.businessMainContactTypeFilterIsDefined = false;
}



// business main contact id
if (panel.businessMainContactIdTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessMainContactIdFilter.property = CaseProperty.BUSINESS_MAIN_CONTACT_ID;
	out.caseAvailableFilters.businessMainContactIdFilter.relationalOperator = RelationalOperator.EQUAL_IGNORE_CASE;
	out.caseAvailableFilters.businessMainContactIdFilter.value = panel.businessMainContactIdTextField.text;
	
	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessMainContactIdFilter.property, out.caseAvailableFilters.businessMainContactIdFilter.relationalOperator, out.caseAvailableFilters.businessMainContactIdFilter.value):
			ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessMainContactIdFilter.property, out.caseAvailableFilters.businessMainContactIdFilter.relationalOperator, out.caseAvailableFilters.businessMainContactIdFilter.value);
	
	out.caseAvailableFilters.businessMainContactIdFilterIsDefined = true;
}
else
{
	out.caseAvailableFilters.businessMainContactIdFilterIsDefined = false;	
}



// business main contact name
if (panel.businessMainContactNameTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessMainContactNameFilter.property = CaseProperty.BUSINESS_MAIN_CONTACT_NAME;
	out.caseAvailableFilters.businessMainContactNameFilter.relationalOperator = RelationalOperator.LIKE;
	out.caseAvailableFilters.businessMainContactNameFilter.value = "%" + panel.businessMainContactNameTextField.text + "%";
	
	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
			out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessMainContactNameFilter.property, out.caseAvailableFilters.businessMainContactNameFilter.relationalOperator, out.caseAvailableFilters.businessMainContactNameFilter.value):
			ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessMainContactNameFilter.property, out.caseAvailableFilters.businessMainContactNameFilter.relationalOperator, out.caseAvailableFilters.businessMainContactNameFilter.value);
	
	out.caseAvailableFilters.businessMainContactNameFilterIsDefined = true;
}
else
{
	out.caseAvailableFilters.businessMainContactNameFilterIsDefined = false;	
}



// business correspondent contact id
if (panel.businessCorrespondentContactIdTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessCorrespondentContactIdFilter.property = CaseProperty.BUSINESS_CORRESPONDENT_ID;
	out.caseAvailableFilters.businessCorrespondentContactIdFilter.relationalOperator = panel.businessCorrespondentContactIdRelationalOperatorsComboBox.getSelectedListEntry() as RelationalOperator;
	out.caseAvailableFilters.businessCorrespondentContactIdFilter.value = out.caseAvailableFilters.businessCorrespondentContactIdFilter.relationalOperator.compareTo(RelationalOperator.LIKE) == 0?
																																				"%" + panel.businessCorrespondentContactIdTextField.text + "%":
																																				panel.businessCorrespondentContactIdTextField.text;

	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
		out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessCorrespondentContactIdFilter.property, out.caseAvailableFilters.businessCorrespondentContactIdFilter.relationalOperator, out.caseAvailableFilters.businessCorrespondentContactIdFilter.value):
		ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessCorrespondentContactIdFilter.property, out.caseAvailableFilters.businessCorrespondentContactIdFilter.relationalOperator, out.caseAvailableFilters.businessCorrespondentContactIdFilter.value);

	out.caseAvailableFilters.businessCorrespondentContactIdFilterIsDefined = true;		
}
else
{
	out.caseAvailableFilters.businessCorrespondentContactIdFilterIsDefined = false;	
}



// business object code
if (panel.businessObjectCodeTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessObjectCodeFilter.property = CaseProperty.BUSINESS_OBJECT_CODE;
	out.caseAvailableFilters.businessObjectCodeFilter.relationalOperator = panel.businessObjectCodeRelationalOperatorsComboBox.getSelectedListEntry() as RelationalOperator;
	out.caseAvailableFilters.businessObjectCodeFilter.value = out.caseAvailableFilters.businessObjectCodeFilter.relationalOperator.compareTo(RelationalOperator.LIKE) == 0?
																																				"%" + panel.businessObjectCodeTextField.text + "%":
																																				panel.businessObjectCodeTextField.text;

	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
		out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessObjectCodeFilter.property, out.caseAvailableFilters.businessObjectCodeFilter.relationalOperator, out.caseAvailableFilters.businessObjectCodeFilter.value):
		ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessObjectCodeFilter.property, out.caseAvailableFilters.businessObjectCodeFilter.relationalOperator, out.caseAvailableFilters.businessObjectCodeFilter.value);

	out.caseAvailableFilters.businessObjectCodeFilterIsDefined = true;		
}
else
{
	out.caseAvailableFilters.businessObjectCodeFilterIsDefined = false;	
}



// business object name
if (panel.businessObjectNameTextField.getText().length() > 0)
{
	out.caseAvailableFilters.businessObjectNameFilter.property = CaseProperty.BUSINESS_OBJECT_NAME;
	out.caseAvailableFilters.businessObjectNameFilter.relationalOperator = RelationalOperator.LIKE;
	out.caseAvailableFilters.businessObjectNameFilter.value = "%" + panel.businessObjectNameTextField.text + "%";

	out.caseAvailableFilters.propertyFilter = out.#caseAvailableFilters.#propertyFilter is initialized? 
		out.caseAvailableFilters.propertyFilter.and(out.caseAvailableFilters.businessObjectNameFilter.property, out.caseAvailableFilters.businessObjectNameFilter.relationalOperator, out.caseAvailableFilters.businessObjectNameFilter.value):
		ivy.wf.createCasePropertyFilter(out.caseAvailableFilters.businessObjectNameFilter.property, out.caseAvailableFilters.businessObjectNameFilter.relationalOperator, out.caseAvailableFilters.businessObjectNameFilter.value);

	out.caseAvailableFilters.businessObjectNameFilterIsDefined = true;		
}
else
{
	out.caseAvailableFilters.businessObjectNameFilterIsDefined = false;	
}




// add the case display mode
out.caseAvailableFilters.caseDisplayMode = in.caseDisplayMode;
' #txt
Cs0 f54 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f54 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>buld the filters</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f54 862 140 36 24 20 -2 #rect
Cs0 f54 @|RichDialogProcessStepIcon #fIcon
Cs0 f55 expr out #txt
Cs0 f55 880 66 880 140 #arcP
Cs0 f53 expr out #txt
Cs0 f53 880 164 880 236 #arcP
Cs0 f56 guid 11A125EB50662D93 #txt
Cs0 f56 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f56 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData out;
' #txt
Cs0 f56 actionTable 'out=in;
' #txt
Cs0 f56 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filterDefinitionCanceled</name>
        <nameStyle>24,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f56 1070 46 20 20 13 0 #rect
Cs0 f56 @|RichDialogProcessStartIcon #fIcon
Cs0 f57 actionCode panel.fireFilterDefinitionCanceled(); #txt
Cs0 f57 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f57 fireEvent filterDefinitionCanceled() #txt
Cs0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the RD Event
filterDefinitionCanceled</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f57 1062 236 36 24 20 -2 #rect
Cs0 f57 @|RichDialogFireEventIcon #fIcon
Cs0 f58 expr out #txt
Cs0 f58 1080 66 1080 236 #arcP
Cs0 f59 expr out #txt
Cs0 f59 1080 260 893 368 #arcP
Cs0 f59 1 1080 368 #addKink
Cs0 f59 1 0.1440078808098262 0 0 #arcLabel
Cs0 f63 guid 11B02E1276AC08EA #txt
Cs0 f63 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f63 method setCaseDisplayMode(Number) #txt
Cs0 f63 disableUIEvents false #txt
Cs0 f63 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number aCaseDisplayMode> param = methodEvent.getInputArguments();
' #txt
Cs0 f63 inParameterMapAction 'out.caseDisplayMode=param.aCaseDisplayMode;
' #txt
Cs0 f63 outParameterDecl '<> result;
' #txt
Cs0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCaseDisplayMode(Number)</name>
        <nameStyle>26,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f63 262 38 20 20 13 0 #rect
Cs0 f63 @|RichDialogMethodStartIcon #fIcon
Cs0 f60 guid 11B02EB06B33C33F #txt
Cs0 f60 type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
Cs0 f60 method start(ch.ivyteam.ivy.workflow.IPropertyFilter) #txt
Cs0 f60 disableUIEvents true #txt
Cs0 f60 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IPropertyFilter aCaseStateFilter> param = methodEvent.getInputArguments();
' #txt
Cs0 f60 inParameterMapAction 'out.caseStatePropertyFilter=param.aCaseStateFilter;
' #txt
Cs0 f60 outParameterDecl '<> result;
' #txt
Cs0 f60 embeddedRdInitializations '* ' #txt
Cs0 f60 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IPropertyFilter)</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f60 150 38 20 20 13 0 #rect
Cs0 f60 @|RichDialogInitStartIcon #fIcon
Cs0 f61 expr out #txt
Cs0 f61 160 58 122 144 #arcP
Cs0 f61 1 160 144 #addKink
Cs0 f61 0 0.78597238617658 0 0 #arcLabel
Cs0 f8 expr out #txt
Cs0 f8 272 58 117 368 #arcP
Cs0 f8 1 272 368 #addKink
Cs0 f8 0 0.7549545657715543 0 0 #arcLabel
Cs0 f3 expr out #txt
Cs0 f3 480 58 480 244 #arcP
Cs0 f3 0 0.9405939487439562 0 0 #arcLabel
>Proto Cs0 .rdData2UIAction 'panel.businessCorrespondentContactIdRelationalOperatorsComboBox.listData=in.businessCorrespondentContactIdRelationalOperatorsList;
panel.businessMainContactTypeRelationalOperatorsComboBox.listData=in.businessMainContactTypeRelationalOperatorsList;
panel.businessObjectCodeRelationalOperatorsComboBox.listData=in.businessObjectCodeRelationalOperatorsList;
panel.caseProcessCategoriesComboBox.listData=in.caseProcessCategoriesList;
panel.caseProcessCategoryRelationalOperatorComboBox.enabled=in.caseProcessCategoriesRelationalOperatorsEnabled;
panel.caseProcessCategoryRelationalOperatorComboBox.listData=in.caseProcessCategoriesRelationalOperatorsList;
panel.caseProcessesComboBox.listData=in.caseProcessesList;
panel.caseProcessRelationalOperatorComboBox.enabled=in.caseProcessesRelationalOperatorsEnabled;
panel.caseProcessRelationalOperatorComboBox.listData=in.caseProcessesRelationalOperatorsList;
panel.caseSubTypeRelationalOperatorComboBox.enabled=in.caseSubTypesRelationalOperatorsEnabled;
panel.caseSubTypeRelationalOperatorComboBox.listData=in.caseSubTypesRelationalOperatorsList;
panel.caseSubTypesComboBox.listData=in.caseSubTypesList;
panel.caseTypeRelationalOperatorComboBox.enabled=in.caseTypesRelationalOperatorsEnabled;
panel.caseTypeRelationalOperatorComboBox.listData=in.caseTypesRelationalOperatorsList;
panel.caseTypesComboBox.listData=in.caseTypesList;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
Cs0 f12 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f14 mainOut f15 tail #connect
Cs0 f15 head f12 mainIn #connect
Cs0 f16 mainOut f17 tail #connect
Cs0 f17 head f12 mainIn #connect
Cs0 f20 mainOut f26 tail #connect
Cs0 f26 head f25 in #connect
Cs0 f27 head f21 mainIn #connect
Cs0 f28 out f24 tail #connect
Cs0 f24 head f23 mainIn #connect
Cs0 f23 mainOut f31 tail #connect
Cs0 f31 head f30 mainIn #connect
Cs0 f30 mainOut f22 tail #connect
Cs0 f22 head f21 mainIn #connect
Cs0 f28 out f34 tail #connect
Cs0 f34 head f33 mainIn #connect
Cs0 f33 mainOut f32 tail #connect
Cs0 f32 head f30 mainIn #connect
Cs0 f25 out f37 tail #connect
Cs0 f37 head f28 in #connect
Cs0 f25 out f27 tail #connect
Cs0 f35 out f91 tail #connect
Cs0 f91 head f90 in #connect
Cs0 f90 out f77 tail #connect
Cs0 f77 head f75 mainIn #connect
Cs0 f90 out f94 tail #connect
Cs0 f94 head f92 mainIn #connect
Cs0 f75 mainOut f117 tail #connect
Cs0 f117 head f113 mainIn #connect
Cs0 f92 mainOut f119 tail #connect
Cs0 f119 head f113 mainIn #connect
Cs0 f40 mainOut f41 tail #connect
Cs0 f41 head f35 in #connect
Cs0 f44 out f99 tail #connect
Cs0 f99 head f98 in #connect
Cs0 f98 out f70 tail #connect
Cs0 f70 head f69 mainIn #connect
Cs0 f98 out f100 tail #connect
Cs0 f100 head f96 mainIn #connect
Cs0 f69 mainOut f123 tail #connect
Cs0 f123 head f86 mainIn #connect
Cs0 f96 mainOut f125 tail #connect
Cs0 f125 head f86 mainIn #connect
Cs0 f38 mainOut f45 tail #connect
Cs0 f45 head f44 in #connect
Cs0 f44 out f47 tail #connect
Cs0 f47 head f42 mainIn #connect
Cs0 f86 mainOut f46 tail #connect
Cs0 f46 head f42 mainIn #connect
Cs0 f113 mainOut f36 tail #connect
Cs0 f36 head f29 mainIn #connect
Cs0 f35 out f39 tail #connect
Cs0 f39 head f29 mainIn #connect
Cs0 f10 mainOut f43 tail #connect
Cs0 f43 head f1 mainIn #connect
Cs0 f19 mainOut f13 tail #connect
Cs0 f13 head f12 mainIn #connect
Cs0 f52 mainOut f51 tail #connect
Cs0 f51 head f50 mainIn #connect
Cs0 f49 mainOut f55 tail #connect
Cs0 f55 head f54 mainIn #connect
Cs0 f54 mainOut f53 tail #connect
Cs0 f53 head f52 mainIn #connect
Cs0 f56 mainOut f58 tail #connect
Cs0 f58 head f57 mainIn #connect
Cs0 f57 mainOut f59 tail #connect
Cs0 f59 head f50 mainIn #connect
Cs0 f60 mainOut f61 tail #connect
Cs0 f61 head f10 mainIn #connect
Cs0 f63 mainOut f8 tail #connect
Cs0 f8 head f1 mainIn #connect
Cs0 f18 mainOut f3 tail #connect
Cs0 f3 head f19 mainIn #connect
