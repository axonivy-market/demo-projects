package ch.ivyteam.demo.jpa.demos.ivy;

public enum CustomField {
	/**
	 * Embed GUI in current frame.
	 * 
	 * Set this to <code>false</code> in cases of a GUI to avoid having a second IFrame.
	 */
	EMBED_IN_FRAME("embedInFrame"),
	PROJECT_COMPLEXITY_CLASS("projectComplexityClass"),
	PROJECT_ID("projectId"),
	PROJECT_NAME("projectName"),
	PROJECT_NUMBER("projectNumber"),
	PROJECT_RISK_PROJECT("projectRiskProject"),
	QA_STATUS_REPORT_PERIOD("projectQAReportPeriod"),
	PROJECT_STATUS_REPORT_PERIOD("projectStatusReportPeriod"),
	RISK_CATALOG_REPORT_DATE("riskCatalogReportDate"),
	WORKFLOW_ID("workflowId"),
	;

	private String fieldName;

	private CustomField(String fieldName) {
		this.fieldName = fieldName;
	}

	/**
	 * Get the field name.
	 * 
	 * This is the name to use as customField name.
	 * 
	 * @return
	 */
	public String getFieldName() {
		return fieldName;
	}
}
