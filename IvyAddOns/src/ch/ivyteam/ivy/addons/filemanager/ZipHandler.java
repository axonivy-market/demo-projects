/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.Deflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.List;

/**
 * @author ec
 * this is a zip handler that allows creating zip archives and listing them with static methods.
 */
public class ZipHandler {
	
	
	/**
	 * Make a zip File archive
	 * @param zipPath: the folder path where to put the Zip File
	 * @param zipName: the name of the Zip File, with or without .zip extension
	 * @param files: an ArrayList of File that have to be inserted into the zip archive
	 * @return the File Object Zip Archive, null if exception occured.<br> All the files are going to be inserted at the root of the Zip Archive.
	 */
	public static java.io.File makeZip(String zipPath, String zipName, ArrayList<java.io.File> files){
		java.io.File myZip = null;
		
		//make the path of the zip File
		String path = (zipPath==null || zipPath.trim().equalsIgnoreCase(""))?"myZipFolder/":FileHandler.formatPathWithEndSeparator(zipPath,true);
		//check the given name and add zip type if necessary
		String name = (zipName==null || zipName.trim().equalsIgnoreCase(""))?"myZip":zipName;
		name = (name.endsWith(".zip"))?name:name+".zip";
		name=path+name;
		
		if(files !=null && !files.isEmpty()){
			Iterator<java.io.File> iter = files.iterator();
			byte[] buf = new byte[1024];
			
			try{
				ZipOutputStream out = new ZipOutputStream(new FileOutputStream(name));
				out.setLevel(Deflater.DEFAULT_COMPRESSION);
				while(iter.hasNext()){
					java.io.File f = iter.next();
					//if current file pointed by Iterator doesn't exit, try with the next one
					if(!f.exists()) continue;
					if(f.isDirectory()) continue;
					
					FileInputStream in = new FileInputStream(f);
					
					out.putNextEntry(new ZipEntry(f.getName()));
					//Transfer bytes from the file to the ZIP file
		            int len;
		            while ((len = in.read(buf)) > 0) {
		                out.write(buf, 0, len);
		            }
		            
		            out.closeEntry();
		            in.close();
				}
				out.close();
				myZip = new java.io.File(name);
			}catch(IOException e){
				Ivy.log().error("IOException in ch.xpertline.ria.util.file.ZipHandler: "+e.getMessage());
			}
		}
		return myZip;
	}
	
	/**
	 * Make a zip File archive
	 * @param zipPath: the folder path where to put the Zip File
	 * @param zipName: the name of the Zip File, with or without .zip extension
	 * @param filesName: an ArrayList of String files names that have to be inserted into the zip archive.<br>
	 * The fileName should include the path of the files.
	 * @return the File Object Zip Archive, null if exception occured.<br> The Folder Structure from the files will be reflected into the zip.
	 */
	public static java.io.File makeZipWithFileNames(String zipPath, String zipName, ArrayList<String> filesName){
		java.io.File myZip = null;
		
		//make the path of the zip File
		String path = (zipPath==null || zipPath.trim().equalsIgnoreCase(""))?"myZipFolder/":FileHandler.formatPathWithEndSeparator(zipPath,true);
		//check the given name and add zip type if necessary
		String name = (zipName==null || zipName.trim().equalsIgnoreCase(""))?"myZip":zipName;
		name = (name.endsWith(".zip"))?name:name+".zip";
		name=path+name;
		
		if(filesName !=null && !filesName.isEmpty()){
			Iterator<String> iter = filesName.iterator();
			byte[] buf = new byte[1024];
			
			try{
				ZipOutputStream out = new ZipOutputStream(new FileOutputStream(name));
				out.setLevel(Deflater.DEFAULT_COMPRESSION);
				while(iter.hasNext()){
					String s = iter.next();
					java.io.File f = new java.io.File(s);
					//if current file pointed by Iterator doesn't exit, try with the next one
					if(!f.exists()) continue;
					if(f.isDirectory()) continue;
					
					FileInputStream in = new FileInputStream(s);
					
					out.putNextEntry(new ZipEntry(s));
					//Transfer bytes from the file to the ZIP file
		            int len;
		            while ((len = in.read(buf)) > 0) {
		                out.write(buf, 0, len);
		            }

		            out.closeEntry();
		            in.close();
				}
				out.close();
				myZip = new java.io.File(name);
			}catch(IOException e){
				Ivy.log().error("IOException in ch.xpertline.ria.util.file.ZipHandler: "+e.getMessage());
			}
		}
		return myZip;
	}
	
	/**
	 * list all the files contained into a zip File. This method is not recursive
	 * @param zip: the zip archive to list
	 * @return the list of file names contained into the zip
	 */
	public static List<String> listFileNamesInZip(java.io.File zip){
		List<String> files = List.create(String.class);
		//check if zip not null, exists and is a zip file
		if(zip != null && zip.exists() && zip.getName().endsWith(".zip")){
			try{
				//Open Zip file for reading
		      	 ZipFile zipFile = new ZipFile(zip, ZipFile.OPEN_READ);
		      	 //Create an enumeration of the entries in the zip file
		      	 Enumeration<? extends ZipEntry> zipFileEntries = zipFile.entries();

		      	 // Process each entry
		      	 while (zipFileEntries.hasMoreElements())
		      	 {
		      		ZipEntry entry = zipFileEntries.nextElement();
		      		
		      		files.add(entry.getName());
		      	 }
			}catch(IOException e){
				
			}
		}
		
		return files;
	}

}
