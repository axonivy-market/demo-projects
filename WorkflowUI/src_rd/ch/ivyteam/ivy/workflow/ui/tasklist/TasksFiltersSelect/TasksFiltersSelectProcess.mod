[Ivy]
[>Created: Tue Dec 16 11:15:50 CET 2008]
117E5609EB0214E7 3.10 #module
>Proto >Proto Collection #zClass
Ts0 TasksFiltersSelectProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 f1 guid 117E57D2D2EBB8DD #txt
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f1 method start() #txt
Ts0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f1 inActionCode 'out.taskStatesEnumSet = java.util.EnumSet.of(ch.ivyteam.ivy.workflow.TaskState.SUSPENDED, ch.ivyteam.ivy.workflow.TaskState.PARKED);' #txt
Ts0 f1 outParameterDecl '<> result;
' #txt
Ts0 f1 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/tasksFilters48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksFiltersHeaderTitle\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksFiltersHeaderText\\\")%>\";\n"/initScript ""}}' #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 94 46 20 20 13 0 #rect
Ts0 f1 @|RichDialogInitStartIcon #fIcon
Ts0 @RichDialogProcessEnd f2 '' #zField
Ts0 f2 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f2 91 259 26 26 14 0 #rect
Ts0 f2 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f4 '' #zField
Ts0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;


//
// categories relational operators
//
RelationalOperator relOpCategory1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOpCategory2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.caseProcessCategoriesRelationalOperatorsList = [relOpCategory1, relOpCategory2];



//
// processes relational operators
//
RelationalOperator relOpProcess1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOpProcess2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.caseProcessesRelationalOperatorsList = [relOpProcess1, relOpProcess2];


//
// types relational operators
//
RelationalOperator relOpType1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOpType2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.caseTypesRelationalOperatorsList = [relOpType1, relOpType2];



//
// sub-types relational operators
//
RelationalOperator relOpSubType1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOpSubType2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.caseSubTypesRelationalOperatorsList = [relOpSubType1, relOpSubType2];



//
// business datetime start relational operators
// = <> < <= > >=
RelationalOperator relOpBusinessDateTimeStart1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOprelOpBusinessDateTimeStart2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;
RelationalOperator relOprelOpBusinessDateTimeStart3 = ch.ivyteam.logicalexpression.RelationalOperator.SMALLER;
RelationalOperator relOprelOpBusinessDateTimeStart4 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL_OR_SMALLER;
RelationalOperator relOprelOpBusinessDateTimeStart5 = ch.ivyteam.logicalexpression.RelationalOperator.LARGER;
RelationalOperator relOprelOpBusinessDateTimeStart6 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL_OR_LARGER;

out.businessDateTimeStartsRelationalOperatorsList = [relOpBusinessDateTimeStart1, relOprelOpBusinessDateTimeStart2, relOprelOpBusinessDateTimeStart3, relOprelOpBusinessDateTimeStart4, relOprelOpBusinessDateTimeStart5, relOprelOpBusinessDateTimeStart6];




//
// business main contact relational operators
// 
RelationalOperator relOpBusinessMainContact1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOprelOpBusinessMainContact2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.businessMainContactsRelationalOperatorsList = [relOpBusinessMainContact1, relOprelOpBusinessMainContact2];



//
// task name relational operators
//
RelationalOperator relOpTaskName1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOprelOpTaskName2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.taskNamesRelationalOperatorsList = [relOpTaskName1, relOprelOpTaskName2];



//
// task kind relational operators
//
RelationalOperator relOpTaskKind1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOprelOpTaskKind2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.taskKindsRelationalOperatorsList = [relOpTaskKind1, relOprelOpTaskKind2];



// 
// business creator user relational operators
//
RelationalOperator relOpBusinessCreatorUser1 = ch.ivyteam.logicalexpression.RelationalOperator.EQUAL;
RelationalOperator relOprelOpBusinessCreatorUser2 = ch.ivyteam.logicalexpression.RelationalOperator.NOT_LIKE;

out.businessCreatorUsersRelationalOperatorsList = [relOpBusinessCreatorUser1, relOprelOpBusinessCreatorUser2];' #txt
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init the data
RelationalOperators</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 86 108 36 24 20 -2 #rect
Ts0 f4 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f6 '' #zField
Ts0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;

List<IGroup> categoriesIGroup;

ITask elementOfCategoriesITask;



out.caseProcessCategoriesList = [];


// read process categories and build the list 
categoriesIGroup.clear();

// set task states property filter for task list
/*
IPropertyFilter taskStatesPropertyFilter = ivy.wf.createTaskPropertyFilter(ch.ivyteam.ivy.workflow.TaskProperty.STATE, ch.ivyteam.logicalexpression.RelationalOperator.EQUAL, ch.ivyteam.ivy.workflow.TaskState.SUSPENDED.intValue()).or(
																	ch.ivyteam.ivy.workflow.TaskProperty.STATE, ch.ivyteam.logicalexpression.RelationalOperator.EQUAL, ch.ivyteam.ivy.workflow.TaskState.PARKED.intValue());
																	
categoriesIGroup.addAll(ivy.session.findWorkTaskCategories(taskStatesPropertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CATEGORY_CODE, null, in.taskStatesEnumSet));
*/

categoriesIGroup.addAll(ivy.session.findWorkTaskCategories(null, ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CATEGORY_CODE, null, in.taskStatesEnumSet));


TaskHierarchyTreeNodeValue processCategoryTreeNodeValue;
// add the element "ALL" to list
processCategoryTreeNodeValue  = new TaskHierarchyTreeNodeValue();
processCategoryTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CATEGORY_CODE;
processCategoryTreeNodeValue.categoryCode = null;
processCategoryTreeNodeValue.categoryName = "ALL";

out.caseProcessCategoriesList.add(processCategoryTreeNodeValue);

for (IGroup category: categoriesIGroup)
{
   elementOfCategoriesITask = category.getFirstObjectInGroup() as ITask;
   
   processCategoryTreeNodeValue  = new TaskHierarchyTreeNodeValue();
   processCategoryTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CATEGORY_CODE;
   processCategoryTreeNodeValue.categoryCode = elementOfCategoriesITask.getProcessCategoryCode();
   processCategoryTreeNodeValue.categoryName = elementOfCategoriesITask.getProcessCategoryName();

   out.caseProcessCategoriesList.add(processCategoryTreeNodeValue) ;
}


if (!out.caseProcessCategoriesList.isEmpty())
{
	out.caseProcessCategoriesListSelectedIndex = 0;
}


' #txt
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of 
case process categories</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 86 180 36 24 20 -2 #rect
Ts0 f6 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStart f0 '' #zField
Ts0 f0 guid 117F9199D6E9CDD7 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f0 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f0 actionTable 'out=in;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadProcessesForProcessCategory</name>
        <nameStyle>31,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 46 358 20 20 13 0 #rect
Ts0 f0 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f8 '' #zField
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f8 43 883 26 26 14 0 #rect
Ts0 f8 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f10 '' #zField
Ts0 f10 guid 117F91A8E00EE211 #txt
Ts0 f10 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadTypesForProcess</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 246 398 20 20 13 0 #rect
Ts0 f10 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f11 '' #zField
Ts0 f11 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f11 243 883 26 26 14 0 #rect
Ts0 f11 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 f13 guid 117F91B044570539 #txt
Ts0 f13 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadSubTypesForType</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 446 438 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f14 '' #zField
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f14 443 883 26 26 14 0 #rect
Ts0 f14 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f16 '' #zField
Ts0 f16 guid 117F91CBBF8BC186 #txt
Ts0 f16 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f16 actionTable 'out=in;
' #txt
Ts0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadBusinessDateTimeStartsForSubType</name>
        <nameStyle>36,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f16 662 478 20 20 13 0 #rect
Ts0 f16 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f17 '' #zField
Ts0 f17 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f17 659 883 26 26 14 0 #rect
Ts0 f17 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f19 '' #zField
Ts0 f19 guid 117F91F30DE25451 #txt
Ts0 f19 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f19 actionTable 'out=in;
' #txt
Ts0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadBusinessMainContactsForBusinessDateTimeStart</name>
        <nameStyle>48,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f19 862 534 20 20 13 0 #rect
Ts0 f19 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f20 '' #zField
Ts0 f20 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f20 859 891 26 26 14 0 #rect
Ts0 f20 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f22 '' #zField
Ts0 f22 guid 117F9206157B6C8D #txt
Ts0 f22 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f22 actionTable 'out=in;
' #txt
Ts0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadTasksNameForBusinessMainContact</name>
        <nameStyle>35,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f22 1078 566 20 20 13 0 #rect
Ts0 f22 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f23 '' #zField
Ts0 f23 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f23 1075 883 26 26 14 0 #rect
Ts0 f23 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f25 '' #zField
Ts0 f25 guid 117F921CA43E8521 #txt
Ts0 f25 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f25 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f25 actionTable 'out=in;
' #txt
Ts0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadTaskKindsForTaskName</name>
        <nameStyle>24,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f25 1270 590 20 20 13 0 #rect
Ts0 f25 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f26 '' #zField
Ts0 f26 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f26 1267 891 26 26 14 0 #rect
Ts0 f26 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f28 '' #zField
Ts0 f28 guid 117F9229454FEF57 #txt
Ts0 f28 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f28 actionTable 'out=in;
' #txt
Ts0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadBusinessCreatorUsersForTaskKind</name>
        <nameStyle>35,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f28 1478 606 20 20 13 0 #rect
Ts0 f28 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f29 '' #zField
Ts0 f29 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f29 1475 891 26 26 14 0 #rect
Ts0 f29 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f33 '' #zField
Ts0 f33 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f33 actionTable 'out=in;
' #txt
Ts0 f33 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseProcessesIGroup;
ITask elementOfCasesProcessITask;
IPropertyFilter propertyFilter;


out.caseProcessCategoriesRelationalOperatorsEnabled = true;


RelationalOperator selectedParentRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedParentCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;

caseProcessesIGroup.clear();

//
propertyFilter = ivy.wf.createTaskPropertyFilter(selectedParentCategoryTreeNodeValue.property, selectedParentRelationalOperator, selectedParentCategoryTreeNodeValue.categoryCode);
caseProcessesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CODE, null, in.taskStatesEnumSet));
out.caseProcessesList = [];


// add the element "ALL" to the list
TaskHierarchyTreeNodeValue processTreeNodeValue;
   processTreeNodeValue = new TaskHierarchyTreeNodeValue();
   processTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = null;
   processTreeNodeValue.categoryName = "ALL";
