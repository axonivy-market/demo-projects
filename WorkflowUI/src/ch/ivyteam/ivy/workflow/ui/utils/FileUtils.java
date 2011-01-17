package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.regex.Pattern;



/**
 * 
 * @author tirib
 * The class gives the methods that are used for manipulate the directory name, 
 */
public class FileUtils {
	
	private static final char[] ILLEGAL_CHARACTERS = { '/', '\n', '\r', '\t', '\0', '\f', '`', '?', '\\', '<', '>', '|', '\"', ':', '!', '*'};
	
	private static final String REGEXP_ILLEGAL_CHARACTERS = "/\n\r\t\0\f`?\\\\<>|\":!\\*";
	
	private static final Pattern ILLEGAL_CHARACTERS_PATTERN = Pattern.compile(new String("[^" + REGEXP_ILLEGAL_CHARACTERS+ "]*"));
	
	private static final Pattern CHARACTERS_TO_REPLACE_PATTERN = Pattern.compile(new String("[" + REGEXP_ILLEGAL_CHARACTERS+ "]*"));
	
	
	/**
	 * This method return true if the directory name is valid
	 * @param directoryName is the directory name to validate
	 * @return true or false
	 */
	public static boolean isValidDirectoryName(String directoryName)
	{
		return ILLEGAL_CHARACTERS_PATTERN.matcher(directoryName).matches();
	}
	
	
	/**
	 * 
	 * @param invalidDirectoryName is the directory name to "standardize"
	 * @return the "standardized" directory name
	 */
	public static String standardizeDirectoryName(String invalidDirectoryName)
	{
		return invalidDirectoryName.replaceAll(CHARACTERS_TO_REPLACE_PATTERN.pattern(), "");

	}
	
	
	public static void main(String args[])
	{
		for(int i=0; i<ILLEGAL_CHARACTERS.length; i++)
		{
			String fileName = "Bond " + ILLEGAL_CHARACTERS[i] + "James";
			System.out.println(fileName + " is valid file name? : " + 
						isValidDirectoryName(fileName) +  
						standardizeDirectoryName(fileName));
		}
	}

}