/**
 * 
 */
package ch.ivyteam.ivy.addons.docfactory;

import java.io.File;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * @author ec<br>
 * @since 27.10.2009<br>
 * This class containc utils static methods that helps java.io.File manipulation
 */
public final class FileUtil {
	
	/**
     * Formats a given path in a path with the right system File.separator characters<br>
     * It doesn't check if there is a File.separator at the end of the path.
     * @param path
     * @return formatted path with the system File.separator
     */
    public static String formatPath(String path)
    {
        if(path != null && !path.equals(""))
        {
            path = path.replace("\\", java.io.File.separator);
            path = path.replace("/", java.io.File.separator);
        }
        return path;
    }
    
    /**
     * Formats a given path in a path with the right system File.separator characters<br>
     * It checks if there is a File.separator at the end of the path. If not it adds one.<br>
     * It checks if the directory exists, if not it makes it.
     * @param path
     * @return formatted path with the system File.separator
     */
    public static String formatPathWithEndSeparator(String path)
    {
        if(path != null && !path.equals(""))
        {
            path = path.replace("\\", java.io.File.separator);
            path = path.replace("/", java.io.File.separator);
            java.io.File serverDir = new java.io.File(path);
            if((serverDir.exists() && !serverDir.isDirectory()) || !serverDir.exists())
                serverDir.mkdirs();
            if(path.lastIndexOf(java.io.File.separator) != path.length() - 1) 
            	path=path+java.io.File.separator;
        }
        return path;
    }
    
    /**
     * Formats a given path in a path with the right system File.separator characters<br>
     * It checks if there is a File.separator at the end of the path. If not it adds one.<br>
     * If the boolean argument is true, it checks if the directory exists and creates it if it doesn't exist.
     * @param path : the path to format with the right end file separator
     * @param createDirIfNotExits boolean telling if has to check for the directory existence
     * @return formatted path with the system File.separator
     */
    public static String formatPathWithEndSeparator(String path, boolean createDirIfNotExits)
    {
        if(path != null && !path.equals(""))
        {
            path = path.replace("\\", java.io.File.separator);
            path = path.replace("/", java.io.File.separator);
            if(createDirIfNotExits){
            	java.io.File serverDir = new java.io.File(path);
            	if((serverDir.exists() && !serverDir.isDirectory()) || !serverDir.exists())
            		serverDir.mkdirs();
            }
            if(path.lastIndexOf(java.io.File.separator) != path.length() - 1) 
            	path=path+java.io.File.separator;
        }
        return path;
    }
    
    /**
     * Returns all the File from a directory whose name is composed by the String p and the given String pattern pat.<br>
     * It is very useful to find the images that are included in an HTML file.<br>
     * For example, if a HTML file named test.html contains test.001.jpeg and test.002.jpeg,<br>
     * it is easy to list those images with getFilesWithPattern("\\.[0-9].*$", "test", "")<br>
     * Of course the name of the images included in the file must follow the given pattern.
     * @param pat : the String pattern used to search the matching Files
     * @param p : the basic name of the file without extension
     * @param serverPath : the path where the file is stored
     * @return an ArrayList of the File whose name match the pattern p+pat
     */
    public static ArrayList<File> getFilesWithPattern(String pat, String p, String serverPath){
    	File files[] = getFiles(serverPath);
    	ArrayList<File> filesMatch = new ArrayList<File>();
    	
    	//Pattern pattern = Pattern.compile(p+"\\.[0-9].*$");
    	Pattern pattern = Pattern.compile(p+pat);
    	for(File f: files){
    		Matcher m = pattern.matcher(f.getName());
    		if(m.matches()){
    			filesMatch.add(f);
    		}
    	}
    	return filesMatch;
    }
    
    /**
     * This method lists all the Files that are in a specified directory.<br>
     * The directory is specified as a String representation of the dirpath
     * @param serverPath : the path on the server that has to be listed (String)
     * @return File[]: an array of the files that are contained into the directory
     */
    public static File[] getFiles(String serverPath)
    {
    	formatPath(serverPath);
        File dir = new File(serverPath);
        if(!dir.exists())
            dir.mkdirs();
        File files[] = dir.listFiles();
        int j = 0;
        for(int i = 0; i < files.length; i++)
            if(!files[i].isDirectory())
                j++;

        File arrayOfFiles[] = new File[j];
        j = 0;
        for(int i = 0; i < files.length; i++)
            if(!files[i].isDirectory())
            {
                arrayOfFiles[j] = files[i];
                j++;
            }
        return arrayOfFiles;
    }
    
    /**
     * check if a String is a valid file name.<br>
     * In the filename we don't accept \/:<>*?|", tab, backspace, returnline and null<br>
     * @param filename
     * @return true if the gibven File name is valid, else false
     */
    public static boolean isFileNameValid(String filename){
    	boolean b = true;
    	if(filename.contains("\\") || 
    		filename.contains("/") || 
    		filename.contains("<") || 
    		filename.contains(">") || 
    		filename.contains("*") ||
    		filename.contains("|") ||
    		filename.contains("?") ||
    		filename.contains(":") ||
    		filename.contains("\b") ||
    		filename.contains("\t") ||
    		filename.contains("\n") ||
    		filename.contains("\0") ||
    		filename.contains("\"") 
    	) b = false;
    	
    	return b;
    }

}