out.caseProcessesList.add(processTreeNodeValue); 


// read children of the given category
for (IGroup process: caseProcessesIGroup)
{
   elementOfCasesProcessITask = process.getFirstObjectInGroup() as ITask;

   processTreeNodeValue = new TaskHierarchyTreeNodeValue();
   processTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = elementOfCasesProcessITask.getProcessCode();
   processTreeNodeValue.categoryName = elementOfCasesProcessITask.getProcessName();
   
   //
   out.caseProcessesList.add(processTreeNodeValue);   
}' #txt
Ts0 f33 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build list of
case processes</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f33 38 628 36 24 20 -2 #rect
Ts0 f33 @|RichDialogProcessStepIcon #fIcon
Ts0 @Alternative f35 '' #zField
Ts0 f35 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f35 242 458 28 28 14 0 #rect
Ts0 f35 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f36 '' #zField
Ts0 f36 expr out #txt
Ts0 f36 256 418 256 458 #arcP
Ts0 @RichDialogProcessEnd f37 '' #zField
Ts0 f37 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f37 299 459 26 26 14 0 #rect
Ts0 f37 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f38 '' #zField
Ts0 f38 expr in #txt
Ts0 f38 270 472 299 472 #arcP
Ts0 f38 0 0.849755714505224 0 0 #arcLabel
Ts0 @RichDialogProcessEnd f43 '' #zField
Ts0 f43 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f43 499 491 26 26 14 0 #rect
Ts0 f43 @|RichDialogProcessEndIcon #fIcon
Ts0 @Alternative f44 '' #zField
Ts0 f44 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f44 442 490 28 28 14 0 #rect
Ts0 f44 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f45 '' #zField
Ts0 f45 expr out #txt
Ts0 f45 456 458 456 490 #arcP
Ts0 @PushWFArc f46 '' #zField
Ts0 f46 expr in #txt
Ts0 f46 470 504 499 504 #arcP
Ts0 f46 0 0.052059424455554566 0 0 #arcLabel
Ts0 @RichDialogProcessEnd f47 '' #zField
Ts0 f47 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f47 723 531 26 26 14 0 #rect
Ts0 f47 @|RichDialogProcessEndIcon #fIcon
Ts0 @Alternative f48 '' #zField
Ts0 f48 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f48 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f48 658 530 28 28 14 0 #rect
Ts0 f48 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f49 '' #zField
Ts0 f49 expr out #txt
Ts0 f49 672 498 672 530 #arcP
Ts0 @PushWFArc f50 '' #zField
Ts0 f50 expr in #txt
Ts0 f50 686 544 723 544 #arcP
Ts0 f50 0 0.944170682158121 0 0 #arcLabel
Ts0 @Alternative f51 '' #zField
Ts0 f51 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f51 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f51 858 578 28 28 14 0 #rect
Ts0 f51 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f52 '' #zField
Ts0 f52 expr out #txt
Ts0 f52 872 554 872 578 #arcP
Ts0 @Alternative f53 '' #zField
Ts0 f53 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f53 1074 610 28 28 14 0 #rect
Ts0 f53 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f54 '' #zField
Ts0 f54 expr out #txt
Ts0 f54 1088 586 1088 610 #arcP
Ts0 @Alternative f55 '' #zField
Ts0 f55 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f55 1266 634 28 28 14 0 #rect
Ts0 f55 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f56 '' #zField
Ts0 f56 expr out #txt
Ts0 f56 1280 610 1280 634 #arcP
Ts0 @Alternative f57 '' #zField
Ts0 f57 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f57 1474 650 28 28 14 0 #rect
Ts0 f57 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f58 '' #zField
Ts0 f58 expr out #txt
Ts0 f58 1488 626 1488 650 #arcP
Ts0 @RichDialogProcessEnd f59 '' #zField
Ts0 f59 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f59 1539 651 26 26 14 0 #rect
Ts0 f59 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessEnd f60 '' #zField
Ts0 f60 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f60 1331 635 26 26 14 0 #rect
Ts0 f60 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessEnd f61 '' #zField
Ts0 f61 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f61 1139 611 26 26 14 0 #rect
Ts0 f61 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessEnd f62 '' #zField
Ts0 f62 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f62 923 579 26 26 14 0 #rect
Ts0 f62 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f63 '' #zField
Ts0 f63 expr in #txt
Ts0 f63 886 592 923 592 #arcP
Ts0 f63 0 0.052059424455554566 0 0 #arcLabel
Ts0 @PushWFArc f64 '' #zField
Ts0 f64 expr in #txt
Ts0 f64 1102 624 1139 624 #arcP
Ts0 f64 0 0.8263583612397578 0 0 #arcLabel
Ts0 @PushWFArc f65 '' #zField
Ts0 f65 expr in #txt
Ts0 f65 1294 648 1331 648 #arcP
Ts0 f65 0 0.7592549223334022 0 0 #arcLabel
Ts0 @PushWFArc f66 '' #zField
Ts0 f66 expr in #txt
Ts0 f66 1502 664 1539 664 #arcP
Ts0 f66 0 0.8482840437745159 0 0 #arcLabel
Ts0 @Alternative f34 '' #zField
Ts0 f34 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f34 42 426 28 28 14 0 #rect
Ts0 f34 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f39 '' #zField
Ts0 f39 expr out #txt
Ts0 f39 56 378 56 426 #arcP
Ts0 @RichDialogProcessEnd f41 '' #zField
Ts0 f41 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f41 107 483 26 26 14 0 #rect
Ts0 f41 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f42 '' #zField
Ts0 f42 expr in #txt
Ts0 f42 70 440 120 483 #arcP
Ts0 f42 1 120 440 #addKink
Ts0 f42 1 0.13551441601533476 0 0 #arcLabel
Ts0 @RichDialogProcessStep f69 '' #zField
Ts0 f69 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f69 actionTable 'out=in;
' #txt
Ts0 f69 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseSubTypesIGroup;

ITask elementOfCaseSubTypesITask;

IPropertyFilter propertyFilter;


out.caseTypesRelationalOperatorsEnabled = true;


out.caseSubTypesList = [];



// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));

caseSubTypesIGroup.clear();
caseSubTypesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.SUB_TYPE_CODE, null, in.taskStatesEnumSet));

// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue caseSubTypeTreeNodeValue;
   caseSubTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = null;
   caseSubTypeTreeNodeValue.categoryName = "ALL";
      
   out.caseSubTypesList.add(caseSubTypeTreeNodeValue);


for(IGroup caseSubType: caseSubTypesIGroup)
{
   elementOfCaseSubTypesITask = caseSubType.getFirstObjectInGroup() as ITask;

   caseSubTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = elementOfCaseSubTypesITask.getSubTypeCode();
   caseSubTypeTreeNodeValue.categoryName = elementOfCaseSubTypesITask.getSubTypeName();
      
   out.caseSubTypesList.add(caseSubTypeTreeNodeValue);

}// end for case sub types' #txt
Ts0 f69 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f69 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
case sub types</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f69 438 684 36 24 20 -2 #rect
Ts0 f69 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f71 '' #zField
Ts0 f71 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f71 actionTable 'out=in;
' #txt
Ts0 f71 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> businessDateTimeStartsIGroup;

ITask elementOfBusinessDateTimeStartsITask;

IPropertyFilter propertyFilter;


out.caseSubTypesRelationalOperatorsEnabled = true;


out.businessDateTimeStartsList = [];


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case sub type for given case type
RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));


businessDateTimeStartsIGroup.clear();
businessDateTimeStartsIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_START_TIMESTAMP, null, in.taskStatesEnumSet));


// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue businessDateTimeStartTreeNodeValue;
   businessDateTimeStartTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessDateTimeStartTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_START_TIMESTAMP;
   businessDateTimeStartTreeNodeValue.categoryCode = null;
   businessDateTimeStartTreeNodeValue.categoryName = "ALL";
   
   out.businessDateTimeStartsList.add(businessDateTimeStartTreeNodeValue);



for(IGroup businessDateTimeStart: businessDateTimeStartsIGroup)
{
   elementOfBusinessDateTimeStartsITask = businessDateTimeStart.getFirstObjectInGroup() as ITask;

   TaskHierarchyTreeNodeValue businessDateTimeStartTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessDateTimeStartTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_START_TIMESTAMP;
   businessDateTimeStartTreeNodeValue.categoryCode = elementOfBusinessDateTimeStartsITask.getBusinessStartTimestamp().toString();
   businessDateTimeStartTreeNodeValue.categoryName = elementOfBusinessDateTimeStartsITask.getBusinessStartTimestamp().toString();
   
   out.businessDateTimeStartsList.add(businessDateTimeStartTreeNodeValue);
}// end for case sub types
' #txt
Ts0 f71 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f71 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
bus datetime time starts</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f71 654 700 36 24 20 -2 #rect
Ts0 f71 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f75 '' #zField
Ts0 f75 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f75 actionTable 'out=in;
' #txt
Ts0 f75 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> caseTypesIGroup;

ITask elementOfCaseTypesITask;

IPropertyFilter propertyFilter;


out.caseProcessesRelationalOperatorsEnabled = true;


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;

propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);



// read the case process
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


caseTypesIGroup.clear();
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
caseTypesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.TYPE_CODE, null, in.taskStatesEnumSet));
 

out.caseTypesList = [];

// and the element "ALL" to the list
   TaskHierarchyTreeNodeValue caseTypeTreeNodeValue;
   caseTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = null;
   caseTypeTreeNodeValue.categoryName = "ALL";

   out.caseTypesList.add(caseTypeTreeNodeValue);


// build the result
for(IGroup caseType: caseTypesIGroup)
{
   elementOfCaseTypesITask = caseType.getFirstObjectInGroup() as ITask;
      
   caseTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = elementOfCaseTypesITask.getTypeCode();
   caseTypeTreeNodeValue.categoryName = elementOfCaseTypesITask.getTypeName();

   out.caseTypesList.add(caseTypeTreeNodeValue);

}// end for case types' #txt
Ts0 f75 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f75 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
case types</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f75 238 660 36 24 20 -2 #rect
Ts0 f75 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f12 '' #zField
Ts0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f12 actionTable 'out=in;
' #txt
Ts0 f12 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> businessMainContactsIGroup;

ITask elementOfBusinessMainContactsITask;

IPropertyFilter propertyFilter;

out.businessDateTimeStartsRelationalOperatorsEnabled = true;

