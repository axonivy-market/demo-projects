package ch.ivyteam.ivy.addons.commondialogs.ErrorDialog;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashSet;

import ch.ivyteam.ivy.addons.data.technical.IvyResultStatus;
/**
 * 
 * @author tirib
 * @since 2010/07/05
 *
 */
public class ErrorDialogHelper {

	/**
	 * It return the formatted string representation of the IvyResultStatus
	 * 
	 * @param ivyResultStatus is the source to format
	 * @return formatted result to display as "error detail"
	 */
	public static String writeIvyResultStatusToString(IvyResultStatus ivyResultStatus)
	{		
		// print out the IvyResultStatus
		StringWriter stringWriter = new StringWriter(5000);
		PrintWriter printer = new PrintWriter(stringWriter);

		// ensure that there is no duplicate IvyResultStatus objects
		HashSet<IvyResultStatus> ivyResultStatusHashSet = new HashSet<IvyResultStatus>();

		while (ivyResultStatus != null && ivyResultStatusHashSet.add(ivyResultStatus))
		{	
			stringWriter.write("MESSAGE: " + ivyResultStatus.getMessage() + "\n");
			stringWriter.write("CODE: " + ivyResultStatus.getCode() + "\n");
			stringWriter.write("SEVERITY: " + ivyResultStatus.getSeverity().toString() + "\n");
			stringWriter.write("DETAIL:" + ivyResultStatus.getDetail() + "\n");				
			
			// if the Java exception is available, the include it to the output
			if (ivyResultStatus.getJavaException() != null)
			{
				stringWriter.write("JAVA EXCEPTION:\n");
				ivyResultStatus.getJavaException().printStackTrace(printer);
			}
			
			// get the next element of IvyResultStatus stack
			ivyResultStatus = ivyResultStatus.getIvyResultStatusStack();
			stringWriter.write("\n\n");
		}

		// removes all of the elements from this set
		ivyResultStatusHashSet.clear();

		// write the result to String attribute
		return stringWriter.toString();		
	}
}
