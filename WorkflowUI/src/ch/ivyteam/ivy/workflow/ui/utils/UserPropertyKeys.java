package ch.ivyteam.ivy.workflow.ui.utils;


public class UserPropertyKeys {

	
	/**
	 * method create a CMS uri based on the property key by replacing all '.' characters by '/'
	 * example:
	 * 	propertyKey		: "ch.ivyteam.ivy.workflow.ui.task.tasksSortedByPriority"
	 *  CMS uri will be	: "/ch/ivyteam/ivy/workflow/ui/task/tasksSortedByPriority"
	 *  
	 */	
	
	
	public static final String TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY = "xivy.workflow.ui.params.tasksSortedByPriority";
	public static final String TASKS_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/task/parameters/tasksSortedByPriority";
	
	
	public static final String TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY = "xivy.workflow.ui.params.tasksHierarchyLayoutIndex";
	public static final String TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/task/parameters/tasksHierarchyLayoutIndex";
	
	
	public static final String IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY = "xivy.workflow.ui.params.isMultipleTaskListMode";
	public static final String IS_MULTIPLE_TASKLIST_MODE_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/task/parameters/isMultipleTaskListMode";
	
	

	
	public static final String CASES_SORTED_BY_PRIORITY_PROPERTY_KEY = "xivy.workflow.ui.params.casesSortedByPriority";
	public static final String CASES_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/case/parameters/casesSortedByPriority";
	
	
	
	public static final String CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY = "xivy.workflow.ui.params.casesHierarchyLayoutIndex";
	public static final String CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/case/parameters/casesHierarchyLayoutIndex";
	
	
	public static final String IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY = "xivy.workflow.ui.params.isMultipleCaseListMode";
	public static final String IS_MULTIPLE_CASELIST_MODE_PROPERTY_CMS_DEFAULT_VALUE = "/ch/ivyteam/ivy/workflow/ui/case/parameters/isMultipleCaseListMode";

}