out.businessMainContactsList = [];


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case sub type for given case type
RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business date time start for given the case sub type
RelationalOperator selectedBusinessDateTimeStartRelationalOperator  = (panel.businessStartTimestampRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessDateTimeStartTreeNodeValue = panel.businessStartTimestampsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessDateTimeStartTreeNodeValue.property, selectedBusinessDateTimeStartRelationalOperator, selectedBusinessDateTimeStartTreeNodeValue.categoryCode));


businessMainContactsIGroup.clear();
businessMainContactsIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_MAIN_CONTACT_ID, null, in.taskStatesEnumSet));


// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue businessMainContactTreeNodeValue;
   businessMainContactTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessMainContactTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_MAIN_CONTACT_ID;
   businessMainContactTreeNodeValue.categoryCode = null;
   businessMainContactTreeNodeValue.categoryName = "ALL";
   
   out.businessMainContactsList.add(businessMainContactTreeNodeValue);


for(IGroup businessMainContact: businessMainContactsIGroup)
{
   elementOfBusinessMainContactsITask = businessMainContact.getFirstObjectInGroup() as ITask;

   businessMainContactTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessMainContactTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_MAIN_CONTACT_ID;
   businessMainContactTreeNodeValue.categoryCode = elementOfBusinessMainContactsITask.getBusinessMainContactId().toString();
   businessMainContactTreeNodeValue.categoryName = elementOfBusinessMainContactsITask.getBusinessMainContactName();
   
   out.businessMainContactsList.add(businessMainContactTreeNodeValue);
}// end for case sub types
' #txt
Ts0 f12 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
bus main contacts</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f12 854 748 36 24 20 -2 #rect
Ts0 f12 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f68 '' #zField
Ts0 f68 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f68 actionTable 'out=in;
' #txt
Ts0 f68 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> taskNamesIGroup;

ITask elementOfTaskNamesITask;

IPropertyFilter propertyFilter;

out.businessMainContactsRelationalOperatorsEnabled = true;

out.taskNamesList = [];


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case sub type for given case type
RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business date time start for given the case sub type
RelationalOperator selectedBusinessDateTimeStartRelationalOperator  = (panel.businessStartTimestampRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessDateTimeStartTreeNodeValue = panel.businessStartTimestampsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business main contact for given business date time start
RelationalOperator selectedBusinessMainContactRelationalOperator  = (panel.businessMainContactRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessMainContactTreeNodeValue = panel.businessMainContactsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessDateTimeStartTreeNodeValue.property, selectedBusinessDateTimeStartRelationalOperator, selectedBusinessDateTimeStartTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessMainContactTreeNodeValue.property, selectedBusinessMainContactRelationalOperator, selectedBusinessMainContactTreeNodeValue.categoryCode));


taskNamesIGroup.clear();
taskNamesIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.NAME, null, in.taskStatesEnumSet));


// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue taskNameTreeNodeValue;
   taskNameTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskNameTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.NAME;
   taskNameTreeNodeValue.categoryCode = null;
   taskNameTreeNodeValue.categoryName = "ALL";
   
   out.taskNamesList.add(taskNameTreeNodeValue);


for(IGroup taskName: taskNamesIGroup)
{
   elementOfTaskNamesITask = taskName.getFirstObjectInGroup() as ITask;

   TaskHierarchyTreeNodeValue taskNameTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskNameTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.NAME;
   taskNameTreeNodeValue.categoryCode = elementOfTaskNamesITask.getName();
   taskNameTreeNodeValue.categoryName = elementOfTaskNamesITask.getName();
   
   out.taskNamesList.add(taskNameTreeNodeValue);
}// end for case sub types
' #txt
Ts0 f68 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f68 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
task names</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f68 1070 756 36 24 20 -2 #rect
Ts0 f68 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStart f74 '' #zField
Ts0 f74 guid 1180DF02C4299C2B #txt
Ts0 f74 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f74 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f74 actionTable 'out=in;
' #txt
Ts0 f74 actionCode '
' #txt
Ts0 f74 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f74 422 54 20 20 13 0 #rect
Ts0 f74 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f78 '' #zField
Ts0 f78 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f78 419 251 26 26 14 0 #rect
Ts0 f78 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f80 '' #zField
Ts0 f80 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f80 actionTable 'out=in;
' #txt
Ts0 f80 actionCode 'panel.caseProcessCategoryRelationalOperatorComboBox.selectedIndex = 0;
out.caseProcessCategoriesRelationalOperatorsEnabled = false;

panel.caseProcessRelationalOperatorComboBox.selectedIndex = 0;
out.caseProcessesRelationalOperatorsEnabled = false;

panel.caseTypeRelationalOperatorComboBox.selectedIndex = 0;
out.caseTypesRelationalOperatorsEnabled = false;

panel.caseSubTypeRelationalOperatorComboBox.selectedIndex = 0;
out.caseSubTypesRelationalOperatorsEnabled = false;

panel.businessStartTimestampRelationalOperatorComboBox.selectedIndex = 0;
out.businessDateTimeStartsRelationalOperatorsEnabled = false;

panel.businessMainContactRelationalOperatorComboBox.selectedIndex = 0;
out.businessMainContactsRelationalOperatorsEnabled = false;

panel.taskNameRelationalOperatorComboBox.selectedIndex = 0;
out.taskNamesRelationalOperatorsEnabled = false;

panel.taskKindRelationalOperatorComboBox.selectedIndex = 0;
out.taskKindsRelationalOperatorsEnabled = false;

panel.businessCreatorUserRelationalOperatorComboBox.selectedIndex = 0;
out.businessCreatorUsersRelationalOperatorsEnabled = false;


// 
panel.caseProcessCategoriesComboBox.selectedIndex = 0;' #txt
Ts0 f80 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f80 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init 
rel.operators selected 
indexes to 0</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f80 414 156 36 24 22 -14 #rect
Ts0 f80 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f82 '' #zField
Ts0 f82 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f82 actionTable 'out=in;
' #txt
Ts0 f82 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> taskKindsIGroup;

ITask elementOfTaskKindsITask;

IPropertyFilter propertyFilter;


out.taskNamesRelationalOperatorsEnabled = true;

out.taskKindsList.clear();


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case sub type for given case type
RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business date time start for given the case sub type
RelationalOperator selectedBusinessDateTimeStartRelationalOperator  = (panel.businessStartTimestampRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessDateTimeStartTreeNodeValue = panel.businessStartTimestampsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business main contact for given business date time start
RelationalOperator selectedBusinessMainContactRelationalOperator  = (panel.businessMainContactRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessMainContactTreeNodeValue = panel.businessMainContactsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the task names for given business main contact name
RelationalOperator selectedTaskNameRelationalOperator  = (panel.taskNameRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedTaskNameTreeNodeValue = panel.taskNamesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessDateTimeStartTreeNodeValue.property, selectedBusinessDateTimeStartRelationalOperator, selectedBusinessDateTimeStartTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessMainContactTreeNodeValue.property, selectedBusinessMainContactRelationalOperator, selectedBusinessMainContactTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedTaskNameTreeNodeValue.property, selectedTaskNameRelationalOperator, selectedTaskNameTreeNodeValue.categoryCode));


taskKindsIGroup.clear();
taskKindsIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.KIND_CODE, null, in.taskStatesEnumSet));


// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue taskKindTreeNodeValue;
   taskKindTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskKindTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.KIND_CODE;
   taskKindTreeNodeValue.categoryCode = null;
   taskKindTreeNodeValue.categoryName = "ALL";
   
   out.taskKindsList.add(taskKindTreeNodeValue);


for(IGroup taskKind: taskKindsIGroup)
{
   elementOfTaskKindsITask = taskKind.getFirstObjectInGroup() as ITask;
 
   taskKindTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskKindTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.KIND_CODE;
   taskKindTreeNodeValue.categoryCode = elementOfTaskKindsITask.getKindCode();
   taskKindTreeNodeValue.categoryName = elementOfTaskKindsITask.getKindName();
   
   out.taskKindsList.add(taskKindTreeNodeValue);
}// end for case sub types
' #txt
Ts0 f82 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f82 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list of
tasks kinds</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f82 1262 804 36 24 20 -2 #rect
Ts0 f82 @|RichDialogProcessStepIcon #fIcon
Ts0 @RichDialogProcessStep f9 '' #zField
Ts0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f9 actionTable 'out=in;
' #txt
Ts0 f9 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> businessCreatorUsersIGroup;

ITask elementOfBusinessCreatorUsersITask;

IPropertyFilter propertyFilter;


out.taskKindsRelationalOperatorsEnabled = true;

out.businessCreatorUsersList.clear();


