package ch.ivyteam.ivy.utils;

import java.util.Arrays;

import ch.ivyteam.ivy.scripting.objects.List;

/**
 * Generates a list of files of the desired size.
 * @author kvg
 */
public class FileListGenerator 
{
	/**
	 * Recursively gets a list of file names of maximum size from the 
	 * specified root directory of the hard disk. If no root directory
	 * is specified (i.e. <code>null</code>) then the first drive
	 * will be taken instead. Hidden files and directories are not
	 * part of the returned list.
	 * @param rootDir the root dir for file gathering
	 * @param maxSize maximum size of the list to return
	 * @return list of files, smaller or equal to specified size
	 */
	public static List<String> getFileNameList(String rootDir, int maxSize)
	{
		List<String> fileNames = List.create(String.class);
		for (java.io.File file : getJavaFileList(rootDir, maxSize))
		{
			fileNames.add(file.getName());
		}
		return fileNames;
	}
	
	/**
	 * Recursively gets a list of files of maximum size from the specified
	 * root directory of the hard disk. If no root directory
	 * is specified (i.e. <code>null</code>) then the first drive
	 * will be taken instead. Hidden files and directories are not
	 * part of the returned list.
	 * @param rootDir the root dir for file gathering
	 * @param maxSize maximum size of the list to return
	 * @return list of files, smaller or equal to specified size
	 */
	public static List<java.io.File> getJavaFileList(String rootDir, int maxSize)
	{
		java.io.File f;
		java.io.File[] children;
		
		List<java.io.File> files = List.create(java.io.File.class);
		List<java.io.File> todo = List.create(java.io.File.class);

		if (rootDir == null)
		{
			todo.add(java.io.File.listRoots()[0]);
		}
		else
		{
			todo.add(new java.io.File(rootDir));
		}
		
		while (!todo.isEmpty() && maxSize-- > 0)
		{
			f = todo.remove(0);
			if (f.isHidden())
			{
				// skip
			}
			if (f.isDirectory())
			{
				// schedule children
				children = f.listFiles();
				if (children != null)
				{
					todo.addAll(Arrays.asList(children));
				}
			}
			else
			{
				// keep
				files.add(f);
			}
		}
		return files;
	}
}
