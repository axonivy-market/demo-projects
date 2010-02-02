/**
 * 
 */
package ch.ivyteam.ivy.addons.docfactory;

/**
 * @author ec<br>
 * @since 27.10.2009<br>
 * This Class represents a MergeField in a document Template<br>
 * like in a Microsoft Office dot document.
 */
public class TemplateMergeField {
	/** The MergeField Name*/
	private String mergeFieldName="";
	/** The MergeField value that should be insterted into the Merge field*/
	private String mergeFieldValue="";
	
	/**
	 * Constructor with two parameters : the mergeFieldName and its value.
	 * @param _mergeFieldName String
	 * @param _mergeFieldValue String
	 */
	public TemplateMergeField(String _mergeFieldName, String _mergeFieldValue) {
		super();
		this.mergeFieldName = _mergeFieldName;
		this.mergeFieldValue = _mergeFieldValue;
	}
	
	/**
	 * Get the Mergefield name
	 * @return the mergeFieldName
	 */
	public String getMergeFieldName() {
		return mergeFieldName;
	}
	
	/**
	 * set the Mergefield name.
	 * @param mergeFieldName the mergeFieldName to set as String
	 */
	public void setMergeFieldName(String mergeFieldName) {
		this.mergeFieldName = mergeFieldName;
	}
	
	/**
	 * Get the merge field value.
	 * @return the mergeFieldValue as String
	 */
	public String getMergeFieldValue() {
		return mergeFieldValue;
	}
	
	/**
	 * Set the merge field Value
	 * @param mergeFieldValue the mergeFieldValue to set as string
	 */
	public void setMergeFieldValue(String mergeFieldValue) {
		this.mergeFieldValue = mergeFieldValue;
	}

}