// read the case process category
RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case process for given category
RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case type for given process
RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the case sub type for given case type
RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business date time start for given the case sub type
RelationalOperator selectedBusinessDateTimeStartRelationalOperator  = (panel.businessStartTimestampRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessDateTimeStartTreeNodeValue = panel.businessStartTimestampsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the business main contact for given business date time start
RelationalOperator selectedBusinessMainContactRelationalOperator  = (panel.businessMainContactRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedBusinessMainContactTreeNodeValue = panel.businessMainContactsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the task names for given business main contact name
RelationalOperator selectedTaskNameRelationalOperator  = (panel.taskNameRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedTaskNameTreeNodeValue = panel.taskNamesComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;


// read the task kind for given task name
RelationalOperator selectedTaskKindRelationalOperator  = (panel.taskKindRelationalOperatorComboBox.selectedListEntry as RelationalOperator);
TaskHierarchyTreeNodeValue selectedTaskKindTreeNodeValue = panel.taskKindsComboBox.selectedListEntry as TaskHierarchyTreeNodeValue;



propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessDateTimeStartTreeNodeValue.property, selectedBusinessDateTimeStartRelationalOperator, selectedBusinessDateTimeStartTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedBusinessMainContactTreeNodeValue.property, selectedBusinessMainContactRelationalOperator, selectedBusinessMainContactTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedTaskNameTreeNodeValue.property, selectedTaskNameRelationalOperator, selectedTaskNameTreeNodeValue.categoryCode));
propertyFilter = propertyFilter.and(ivy.wf.createTaskPropertyFilter(selectedTaskKindTreeNodeValue.property, selectedTaskKindRelationalOperator, selectedTaskKindTreeNodeValue.categoryCode));


businessCreatorUsersIGroup.clear();
businessCreatorUsersIGroup.addAll(ivy.session.findWorkTaskCategories(propertyFilter, ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_CREATOR_USER, null, in.taskStatesEnumSet));


// add the element "ALL" to the list
   TaskHierarchyTreeNodeValue businessCreatorUserTreeNodeValue;
   businessCreatorUserTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessCreatorUserTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_CREATOR_USER;
   businessCreatorUserTreeNodeValue.categoryCode = null;
   businessCreatorUserTreeNodeValue.categoryName = "ALL";
   
   out.businessCreatorUsersList.add(businessCreatorUserTreeNodeValue);


for(IGroup businessCreatorUser: businessCreatorUsersIGroup)
{
   elementOfBusinessCreatorUsersITask = businessCreatorUser.getFirstObjectInGroup() as ITask;

   businessCreatorUserTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessCreatorUserTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_CREATOR_USER;
   businessCreatorUserTreeNodeValue.categoryCode = elementOfBusinessCreatorUsersITask.getBusinessCreatorUser();
   businessCreatorUserTreeNodeValue.categoryName = elementOfBusinessCreatorUsersITask.getBusinessCreatorUser();
   
   out.businessCreatorUsersList.add(businessCreatorUserTreeNodeValue);
}// end for case sub types
' #txt
Ts0 f9 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Buld the list of
bus creator users</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 1470 788 36 24 20 -2 #rect
Ts0 f9 @|RichDialogProcessStepIcon #fIcon
Ts0 @Alternative f84 '' #zField
Ts0 f84 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f84 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f84 42 530 28 28 14 0 #rect
Ts0 f84 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f85 '' #zField
Ts0 f85 expr in #txt
Ts0 f85 outCond 'panel.caseProcessCategoriesComboBox.#selectedListEntry != null' #txt
Ts0 f85 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f85 56 454 56 530 #arcP
Ts0 @PushWFArc f40 '' #zField
Ts0 f40 expr in #txt
Ts0 f40 outCond '!(panel.caseProcessCategoriesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f40 56 558 56 628 #arcP
Ts0 @RichDialogProcessStep f87 '' #zField
Ts0 f87 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f87 actionTable 'out=in;
' #txt
Ts0 f87 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;


out.caseProcessCategoriesRelationalOperatorsEnabled = false;
panel.caseProcessCategoryRelationalOperatorComboBox.selectedIndex = 0;

out.caseProcessesList.clear();

TaskHierarchyTreeNodeValue processTreeNodeValue;
   processTreeNodeValue = new TaskHierarchyTreeNodeValue();
   processTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.PROCESS_CODE;
   processTreeNodeValue.categoryCode = null;
   processTreeNodeValue.categoryName = "ALL";

out.caseProcessesList.add(processTreeNodeValue); ' #txt
Ts0 f87 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f87 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build list with
only with &quot;ALL&quot;, 
rel. operator to &quot;=&quot;</name>
        <nameStyle>54,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f87 102 580 36 24 20 -2 #rect
Ts0 f87 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f89 '' #zField
Ts0 f89 expr in #txt
Ts0 f89 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f89 70 544 120 580 #arcP
Ts0 f89 1 120 544 #addKink
Ts0 f89 0 0.7644201822608955 0 0 #arcLabel
Ts0 @Alternative f90 '' #zField
Ts0 f90 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f90 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f90 242 570 28 28 14 0 #rect
Ts0 f90 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f91 '' #zField
Ts0 f91 expr in #txt
Ts0 f91 outCond 'panel.caseProcessesComboBox.#selectedListEntry != null' #txt
Ts0 f91 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f91 256 486 256 570 #arcP
Ts0 @PushWFArc f77 '' #zField
Ts0 f77 expr in #txt
Ts0 f77 outCond '!(panel.caseProcessesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f77 256 598 256 660 #arcP
Ts0 @RichDialogProcessStep f92 '' #zField
Ts0 f92 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f92 actionTable 'out=in;
' #txt
Ts0 f92 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.caseProcessesRelationalOperatorsEnabled = false;
panel.caseProcessRelationalOperatorComboBox.selectedIndex = 0;


out.caseTypesList.clear();

TaskHierarchyTreeNodeValue caseTypeTreeNodeValue;
   caseTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.TYPE_CODE;
   caseTypeTreeNodeValue.categoryCode = null;
   caseTypeTreeNodeValue.categoryName = "ALL";

out.caseTypesList.add(caseTypeTreeNodeValue); ' #txt
Ts0 f92 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f92 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
Ts0 f92 302 612 36 24 20 -2 #rect
Ts0 f92 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f94 '' #zField
Ts0 f94 expr in #txt
Ts0 f94 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f94 270 584 320 612 #arcP
Ts0 f94 1 320 584 #addKink
Ts0 f94 0 0.8090174805390279 0 0 #arcLabel
Ts0 @RichDialogProcessStep f96 '' #zField
Ts0 f96 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f96 actionTable 'out=in;
' #txt
Ts0 f96 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.caseTypesRelationalOperatorsEnabled = false;
panel.caseTypeRelationalOperatorComboBox.selectedIndex = 0;

out.caseSubTypesList.clear();

TaskHierarchyTreeNodeValue caseSubTypeTreeNodeValue;
   caseSubTypeTreeNodeValue = new TaskHierarchyTreeNodeValue();
   caseSubTypeTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.SUB_TYPE_CODE;
   caseSubTypeTreeNodeValue.categoryCode = null;
   caseSubTypeTreeNodeValue.categoryName = "ALL";

out.caseSubTypesList.add(caseSubTypeTreeNodeValue); ' #txt
Ts0 f96 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f96 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
rel. operator to &quot;=&quot;</name>
        <nameStyle>51,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f96 502 644 36 24 20 -2 #rect
Ts0 f96 @|RichDialogProcessStepIcon #fIcon
Ts0 @Alternative f98 '' #zField
Ts0 f98 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f98 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f98 442 602 28 28 14 0 #rect
Ts0 f98 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f99 '' #zField
Ts0 f99 expr in #txt
Ts0 f99 outCond 'panel.caseTypesComboBox.#selectedListEntry != null' #txt
Ts0 f99 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f99 456 518 456 602 #arcP
Ts0 @PushWFArc f70 '' #zField
Ts0 f70 expr in #txt
Ts0 f70 outCond '!(panel.caseTypesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f70 456 630 456 684 #arcP
Ts0 @PushWFArc f100 '' #zField
Ts0 f100 expr in #txt
Ts0 f100 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f100 470 616 520 644 #arcP
Ts0 f100 1 520 616 #addKink
Ts0 f100 0 0.8090174805390279 0 0 #arcLabel
Ts0 @Alternative f102 '' #zField
Ts0 f102 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f102 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f102 658 618 28 28 14 0 #rect
Ts0 f102 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f103 '' #zField
Ts0 f103 expr in #txt
Ts0 f103 outCond 'panel.caseSubTypesComboBox.#selectedListEntry != null' #txt
Ts0 f103 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f103 672 558 672 618 #arcP
Ts0 @PushWFArc f72 '' #zField
Ts0 f72 expr in #txt
Ts0 f72 outCond '!(panel.caseSubTypesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f72 672 646 672 700 #arcP
Ts0 @RichDialogProcessStep f105 '' #zField
Ts0 f105 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f105 actionTable 'out=in;
' #txt
Ts0 f105 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;


out.caseSubTypesRelationalOperatorsEnabled = false;
panel.caseSubTypeRelationalOperatorComboBox.selectedIndex = 0;

out.businessDateTimeStartsList.clear();

TaskHierarchyTreeNodeValue businessDateTimeStartTreeNodeValue;
   businessDateTimeStartTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessDateTimeStartTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_START_TIMESTAMP;
   businessDateTimeStartTreeNodeValue.categoryCode = null;
   businessDateTimeStartTreeNodeValue.categoryName = "ALL";

out.businessDateTimeStartsList.add(businessDateTimeStartTreeNodeValue); ' #txt
Ts0 f105 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f105 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
re. operator to &quot;=&quot;</name>
        <nameStyle>50,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f105 718 660 36 24 20 -2 #rect
Ts0 f105 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f106 '' #zField
Ts0 f106 expr in #txt
Ts0 f106 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f106 686 632 736 660 #arcP
Ts0 f106 1 736 632 #addKink
Ts0 f106 0 0.7767940071308902 0 0 #arcLabel
Ts0 @Alternative f108 '' #zField
Ts0 f108 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f108 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f108 858 658 28 28 14 0 #rect
Ts0 f108 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f109 '' #zField
Ts0 f109 expr in #txt
Ts0 f109 outCond 'panel.businessStartTimestampsComboBox.#selectedListEntry != null' #txt
Ts0 f109 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f109 872 606 872 658 #arcP
Ts0 @PushWFArc f67 '' #zField
Ts0 f67 expr in #txt
Ts0 f67 outCond '!(panel.businessStartTimestampsComboBox.selectedListEntry  as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f67 872 686 872 748 #arcP
Ts0 @RichDialogProcessStep f111 '' #zField
Ts0 f111 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f111 actionTable 'out=in;
' #txt
Ts0 f111 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.businessDateTimeStartsRelationalOperatorsEnabled = false;
panel.businessStartTimestampRelationalOperatorComboBox.selectedIndex = 0;

out.businessMainContactsList.clear();

TaskHierarchyTreeNodeValue businessMainContactTreeNodeValue;
   businessMainContactTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessMainContactTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_MAIN_CONTACT_ID;
   businessMainContactTreeNodeValue.categoryCode = null;
   businessMainContactTreeNodeValue.categoryName = "ALL";

out.businessMainContactsList.add(businessMainContactTreeNodeValue); ' #txt
Ts0 f111 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f111 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
re. operator to &quot;=</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f111 926 700 36 24 20 -2 #rect
Ts0 f111 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f112 '' #zField
Ts0 f112 expr in #txt
Ts0 f112 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f112 886 672 944 700 #arcP
Ts0 f112 1 944 672 #addKink
Ts0 f112 0 0.7082073028835526 0 0 #arcLabel
Ts0 @Alternative f114 '' #zField
Ts0 f114 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f114 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f114 1074 674 28 28 14 0 #rect
Ts0 f114 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f115 '' #zField
Ts0 f115 expr in #txt
Ts0 f115 outCond 'panel.businessMainContactsComboBox.#selectedListEntry != null' #txt
Ts0 f115 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f115 1088 638 1088 674 #arcP
Ts0 @PushWFArc f73 '' #zField
Ts0 f73 expr in #txt
Ts0 f73 outCond '!(panel.businessMainContactsComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f73 1088 702 1088 756 #arcP
Ts0 @RichDialogProcessStep f116 '' #zField
Ts0 f116 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f116 actionTable 'out=in;
' #txt
Ts0 f116 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.businessMainContactsRelationalOperatorsEnabled = false;
panel.businessMainContactRelationalOperatorComboBox.selectedIndex = 0;

out.taskNamesList.clear();

TaskHierarchyTreeNodeValue taskNameTreeNodeValue;
   taskNameTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskNameTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.NAME;
   taskNameTreeNodeValue.categoryCode = null;
   taskNameTreeNodeValue.categoryName = "ALL";

out.taskNamesList.add(taskNameTreeNodeValue); ' #txt
Ts0 f116 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f116 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
re. operator to &quot;=</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f116 1134 708 36 24 20 -2 #rect
Ts0 f116 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f118 '' #zField
Ts0 f118 expr in #txt
Ts0 f118 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f118 1102 688 1152 708 #arcP
Ts0 f118 1 1152 688 #addKink
Ts0 f118 0 0.7286221257848043 0 0 #arcLabel
Ts0 @Alternative f120 '' #zField
Ts0 f120 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f120 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f120 1266 714 28 28 14 0 #rect
Ts0 f120 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f121 '' #zField
Ts0 f121 expr in #txt
Ts0 f121 outCond 'panel.taskNamesComboBox.#selectedListEntry != null' #txt
Ts0 f121 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f121 1280 662 1280 714 #arcP
Ts0 @PushWFArc f83 '' #zField
Ts0 f83 expr in #txt
Ts0 f83 outCond '!(panel.taskNamesComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f83 1280 742 1280 804 #arcP
Ts0 @RichDialogProcessStep f122 '' #zField
Ts0 f122 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f122 actionTable 'out=in;
' #txt
Ts0 f122 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.taskNamesRelationalOperatorsEnabled = false;
panel.taskNameRelationalOperatorComboBox.selectedIndex = 0;

out.taskKindsList.clear();

TaskHierarchyTreeNodeValue taskKindTreeNodeValue;
   taskKindTreeNodeValue = new TaskHierarchyTreeNodeValue();
   taskKindTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.KIND_CODE;
   taskKindTreeNodeValue.categoryCode = null;
   taskKindTreeNodeValue.categoryName = "ALL";

out.taskKindsList.add(taskKindTreeNodeValue); ' #txt
Ts0 f122 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f122 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
re. operator to &quot;=</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f122 1326 756 36 24 20 -2 #rect
Ts0 f122 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f124 '' #zField
Ts0 f124 expr in #txt
Ts0 f124 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f124 1294 728 1344 756 #arcP
Ts0 f124 1 1344 728 #addKink
Ts0 f124 0 0.7644201822608955 0 0 #arcLabel
Ts0 @Alternative f126 '' #zField
Ts0 f126 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f126 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f126 1474 706 28 28 14 0 #rect
Ts0 f126 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f127 '' #zField
Ts0 f127 expr in #txt
Ts0 f127 outCond 'panel.taskKindsComboBox.#selectedListEntry != null' #txt
Ts0 f127 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f127 1488 678 1488 706 #arcP
Ts0 @PushWFArc f31 '' #zField
Ts0 f31 expr in #txt
Ts0 f31 outCond '!(panel.taskKindsComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f31 1488 734 1488 788 #arcP
Ts0 @RichDialogProcessStep f128 '' #zField
Ts0 f128 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f128 actionTable 'out=in;
' #txt
Ts0 f128 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;

out.taskKindsRelationalOperatorsEnabled = false;
panel.taskKindRelationalOperatorComboBox.selectedIndex = 0;

out.businessCreatorUsersList.clear();

TaskHierarchyTreeNodeValue businessCreatorUserTreeNodeValue;
   businessCreatorUserTreeNodeValue = new TaskHierarchyTreeNodeValue();
   businessCreatorUserTreeNodeValue.property = ch.ivyteam.ivy.workflow.TaskProperty.BUSINESS_CREATOR_USER;
   businessCreatorUserTreeNodeValue.categoryCode = null;
   businessCreatorUserTreeNodeValue.categoryName = "ALL";

out.businessCreatorUsersList.add(businessCreatorUserTreeNodeValue); ' #txt
Ts0 f128 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f128 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the list
only with &quot;ALL&quot;
re. operator to &quot;=</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f128 1534 740 36 24 20 -2 #rect
Ts0 f128 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f130 '' #zField
Ts0 f130 expr in #txt
Ts0 f130 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection
to ALL</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f130 1502 720 1552 740 #arcP
Ts0 f130 1 1552 720 #addKink
Ts0 f130 0 0.7644201822608955 0 0 #arcLabel
Ts0 @RichDialogProcessStep f104 '' #zField
Ts0 f104 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f104 actionTable 'out=in;
' #txt
Ts0 f104 actionCode 'panel.caseProcessesComboBox.selectedIndex = 0;
// out.caseProcessesListSelectedIndex = 0;' #txt
Ts0 f104 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f104 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f104 38 716 36 24 20 -2 #rect
Ts0 f104 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f107 '' #zField
Ts0 f107 expr out #txt
Ts0 f107 56 652 56 716 #arcP
Ts0 @PushWFArc f32 '' #zField
Ts0 f32 expr out #txt
Ts0 f32 56 740 56 883 #arcP
Ts0 @PushWFArc f110 '' #zField
Ts0 f110 expr out #txt
Ts0 f110 120 604 74 728 #arcP
Ts0 f110 1 120 728 #addKink
Ts0 f110 0 0.6237409630049852 0 0 #arcLabel
Ts0 @RichDialogProcessStep f113 '' #zField
Ts0 f113 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f113 actionTable 'out=in;
' #txt
Ts0 f113 actionCode 'panel.caseTypesComboBox.selectedIndex = 0;
// out.caseTypesListSelectedIndex = 0;' #txt
Ts0 f113 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f113 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f113 238 724 36 24 20 -2 #rect
Ts0 f113 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f117 '' #zField
Ts0 f117 expr out #txt
Ts0 f117 256 684 256 724 #arcP
Ts0 @PushWFArc f76 '' #zField
Ts0 f76 expr out #txt
Ts0 f76 256 748 256 883 #arcP
Ts0 @PushWFArc f119 '' #zField
Ts0 f119 expr out #txt
Ts0 f119 320 636 274 736 #arcP
Ts0 f119 1 320 736 #addKink
Ts0 f119 0 0.6470840110803519 0 0 #arcLabel
Ts0 @RichDialogProcessStep f86 '' #zField
Ts0 f86 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f86 actionTable 'out=in;
' #txt
Ts0 f86 actionCode 'panel.caseSubTypesComboBox.selectedIndex = 0;
// out.caseSubTypesListSelectedIndex = 0;' #txt
Ts0 f86 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f86 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f86 438 740 36 24 20 -2 #rect
Ts0 f86 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f123 '' #zField
Ts0 f123 expr out #txt
Ts0 f123 456 708 456 740 #arcP
Ts0 @PushWFArc f15 '' #zField
Ts0 f15 expr out #txt
Ts0 f15 456 764 456 883 #arcP
Ts0 @PushWFArc f125 '' #zField
Ts0 f125 expr out #txt
Ts0 f125 520 668 474 752 #arcP
Ts0 f125 1 520 752 #addKink
Ts0 f125 0 0.670491747114504 0 0 #arcLabel
Ts0 @RichDialogProcessStep f88 '' #zField
Ts0 f88 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f88 actionTable 'out=in;
' #txt
Ts0 f88 actionCode 'panel.businessStartTimestampsComboBox.selectedIndex = 0;
// out.businessDateTimeStartsListSelectedIndex = 0;' #txt
Ts0 f88 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f88 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f88 654 748 36 24 20 -2 #rect
Ts0 f88 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f132 '' #zField
Ts0 f132 expr out #txt
Ts0 f132 672 724 672 748 #arcP
Ts0 @PushWFArc f18 '' #zField
Ts0 f18 expr out #txt
Ts0 f18 672 772 672 883 #arcP
Ts0 @PushWFArc f133 '' #zField
Ts0 f133 expr out #txt
Ts0 f133 736 684 690 760 #arcP
Ts0 f133 1 736 760 #addKink
Ts0 f133 0 0.7109736054329284 0 0 #arcLabel
Ts0 @RichDialogProcessStep f93 '' #zField
Ts0 f93 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f93 actionTable 'out=in;
' #txt
Ts0 f93 actionCode 'panel.businessMainContactsComboBox.selectedIndex = 0;
// out.businessMainContactsListSelectedIndex = 0;' #txt
Ts0 f93 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f93 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f93 854 804 36 24 20 -2 #rect
Ts0 f93 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f134 '' #zField
Ts0 f134 expr out #txt
Ts0 f134 872 772 872 804 #arcP
Ts0 @PushWFArc f21 '' #zField
Ts0 f21 expr out #txt
Ts0 f21 872 828 872 891 #arcP
Ts0 @PushWFArc f135 '' #zField
Ts0 f135 expr out #txt
Ts0 f135 944 724 890 816 #arcP
Ts0 f135 1 944 816 #addKink
Ts0 f135 0 0.7701759959314963 0 0 #arcLabel
Ts0 @RichDialogProcessStep f95 '' #zField
Ts0 f95 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f95 actionTable 'out=in;
' #txt
Ts0 f95 actionCode 'panel.taskNamesComboBox.selectedIndex = 0;
// out.taskNamesListSelectedIndex = 0;' #txt
Ts0 f95 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f95 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f95 1070 804 36 24 20 -2 #rect
Ts0 f95 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f136 '' #zField
Ts0 f136 expr out #txt
Ts0 f136 1088 780 1088 804 #arcP
Ts0 @PushWFArc f24 '' #zField
Ts0 f24 expr out #txt
Ts0 f24 1088 828 1088 883 #arcP
Ts0 @PushWFArc f137 '' #zField
Ts0 f137 expr out #txt
Ts0 f137 1152 732 1106 816 #arcP
Ts0 f137 1 1152 816 #addKink
Ts0 f137 0 0.7954189658933453 0 0 #arcLabel
Ts0 @RichDialogProcessStep f97 '' #zField
Ts0 f97 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f97 actionTable 'out=in;
' #txt
Ts0 f97 actionCode 'panel.taskKindsComboBox.selectedIndex = 0;
// out.taskKindsListSelectedIndex = 0;' #txt
Ts0 f97 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f97 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f97 1262 844 36 24 20 -2 #rect
Ts0 f97 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f138 '' #zField
Ts0 f138 expr out #txt
Ts0 f138 1280 828 1280 844 #arcP
Ts0 @PushWFArc f27 '' #zField
Ts0 f27 expr out #txt
Ts0 f27 1280 868 1280 891 #arcP
Ts0 @PushWFArc f139 '' #zField
Ts0 f139 expr out #txt
Ts0 f139 1344 780 1298 856 #arcP
Ts0 f139 1 1344 856 #addKink
Ts0 f139 0 0.7954189658933453 0 0 #arcLabel
Ts0 @RichDialogProcessStep f129 '' #zField
Ts0 f129 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f129 actionTable 'out=in;
' #txt
Ts0 f129 actionCode 'panel.businessCreatorUsersComboBox.selectedIndex = 0;
// out.businessCreatorUsersListSelectedIndex = 0;' #txt
Ts0 f129 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f129 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set selected index
to 0</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f129 1470 844 36 24 20 -2 #rect
Ts0 f129 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f131 '' #zField
Ts0 f131 expr out #txt
Ts0 f131 1488 812 1488 844 #arcP
Ts0 @PushWFArc f30 '' #zField
Ts0 f30 expr out #txt
Ts0 f30 1488 868 1488 891 #arcP
Ts0 @PushWFArc f140 '' #zField
Ts0 f140 expr out #txt
Ts0 f140 1552 764 1506 856 #arcP
Ts0 f140 1 1552 856 #addKink
Ts0 f140 0 0.7905363733120778 0 0 #arcLabel
Ts0 @RichDialogProcessStart f101 '' #zField
Ts0 f101 guid 11812AD2553C2E3F #txt
Ts0 f101 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f101 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f101 actionTable 'out=in;
' #txt
Ts0 f101 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>businessCreatorUserSelect</name>
        <nameStyle>25,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f101 1670 630 20 20 13 0 #rect
Ts0 f101 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f141 '' #zField
Ts0 f141 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f141 1667 891 26 26 14 0 #rect
Ts0 f141 @|RichDialogProcessEndIcon #fIcon
Ts0 @Alternative f143 '' #zField
Ts0 f143 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f143 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f143 1666 674 28 28 14 0 #rect
Ts0 f143 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f144 '' #zField
Ts0 f144 expr out #txt
Ts0 f144 1680 650 1680 674 #arcP
Ts0 @RichDialogProcessEnd f145 '' #zField
Ts0 f145 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f145 1731 675 26 26 14 0 #rect
Ts0 f145 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f146 '' #zField
Ts0 f146 expr in #txt
Ts0 f146 1694 688 1731 688 #arcP
Ts0 f146 0 0.8682933270904036 0 0 #arcLabel
Ts0 @Alternative f147 '' #zField
Ts0 f147 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f147 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f147 1666 754 28 28 14 0 #rect
Ts0 f147 @|AlternativeIcon #fIcon
Ts0 @PushWFArc f148 '' #zField
Ts0 f148 expr in #txt
Ts0 f148 outCond 'panel.businessCreatorUsersComboBox.#selectedListEntry != null' #txt
Ts0 f148 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f148 1680 702 1680 754 #arcP
Ts0 @RichDialogProcessStep f149 '' #zField
Ts0 f149 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f149 actionTable 'out=in;
' #txt
Ts0 f149 actionCode 'panel.businessCreatorUserRelationalOperatorComboBox.selectedIndex = 0;' #txt
Ts0 f149 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f149 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set relational 
operator to disabled</name>
        <nameStyle>36,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f149 1726 796 36 24 20 -2 #rect
Ts0 f149 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f150 '' #zField
Ts0 f150 expr out #txt
Ts0 f150 1744 820 1693 904 #arcP
Ts0 f150 1 1744 904 #addKink
Ts0 f150 0 0.7591706652738919 0 0 #arcLabel
Ts0 @PushWFArc f151 '' #zField
Ts0 f151 expr in #txt
Ts0 f151 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection 
to ALL</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f151 1694 768 1744 796 #arcP
Ts0 f151 1 1744 768 #addKink
Ts0 f151 0 0.8090174805390279 0 0 #arcLabel
Ts0 @RichDialogProcessStep f152 '' #zField
Ts0 f152 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f152 actionTable 'out=in;
' #txt
Ts0 f152 actionCode 'out.businessCreatorUsersRelationalOperatorsEnabled = true;' #txt
Ts0 f152 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f152 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set relational 
operator to enabled</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f152 1662 828 36 24 20 -2 #rect
Ts0 f152 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f153 '' #zField
Ts0 f153 expr in #txt
Ts0 f153 outCond '!(panel.businessCreatorUsersComboBox.selectedListEntry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName.equals("ALL")' #txt
Ts0 f153 1680 782 1680 828 #arcP
Ts0 @PushWFArc f142 '' #zField
Ts0 f142 expr out #txt
Ts0 f142 1680 852 1680 891 #arcP
Ts0 @RichDialogProcessStart f154 '' #zField
Ts0 f154 guid 11812C52DF42B92B #txt
Ts0 f154 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f154 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f154 actionTable 'out=in;
' #txt
Ts0 f154 actionCode 'out.taskHierarchyFilterSelectionConfirmed = true;' #txt
Ts0 f154 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f154 582 62 20 20 13 0 #rect
Ts0 f154 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f155 '' #zField
Ts0 f155 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f155 579 259 26 26 14 0 #rect
Ts0 f155 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStart f157 '' #zField
Ts0 f157 guid 11812C58BC8C1718 #txt
Ts0 f157 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f157 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f157 actionTable 'out=in;
' #txt
Ts0 f157 actionCode 'out.taskHierarchyFilterSelectionConfirmed = false;
out.taskHierarchyFilters = null;' #txt
Ts0 f157 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f157 878 62 20 20 13 0 #rect
Ts0 f157 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f158 '' #zField
Ts0 f158 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f158 875 243 26 26 14 0 #rect
Ts0 f158 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f160 '' #zField
Ts0 f160 actionDecl 'ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData out;
' #txt
Ts0 f160 actionTable 'out=in;
' #txt
Ts0 f160 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue;
import ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyFilters;
import ch.ivyteam.ivy.workflow.ui.data.task.TaskCategoryFilter;


import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.logicalexpression.RelationalOperator;

List<IGroup> childrenIGroup;
ITask elementOfChildrenITask;



out.taskHierarchyFilters = new TaskHierarchyFilters();



// read the case process category and build the filter
if (panel.caseProcessCategoriesComboBox.getSelectedListEntry() != null && !(panel.caseProcessCategoriesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedCaseProcessCategoryRelationalOperator  = (panel.caseProcessCategoryRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedCaseProcessCategoryTreeNodeValue = panel.caseProcessCategoriesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter caseProcessTaskCategoryFilter = new TaskCategoryFilter();
	caseProcessTaskCategoryFilter.category = selectedCaseProcessCategoryTreeNodeValue;
	caseProcessTaskCategoryFilter.relationalOperator = selectedCaseProcessCategoryRelationalOperator;	
	
	out.taskHierarchyFilters.caseProcessCategoriesFilterIsDefined = true;
	out.taskHierarchyFilters.caseProcessCategoriesFilter = caseProcessTaskCategoryFilter;
	
	
	out.taskHierarchyFilters.propertyFilter = ivy.wf.createTaskPropertyFilter(selectedCaseProcessCategoryTreeNodeValue.property, selectedCaseProcessCategoryRelationalOperator, selectedCaseProcessCategoryTreeNodeValue.categoryCode);
}
else
{
	out.taskHierarchyFilters.caseProcessCategoriesFilterIsDefined = false;	
}





// read the case process for given category and build the filter
if (panel.caseProcessesComboBox.getSelectedListEntry() != null && !(panel.caseProcessesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedCaseProcessRelationalOperator  = (panel.caseProcessRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedCaseProcessTreeNodeValue = panel.caseProcessesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter caseProcessesFilter = new TaskCategoryFilter();
	caseProcessesFilter.category = selectedCaseProcessTreeNodeValue;
	caseProcessesFilter.relationalOperator = selectedCaseProcessRelationalOperator;

	out.taskHierarchyFilters.caseProcessesFilter = caseProcessesFilter;
	out.taskHierarchyFilters.caseProcessesFilterIsDefined = true;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedCaseProcessTreeNodeValue.property, selectedCaseProcessRelationalOperator, selectedCaseProcessTreeNodeValue.categoryCode);
}
else
{
	out.taskHierarchyFilters.caseProcessesFilterIsDefined = false;
}




// read the case type for given process and build the filter
if (panel.caseTypesComboBox.getSelectedListEntry() != null && !(panel.caseTypesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedCaseTypeRelationalOperator  = (panel.caseTypeRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedCaseTypeTreeNodeValue = panel.caseTypesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter caseTypesFilter = new TaskCategoryFilter();
	caseTypesFilter.category = selectedCaseTypeTreeNodeValue;
	caseTypesFilter.relationalOperator = selectedCaseTypeRelationalOperator;
	
	out.taskHierarchyFilters.caseTypesFilterIsDefined = true;
	out.taskHierarchyFilters.caseTypesFilter = caseTypesFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedCaseTypeTreeNodeValue.property, selectedCaseTypeRelationalOperator, selectedCaseTypeTreeNodeValue.categoryCode);
}
else
{
	out.taskHierarchyFilters.caseTypesFilterIsDefined = false;
}




// read the case sub type for given case type and build the filter and build the filter
if (panel.caseSubTypesComboBox.getSelectedListEntry() != null && !(panel.caseSubTypesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedCaseSubTypeRelationalOperator  = (panel.caseSubTypeRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedCaseSubTypeTreeNodeValue = panel.caseSubTypesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter caseSubTypesFilter = new TaskCategoryFilter();
	caseSubTypesFilter.category = selectedCaseSubTypeTreeNodeValue;
	caseSubTypesFilter.relationalOperator = selectedCaseSubTypeRelationalOperator;

  out.taskHierarchyFilters.caseSubTypesFilterIsDefined = true;
  out.taskHierarchyFilters.caseSubTypesFilter = caseSubTypesFilter;

	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedCaseSubTypeTreeNodeValue.property, selectedCaseSubTypeRelationalOperator, selectedCaseSubTypeTreeNodeValue.categoryCode);
}
else
{
	  out.taskHierarchyFilters.caseSubTypesFilterIsDefined = false;
}
	


// read the business date time start for given the case sub type and build the filter
if (panel.businessStartTimestampsComboBox.getSelectedListEntry() != null && !(panel.businessStartTimestampsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedBusinessDateTimeStartRelationalOperator  = (panel.businessStartTimestampRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedBusinessDateTimeStartTreeNodeValue = panel.businessStartTimestampsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter businessDateTimeStartsFilter = new TaskCategoryFilter();
	businessDateTimeStartsFilter.category = selectedBusinessDateTimeStartTreeNodeValue;
	businessDateTimeStartsFilter.relationalOperator = selectedBusinessDateTimeStartRelationalOperator;
	
	out.taskHierarchyFilters.businessDateTimeStartsFilterIsDefined = true;
	out.taskHierarchyFilters.businessDateTimeStartsFilter = businessDateTimeStartsFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedBusinessDateTimeStartTreeNodeValue.property, selectedBusinessDateTimeStartRelationalOperator, selectedBusinessDateTimeStartTreeNodeValue.categoryCode);
}
else
{
		out.taskHierarchyFilters.businessDateTimeStartsFilterIsDefined = false;
}



// read the business main contact for given business date time start and build the filter
if (panel.businessMainContactsComboBox.getSelectedListEntry() != null && !(panel.businessMainContactsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedBusinessMainContactRelationalOperator  = (panel.businessMainContactRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedBusinessMainContactTreeNodeValue = panel.businessMainContactsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter businessMainContactsFilter = new TaskCategoryFilter();
	businessMainContactsFilter.category = selectedBusinessMainContactTreeNodeValue;
	businessMainContactsFilter.relationalOperator = selectedBusinessMainContactRelationalOperator;
	
	out.taskHierarchyFilters.businessMainContactsFilterIsDefined = true;
	out.taskHierarchyFilters.businessMainContactsFilter = businessMainContactsFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedBusinessMainContactTreeNodeValue.property, selectedBusinessMainContactRelationalOperator, selectedBusinessMainContactTreeNodeValue.categoryCode);
}
else
{
	out.taskHierarchyFilters.businessMainContactsFilterIsDefined = false;	
}



// read the task names for given business main contact name and build the filter
if (panel.taskNamesComboBox.getSelectedListEntry() != null && !(panel.taskNamesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedTaskNameRelationalOperator  = (panel.taskNameRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedTaskNameTreeNodeValue = panel.taskNamesComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter taskNamesFilter = new TaskCategoryFilter();
	taskNamesFilter.category = selectedTaskNameTreeNodeValue;
	taskNamesFilter.relationalOperator = selectedTaskNameRelationalOperator;
	
	out.taskHierarchyFilters.taskNamesFilterIsDefined = true;
	out.taskHierarchyFilters.taskNamesFilter = taskNamesFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedTaskNameTreeNodeValue.property, selectedTaskNameRelationalOperator, selectedTaskNameTreeNodeValue);
}
else
{
	out.taskHierarchyFilters.taskNamesFilterIsDefined = false;		
}




// read the task kind for given task name and build the filter
if (panel.taskKindsComboBox.getSelectedListEntry() != null && !(panel.taskKindsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedTaskKindRelationalOperator  = (panel.taskKindRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedTaskKindTreeNodeValue = panel.taskKindsComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter taskKindsFilter = new TaskCategoryFilter();
	taskKindsFilter.category = selectedTaskKindTreeNodeValue;
	taskKindsFilter.relationalOperator = selectedTaskKindRelationalOperator;
	
	out.taskHierarchyFilters.taskKindsFilterIsDefined = true;
	out.taskHierarchyFilters.taskKindsFilter = taskKindsFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedTaskKindTreeNodeValue.property, selectedTaskKindRelationalOperator, selectedTaskKindTreeNodeValue.categoryCode);
}
else
{
	out.taskHierarchyFilters.taskKindsFilterIsDefined = false;
}



// read the business creator user for given task kind and build the filter
if (panel.businessCreatorUsersComboBox.getSelectedListEntry() != null && !(panel.businessCreatorUsersComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue).categoryCode.equals(""))
{
	RelationalOperator selectedBusinessCreatorUserRelationalOperator  = (panel.businessCreatorUserRelationalOperatorComboBox.getSelectedListEntry() as RelationalOperator);
	TaskHierarchyTreeNodeValue selectedBusinessCreatorUserTreeNodeValue = panel.businessCreatorUsersComboBox.getSelectedListEntry() as TaskHierarchyTreeNodeValue;
	// build the category filter
	TaskCategoryFilter businessCreatorUsersFilter = new TaskCategoryFilter();
	businessCreatorUsersFilter.category = selectedBusinessCreatorUserTreeNodeValue;
	businessCreatorUsersFilter.relationalOperator = selectedBusinessCreatorUserRelationalOperator;
	
	out.taskHierarchyFilters.businessCreatorUsersFilterIsDefined = true;
	out.taskHierarchyFilters.businessCreatorUsersFilter = businessCreatorUsersFilter;
	
	out.taskHierarchyFilters.propertyFilter = out.taskHierarchyFilters.propertyFilter.and(selectedBusinessCreatorUserTreeNodeValue.property, selectedBusinessCreatorUserRelationalOperator, selectedBusinessCreatorUserTreeNodeValue.categoryCode);	
}
else
{
	out.taskHierarchyFilters.businessCreatorUsersFilterIsDefined = false;	
}' #txt
Ts0 f160 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f160 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Build the task hierarchy filters
to be sent as attachment of RD Event</name>
        <nameStyle>69,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f160 574 116 36 24 20 -2 #rect
Ts0 f160 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f161 '' #zField
Ts0 f161 expr out #txt
Ts0 f161 592 82 592 116 #arcP
Ts0 @RichDialogFireEvent f162 '' #zField
Ts0 f162 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fire the RD Event
taskHierarchyFiltersSelectionConfirmed</name>
        <nameStyle>56,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f162 actionDecl 'ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyFilters aTaskHierarchyFilters;
' #txt
Ts0 f162 actionTable 'aTaskHierarchyFilters=in.taskHierarchyFilters;
' #txt
Ts0 f162 actionCode panel.fireTaskHierarchyFiltersSelectionConfirmed(aTaskHierarchyFilters); #txt
Ts0 f162 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f162 fireEvent taskHierarchyFiltersSelectionConfirmed(ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyFilters) #txt
Ts0 f162 574 180 36 24 20 -2 #rect
Ts0 f162 @|RichDialogFireEventIcon #fIcon
Ts0 @PushWFArc f156 '' #zField
Ts0 f156 expr out #txt
Ts0 f156 592 204 592 259 #arcP
Ts0 @RichDialogFireEvent f164 '' #zField
Ts0 f164 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fire the RD Event
taskHierarchyFiltersSelectionCanceled
without parameter</name>
        <nameStyle>73,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f164 actionCode panel.fireTaskHierarchyFiltersSelectionCanceled(); #txt
Ts0 f164 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f164 fireEvent taskHierarchyFiltersSelectionCanceled() #txt
Ts0 f164 870 188 36 24 20 -2 #rect
Ts0 f164 @|RichDialogFireEventIcon #fIcon
Ts0 @PushWFArc f159 '' #zField
Ts0 f159 expr out #txt
Ts0 f159 888 212 888 243 #arcP
Ts0 @RichDialogMethodStart f166 '' #zField
Ts0 f166 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetTaskHierarchyFilters()</name>
    </language>
</elementInfo>
' #txt
Ts0 f166 guid 11830CDA79547D69 #txt
Ts0 f166 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f166 method resetTaskHierarchyFilters() #txt
Ts0 f166 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f166 outParameterDecl '<> result;
' #txt
Ts0 f166 246 78 20 20 13 0 #rect
Ts0 f166 @|RichDialogMethodStartIcon #fIcon
Ts0 @PushWFArc f5 '' #zField
Ts0 f5 expr out #txt
Ts0 f5 432 180 432 251 #arcP
Ts0 @RichDialogInitStart f167 '' #zField
Ts0 f167 guid 118FA6B5DF6E0B8B #txt
Ts0 f167 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f167 method filterConsideringTaskStates(java.util.EnumSet) #txt
Ts0 f167 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.util.EnumSet aTaskStatesEnumSet> param = methodEvent.getInputArguments();
' #txt
Ts0 f167 inParameterMapAction 'out.taskStatesEnumSet=param.aTaskStatesEnumSet;
' #txt
Ts0 f167 outParameterDecl '<java.lang.Boolean aTaskHierarchyFilterSelectionConfirmed,ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyFilters aTaskHierarchyFilters> result;
' #txt
Ts0 f167 outParameterMapAction 'result.aTaskHierarchyFilterSelectionConfirmed=in.taskHierarchyFilterSelectionConfirmed;
result.aTaskHierarchyFilters=in.taskHierarchyFilters;
' #txt
Ts0 f167 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/tasksFilters48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksFiltersHeaderTitle\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksFiltersHeaderText\\\")%>\";\n"/initScript ""}}' #txt
Ts0 f167 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filterConsideringTaskStates(EnumSet)</name>
        <nameStyle>36,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f167 158 46 20 20 13 0 #rect
Ts0 f167 @|RichDialogInitStartIcon #fIcon
Ts0 @PushWFArc f168 '' #zField
Ts0 f168 expr out #txt
Ts0 f168 104 66 104 108 #arcP
Ts0 @PushWFArc f81 '' #zField
Ts0 f81 expr out #txt
Ts0 f81 168 66 122 113 #arcP
Ts0 f81 1 168 96 #addKink
Ts0 f81 1 0.18186264538018426 0 0 #arcLabel
Ts0 @PushWFArc f169 '' #zField
Ts0 f169 expr out #txt
Ts0 f169 104 204 104 259 #arcP
Ts0 @PushWFArc f7 '' #zField
Ts0 f7 expr out #txt
Ts0 f7 104 132 104 180 #arcP
Ts0 @PushWFArc f170 '' #zField
Ts0 f170 expr out #txt
Ts0 f170 256 98 122 192 #arcP
Ts0 f170 1 256 192 #addKink
Ts0 f170 1 0.049939791473323676 0 0 #arcLabel
Ts0 @PushWFArc f3 '' #zField
Ts0 f3 expr out #txt
Ts0 f3 432 74 432 156 #arcP
Ts0 @RichDialogEnd f79 '' #zField
Ts0 f79 type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
Ts0 f79 guid 11938C362E4F0180 #txt
Ts0 f79 715 259 26 26 14 0 #rect
Ts0 f79 @|RichDialogEndIcon #fIcon
Ts0 @PushWFArc f171 '' #zField
Ts0 f171 expr out #txt
Ts0 f171 603 140 719 262 #arcP
Ts0 @PushWFArc f163 '' #zField
Ts0 f163 expr out #txt
Ts0 f163 881 79 736 261 #arcP
Ts0 f10 mainOut f36 tail #connect
Ts0 f36 head f35 in #connect
Ts0 f38 head f37 mainIn #connect
Ts0 f13 mainOut f45 tail #connect
Ts0 f45 head f44 in #connect
Ts0 f46 head f43 mainIn #connect
Ts0 f16 mainOut f49 tail #connect
Ts0 f49 head f48 in #connect
Ts0 f50 head f47 mainIn #connect
Ts0 f19 mainOut f52 tail #connect
Ts0 f52 head f51 in #connect
Ts0 f22 mainOut f54 tail #connect
Ts0 f54 head f53 in #connect
Ts0 f25 mainOut f56 tail #connect
Ts0 f56 head f55 in #connect
Ts0 f28 mainOut f58 tail #connect
Ts0 f58 head f57 in #connect
Ts0 f63 head f62 mainIn #connect
Ts0 f64 head f61 mainIn #connect
Ts0 f65 head f60 mainIn #connect
Ts0 f66 head f59 mainIn #connect
Ts0 f0 mainOut f39 tail #connect
Ts0 f39 head f34 in #connect
Ts0 f42 head f41 mainIn #connect
Ts0 f34 out f85 tail #connect
Ts0 f85 head f84 in #connect
Ts0 f34 out f42 tail #connect
Ts0 f84 out f40 tail #connect
Ts0 f40 head f33 mainIn #connect
Ts0 f84 out f89 tail #connect
Ts0 f89 head f87 mainIn #connect
Ts0 f35 out f91 tail #connect
Ts0 f91 head f90 in #connect
Ts0 f35 out f38 tail #connect
Ts0 f90 out f77 tail #connect
Ts0 f77 head f75 mainIn #connect
Ts0 f90 out f94 tail #connect
Ts0 f94 head f92 mainIn #connect
Ts0 f44 out f99 tail #connect
Ts0 f99 head f98 in #connect
Ts0 f44 out f46 tail #connect
Ts0 f98 out f70 tail #connect
Ts0 f70 head f69 mainIn #connect
Ts0 f98 out f100 tail #connect
Ts0 f100 head f96 mainIn #connect
Ts0 f48 out f103 tail #connect
Ts0 f103 head f102 in #connect
Ts0 f48 out f50 tail #connect
Ts0 f102 out f72 tail #connect
Ts0 f72 head f71 mainIn #connect
Ts0 f102 out f106 tail #connect
Ts0 f106 head f105 mainIn #connect
Ts0 f51 out f109 tail #connect
Ts0 f109 head f108 in #connect
Ts0 f51 out f63 tail #connect
Ts0 f108 out f67 tail #connect
Ts0 f67 head f12 mainIn #connect
Ts0 f108 out f112 tail #connect
Ts0 f112 head f111 mainIn #connect
Ts0 f53 out f115 tail #connect
Ts0 f115 head f114 in #connect
Ts0 f53 out f64 tail #connect
Ts0 f114 out f73 tail #connect
Ts0 f73 head f68 mainIn #connect
Ts0 f114 out f118 tail #connect
Ts0 f118 head f116 mainIn #connect
Ts0 f55 out f121 tail #connect
Ts0 f121 head f120 in #connect
Ts0 f55 out f65 tail #connect
Ts0 f120 out f83 tail #connect
Ts0 f83 head f82 mainIn #connect
Ts0 f120 out f124 tail #connect
Ts0 f124 head f122 mainIn #connect
Ts0 f57 out f127 tail #connect
Ts0 f127 head f126 in #connect
Ts0 f57 out f66 tail #connect
Ts0 f126 out f31 tail #connect
Ts0 f31 head f9 mainIn #connect
Ts0 f126 out f130 tail #connect
Ts0 f130 head f128 mainIn #connect
Ts0 f33 mainOut f107 tail #connect
Ts0 f107 head f104 mainIn #connect
Ts0 f104 mainOut f32 tail #connect
Ts0 f32 head f8 mainIn #connect
Ts0 f87 mainOut f110 tail #connect
Ts0 f110 head f104 mainIn #connect
Ts0 f75 mainOut f117 tail #connect
Ts0 f117 head f113 mainIn #connect
Ts0 f113 mainOut f76 tail #connect
Ts0 f76 head f11 mainIn #connect
Ts0 f92 mainOut f119 tail #connect
Ts0 f119 head f113 mainIn #connect
Ts0 f69 mainOut f123 tail #connect
Ts0 f123 head f86 mainIn #connect
Ts0 f86 mainOut f15 tail #connect
Ts0 f15 head f14 mainIn #connect
Ts0 f96 mainOut f125 tail #connect
Ts0 f125 head f86 mainIn #connect
Ts0 f71 mainOut f132 tail #connect
Ts0 f132 head f88 mainIn #connect
Ts0 f88 mainOut f18 tail #connect
Ts0 f18 head f17 mainIn #connect
Ts0 f105 mainOut f133 tail #connect
Ts0 f133 head f88 mainIn #connect
Ts0 f12 mainOut f134 tail #connect
Ts0 f134 head f93 mainIn #connect
Ts0 f93 mainOut f21 tail #connect
Ts0 f21 head f20 mainIn #connect
Ts0 f111 mainOut f135 tail #connect
Ts0 f135 head f93 mainIn #connect
Ts0 f68 mainOut f136 tail #connect
Ts0 f136 head f95 mainIn #connect
Ts0 f95 mainOut f24 tail #connect
Ts0 f24 head f23 mainIn #connect
Ts0 f116 mainOut f137 tail #connect
Ts0 f137 head f95 mainIn #connect
Ts0 f82 mainOut f138 tail #connect
Ts0 f138 head f97 mainIn #connect
Ts0 f97 mainOut f27 tail #connect
Ts0 f27 head f26 mainIn #connect
Ts0 f122 mainOut f139 tail #connect
Ts0 f139 head f97 mainIn #connect
Ts0 f9 mainOut f131 tail #connect
Ts0 f131 head f129 mainIn #connect
Ts0 f129 mainOut f30 tail #connect
Ts0 f30 head f29 mainIn #connect
Ts0 f128 mainOut f140 tail #connect
Ts0 f140 head f129 mainIn #connect
Ts0 f101 mainOut f144 tail #connect
Ts0 f144 head f143 in #connect
Ts0 f146 head f145 mainIn #connect
Ts0 f143 out f148 tail #connect
Ts0 f148 head f147 in #connect
Ts0 f143 out f146 tail #connect
Ts0 f149 mainOut f150 tail #connect
Ts0 f150 head f141 mainIn #connect
Ts0 f151 head f149 mainIn #connect
Ts0 f147 out f153 tail #connect
Ts0 f153 head f152 mainIn #connect
Ts0 f147 out f151 tail #connect
Ts0 f152 mainOut f142 tail #connect
Ts0 f142 head f141 mainIn #connect
Ts0 f154 mainOut f161 tail #connect
Ts0 f161 head f160 mainIn #connect
Ts0 f162 mainOut f156 tail #connect
Ts0 f156 head f155 mainIn #connect
Ts0 f164 mainOut f159 tail #connect
Ts0 f159 head f158 mainIn #connect
Ts0 f80 mainOut f5 tail #connect
Ts0 f5 head f78 mainIn #connect
Ts0 f1 mainOut f168 tail #connect
Ts0 f168 head f4 mainIn #connect
Ts0 f167 mainOut f81 tail #connect
Ts0 f81 head f4 mainIn #connect
Ts0 f6 mainOut f169 tail #connect
Ts0 f169 head f2 mainIn #connect
Ts0 f4 mainOut f7 tail #connect
Ts0 f7 head f6 mainIn #connect
Ts0 f166 mainOut f170 tail #connect
Ts0 f170 head f6 mainIn #connect
Ts0 f74 mainOut f3 tail #connect
Ts0 f3 head f80 mainIn #connect
Ts0 f160 mainOut f171 tail #connect
Ts0 f171 head f79 mainIn #connect
Ts0 f157 mainOut f163 tail #connect
Ts0 f163 head f79 mainIn #connect
>Proto Ts0 Ts0 TasksFiltersSelectProcess #zField
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect.TasksFiltersSelectData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.caseProcessCategoryRelationalOperatorComboBox.listData=in.caseProcessCategoriesRelationalOperatorsList;
panel.caseProcessCategoriesComboBox.listData=in.caseProcessCategoriesList;
panel.caseProcessesComboBox.listData=in.caseProcessesList;
panel.caseProcessRelationalOperatorComboBox.listData=in.caseProcessesRelationalOperatorsList;
panel.caseTypeRelationalOperatorComboBox.listData=in.caseTypesRelationalOperatorsList;
panel.caseSubTypeRelationalOperatorComboBox.listData=in.caseSubTypesRelationalOperatorsList;
panel.businessStartTimestampRelationalOperatorComboBox.listData=in.businessDateTimeStartsRelationalOperatorsList;
panel.businessMainContactRelationalOperatorComboBox.listData=in.businessMainContactsRelationalOperatorsList;
panel.taskNameRelationalOperatorComboBox.listData=in.taskNamesRelationalOperatorsList;
panel.taskKindRelationalOperatorComboBox.listData=in.taskKindsRelationalOperatorsList;
panel.businessCreatorUserRelationalOperatorComboBox.listData=in.businessCreatorUsersRelationalOperatorsList;
panel.caseTypesComboBox.listData=in.caseTypesList;
panel.caseSubTypesComboBox.listData=in.caseSubTypesList;
panel.businessStartTimestampsComboBox.listData=in.businessDateTimeStartsList;
panel.businessMainContactsComboBox.listData=in.businessMainContactsList;
panel.taskNamesComboBox.listData=in.taskNamesList;
panel.taskKindsComboBox.listData=in.taskKindsList;
panel.businessCreatorUsersComboBox.listData=in.businessCreatorUsersList;
panel.businessCreatorUserRelationalOperatorComboBox.enabled=in.businessCreatorUsersRelationalOperatorsEnabled;
panel.businessStartTimestampRelationalOperatorComboBox.enabled=in.businessDateTimeStartsRelationalOperatorsEnabled;
panel.businessMainContactRelationalOperatorComboBox.enabled=in.businessMainContactsRelationalOperatorsEnabled;
panel.caseProcessCategoryRelationalOperatorComboBox.enabled=in.caseProcessCategoriesRelationalOperatorsEnabled;
panel.caseProcessRelationalOperatorComboBox.enabled=in.caseProcessesRelationalOperatorsEnabled;
panel.caseSubTypeRelationalOperatorComboBox.enabled=in.caseSubTypesRelationalOperatorsEnabled;
panel.caseTypeRelationalOperatorComboBox.enabled=in.caseTypesRelationalOperatorsEnabled;
panel.taskKindRelationalOperatorComboBox.enabled=in.taskKindsRelationalOperatorsEnabled;
panel.taskNameRelationalOperatorComboBox.enabled=in.taskNamesRelationalOperatorsEnabled;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
