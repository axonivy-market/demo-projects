/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database.security;

import java.util.ArrayList;
import java.util.Scanner;

import ch.ivyteam.ivy.addons.filemanager.FolderOnServer;
import ch.ivyteam.ivy.scripting.objects.List;

/**
 * @author ec
 * Abstract Class that declares the methods to control the security in the FileManagement
 */
public abstract class AbstractDirectorySecurityController {
	
	/**
	 * final parameters to easily points the different rights managed in the File Management System
	 */
	public final int MANAGE_SECURITY_RIGHT = 1;
	public final int OPEN_DIRECTORY_RIGHT = 2;
	public final int UPDATE_DIRECTORY_RIGHT = 3;
	public final int DELETE_DIRECTORY_RIGHT = 4;
	public final int WRITE_FILES_RIGHT = 5;
	public final int DELETE_FILES_RIGHT = 6;
	
	/**
	 * Activates the security on the given directory.
	 * @param _path: the path of the directory
	 * @return true if operation succeeded, else false.
	 * @throws Exception
	 */
	public abstract boolean activateSecurityOnDirectory(String _path) throws Exception;
	
	/**
	 * Deactivates the security on the given directory. The directory will not be protected anymore.
	 * @param _path: the path of the directory
	 * @return true if operation succeeded, else false.
	 * @throws Exception
	 */
	public abstract boolean deactivateSecurityOnDirectory(String _path) throws Exception;
	
	
	/**
	 * Tells if a directory is protected or not.<br>
	 * In general the security should be able to be switched on or off on a particular directory.<br>
	 * @param _path: the directory path
	 * @return: true if the security is on or false if it is off on this particular directory.
	 * @throws Exception
	 */
	public abstract boolean isDirectoryProtected(String _path) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to open a given directory.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can open the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserOpenDirectory(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to Update a given directory (rename and create new sub-directories).<br>
	 * This right implies the user can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can update the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserUpdateDirectory(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to delete a given directory.<br>
	 * This right implies the user can openDirectory and can update the directory.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can delete the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserDeleteDirectory(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to manage the security on a given directory.<br>
	 * This right implies all the other rights.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can manage the security on the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserManageDirectorySecurity(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to edit/Rename/Copy/Upload files in a given directory.<br>
	 * This right implies the user can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can edit/Rename/Copy/Upload files in the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserEditFilesInDirectory(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if user has at least one Ivy Role granted to delete/move files in a given directory.<br>
	 * This right implies the user can openDirectory and user can edit files.
	 * @param _path: the directory path
	 * @param _ivyUserName: ivy user name
	 * @return: true if the user can delete/move files in the directory. Else false.<br> 
	 * Returns false if the _path or _ivyUserName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canUserDeleteFilesInDirectory(String _path, String _ivyUserName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to open a given directory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can open the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception
	 */
	public abstract boolean canRoleOpenDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to update (rename + create new sub-directories) a given directory.<br>
	 * This right implies the user can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can update the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean canRoleUpdateDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to delete a given directory.<br>
	 * This right implies the user can openDirectory and can update the directory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can delete the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean canRoleDeleteDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to manage the security on a given directory.<br>
	 * This right implies all the other rights.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can manage the security of the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean canRoleManageDirectorySecurity(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to edit/Rename/Copy/Upload files in a given directory.<br>
	 * This right implies the user can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can edit/Rename/Copy/Upload files in the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean canRoleEditFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Check if a given Ivy Role is granted to delete/move files in a given directory.<br>
	 * This right implies the user can openDirectory and edit files.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role can delete/move files in the directory. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean canRoleDeleteFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to open the given directory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToOpenDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to update (rename + create sub-directories) the given directory.<br>
	 * This will grant also can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToUpdateDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to delete the given directory.<br>
	 * This will grant also can openDirectory and can updateDirectory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToDeleteDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to manage the given directory's security.<br>
	 * This will grant also all the other rights.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToManageDirectorySecurity(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to edit/rename/copy/upload the files in the given directory.<br>
	 * This will grant also can openDirectory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToEditFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Grant the given Ivy Role the right to delete the files in the given directory.<br>
	 * This will grant also can openDirectory and can writeFiles.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be granted. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean addRoleToDeleteFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Disallow the given Ivy Role the right to open the given directory.<br>
	 * Implies disallowing all the other rights.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromOpenDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Disallow the given Ivy Role the right to update the given directory.<br>
	 * Implies disallowing the delete directory and manage security Right.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromUpdateDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Disallow the given Ivy Role the right to delete the given directory.<br>
	 * Implies disallowing the manage security Right.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromDeleteDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Disallow the given Ivy Role the right to manage the security on the given directory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromManageDirectorySecurity(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Disallow the given Ivy Role the right to edit the files in the given directory.<br>
	 * Implies disallowing the delete files right.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromEditFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * 
	 * Disallow the given Ivy Role the right to delete the files in the given directory.
	 * @param _path: the directory path
	 * @param _ivyRoleName: ivy role name 
	 * @return: true if the role could be disallowed. Else false.<br> 
	 * Returns false if the _path or _ivyRoleName is Null or don't exist.
	 * @throws Exception if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean removeRoleFromDeleteFilesInDirectory(String _path, String _ivyRoleName) throws Exception;
	
	/**
	 * Set the given right on the directory denoted by the given path.<br>
	 * The right type is given by one of the following numeric parameter: <br>
	 * <ul>
	 * <li>public final int MANAGE_SECURITY_RIGHT = 1; (implies all the other rights)
	 * <li>public final int OPEN_DIRECTORY_RIGHT = 2;
	 * <li>public final int UPDATE_DIRECTORY_RIGHT = 3; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_DIRECTORY_RIGHT = 4; (implies OPEN_DIRECTORY_RIGHT and UPDATE DIRECTORY)
	 * <li>public final int WRITE_FILES_RIGHT = 5; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_FILES_RIGHT = 6; (implies OPEN_DIRECTORY_RIGHT and WRITE FILES)
	 * </ul>
	 * @param _path: the directory path
	 * @param rightType: int indicating the right
	 * @param allowedIvyRoleNames: list of Ivy Role names removed from the given right
	 * @return the list of the ivy roles granted on the right after the operation. <br>
	 * The List should be equal to the given allowedIvyRoleNames List if all succeeded.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract List<String> setRightOnDirectory(String _path, int rightType, List<String> allowedIvyRoleNames) throws Exception;
	
	/**
	 * Grants a given IvyRole a right on a given directory.<br>
	 * The right type is given by one of the following numeric parameter: <br>
	 * <ul>
	 * <li>public final int MANAGE_SECURITY_RIGHT = 1; (implies all the other rights)
	 * <li>public final int OPEN_DIRECTORY_RIGHT = 2;
	 * <li>public final int UPDATE_DIRECTORY_RIGHT = 3; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_DIRECTORY_RIGHT = 4; (implies OPEN_DIRECTORY_RIGHT and UPDATE DIRECTORY)
	 * <li>public final int WRITE_FILES_RIGHT = 5; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_FILES_RIGHT = 6; (implies OPEN_DIRECTORY_RIGHT and WRITE FILES)
	 * </ul>
	 * @param _path: the directory path
	 * @param rightType: int indicating the right
	 * @param ivyRoleName: the Ivy Role Name to grant
	 * @return the list of the ivy roles granted on the right after the operation. <br>
	 * This method ensures that the admin role is present in the list of granted roles.<br>
	 * The admin Role ist returned by the method getFileManagerAdminRoleName().<br>
	 * The List should contains the ivyRoleName if the operation succeeded.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract List<String> AddRightOnDirectoryForIvyRole(String _path, int rightType, String ivyRoleName) throws Exception;
	
	/**
	 * Removes the given right on the directory denoted by the given path.<br>
	 * The right type is given by one of the following numeric parameter: <br>
	 * <ul>
	 * <li>public final int MANAGE_SECURITY_RIGHT = 1; (implies all the other rights)
	 * <li>public final int OPEN_DIRECTORY_RIGHT = 2;
	 * <li>public final int UPDATE_DIRECTORY_RIGHT = 3; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_DIRECTORY_RIGHT = 4; (implies OPEN_DIRECTORY_RIGHT and UPDATE DIRECTORY)
	 * <li>public final int WRITE_FILES_RIGHT = 5; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_FILES_RIGHT = 6; (implies OPEN_DIRECTORY_RIGHT and WRITE FILES)
	 * </ul>
	 * @param _path: the directory path
	 * @param rightType: int indicating the right
	 * @param disallowedIvyRoleNames: list of Ivy Role names granted to the given right
	 * @return the list of the ivy roles granted on the right after the operation. <br>
	 * The List should contain none of the roles name from disallowedIvyRoleNames List if all succeeded.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract List<String> removeRightOnDirectory(String _path, int rightType, List<String> disallowedIvyRoleNames) throws Exception;
	
	/**
	 * Returns the list of ivy Role names granted for the given right type.
	 * The right type is given by one of the following numeric parameter: <br>
	 * <ul>
	 * <li>public final int MANAGE_SECURITY_RIGHT = 1; (implies all the other rights)
	 * <li>public final int OPEN_DIRECTORY_RIGHT = 2;
	 * <li>public final int UPDATE_DIRECTORY_RIGHT = 3; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_DIRECTORY_RIGHT = 4; (implies OPEN_DIRECTORY_RIGHT and UPDATE DIRECTORY)
	 * <li>public final int WRITE_FILES_RIGHT = 5; (implies OPEN_DIRECTORY_RIGHT)
	 * <li>public final int DELETE_FILES_RIGHT = 6; (implies OPEN_DIRECTORY_RIGHT and WRITE FILES)
	 * </ul>
	 * @param _path: the directory path
	 * @param rightType: int indicating the right
	 * @return the list of ivy Role names granted for the given right type.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract List<String> getRolesNamesAllowedForRightOnDirectory(String _path, int rightType) throws Exception;
	
	/**
	 * Creates a directory that nobody can delete or rename, all the files rights are granted to the given list of Ivy roles.
	 * @param directoryPath: the directory path to create
	 * @param allowedIvyRoleNames: List of Ivy roles that can open and work on the files in this directory.
	 * @return the ch.ivyteam.ivy.addons.filemanager.FolderOnServer created in this operation.<br> 
	 * Can be null under circumstances like: no path or directory already exists. If no IvyRoleNames are provided,<br>
	 * everybody will be able to open this directory and to write and delete the files.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer createIndestructibleDirectory(String directoryPath, List<String> allowedIvyRoleNames) throws Exception;
	
	/**
	 * Creates a directory that everybody can delete or rename, all the files rights are granted to everybody also.
	 * @param directoryPath: the directory path to create
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer createOpenDirectory(String directoryPath) throws Exception;
	
	/**
	 * Creates a directory with detailed security management. 
	 * @param _directoryPath: the path of the new directory
	 * @param grantedIvyRoleNamesToManageRights: list of ivy roles names that are granted to this right.
	 * @param grantedIvyRoleNamesToDeleteDirectory: list of ivy roles names that are granted to this right.
	 * @param grantedIvyRoleNamesToUpdateDirectory: list of ivy roles names that are granted to this right.
	 * @param grantedIvyRoleNamesToOpenDirectory: list of ivy roles names that are granted to this right.
	 * @param grantedIvyRoleNamesToWriteFiles: list of ivy roles names that are granted to this right.
	 * @param grantedIvyRoleNamesToDeleteFiles: list of ivy roles names that are granted to this right.
	 * @return the created ch.ivyteam.ivy.addons.filemanager.FolderOnServer 
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer createDirectory(String _directoryPath, 
			List<String> grantedIvyRoleNamesToManageRights, 
			List<String> grantedIvyRoleNamesToDeleteDirectory,
			List<String> grantedIvyRoleNamesToUpdateDirectory,
			List<String> grantedIvyRoleNamesToOpenDirectory,
			List<String> grantedIvyRoleNamesToWriteFiles,
			List<String> grantedIvyRoleNamesToDeleteFiles) throws Exception;
	
	/**
	 * Creates a directory with the security settings of the parent dir. <br>
	 * If this directory is a root one, then it is the same as createIndestructibleDirectory method. <br>
	 * If this directory's parent does not exist, all the directories (parent and this one) will be created with <br>
	 * the createIndestructibleDirectory method.
	 * @param _directoryPath: the path of the new directory
	 * @return the created ch.ivyteam.ivy.addons.filemanager.FolderOnServer
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer createDirectoryWithParentSecurity(String _directoryPath) throws Exception;
	
	/**
	 * Creates a new Directory with rights driven by the given user.<br>
	 * The roles owned by this user other than 'everybody' will to be able to open the directory and to work on the files (edit + delete).<br>
	 * These roles are not going to be able to delete or rename the directory.<br>
	 * If the user doesn't have any roles other than 'everybody', <br>
	 * than 'everybody' will be able to open the directory and to work on the files (edit + delete). <br>
	 * If the parent directories don't exist, they are going to be created with the same rules.
	 * @param _directoryPath: the directory Path
	 * @param _ivyUserName: the ivyUsername. If null or an empty String, or this userName do not correspond to a valid Ivy User, then an Exception will be thrown.
	 * @return the created ch.ivyteam.ivy.addons.filemanager.FolderOnServer
	 * @throws Exception  if the directory Path is null or an empty String,<br>
	 *  or the userName is null or an empty String, or the userName do not correspond to a valid Ivy User,<br>
	 *  or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer createDirectoryWithUserAsRightsGuideline(String _directoryPath, String _ivyUserName) throws Exception;
	
	/**
	 * Gets the directory with its path.<br>
	 * @param _directoryPath: the directory Path
	 * @return ch.ivyteam.ivy.addons.filemanager.FolderOnServer which path is _directoryPath.<br>
	 * if _directoryPath is null or "" or no directory could be found, then an empty FolderOnServer object<br>
	 * will be returned ( id==0, no path, no name etc...)
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract FolderOnServer getDirectoryWithPath(String _directoryPath) throws Exception;
	
	/**
	 * Retrieves the list of directories (FolderOnServer Objects) under a given Path.<br>
	 * The FolderOnServer Objects contain informations about the given user rights on the different actions (delete directory, open...).<br>
	 * If the given User name is empty or null, the Ivy session User will be used for that.<br>
	 * If the user cannot open one directory, a ch.ivyteam.ivy.addons.filemanager.LockedFolder Object will be put in the list.<br>
	 * LockedFolder Object extends the FolderOnServer Class.
	 * @param rootPath: the path that should be listed. If the rootPath is null or an empty String an empty ArrayList will be returned.
	 * @param ivyUserName: the user name who should be tested against the different rights.
	 * @return the ArrayList of directories (FolderOnServer Objects) under the given Path.
	 * @throws Exception : if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract ArrayList<FolderOnServer> getListDirectoriesUnderPath(String rootPath, String ivyUserName) throws Exception;
	
	/**
	 * Checks if the directory exists.<br>
	 * @param _directoryPath: the directory Path
	 * @return true if the directory exists.<br>
	 * if _directoryPath is null or "" or no directory could be found, then false will be returned.
	 * @throws Exception if the directory Path is null or an empty String,<br>
	 *  Or if an Exception is thrown while accessing and creating the data in the database.
	 */
	public abstract boolean directoryExists(String _directoryPath) throws Exception;
	
	/**
	 * returns the name of the FileManager administrator role name.<br>
	 * Depending on your implementation it can be stored in a global variable, in a file etc...
	 * @return the name of the FileManager administrator Ivy role.
	 * @throws Exception
	 */
	public abstract String getFileManagerAdminRoleName() throws Exception;
	
	/**
	 * tells if the given user can is administrator of the file management security.
	 * @param ivyUserName: the ivy user name
	 * @return true if the user has the Ivy Role returned by getFileManagerAdminRoleName()
	 * @throws Exception
	 */
	public abstract boolean isUserFileManagerAdmin(String ivyUserName) throws Exception;
	
	/**
	 * Formats a given directory path with "/" as separator<br>
	 * so that it is always compatible for Windows, Linux and Mac OS.<br>
	 * The resulting path never ends or begins with "/"<br> 
	 * Example: if you give "\\root\\test\\test1\\" the result will be "root/test/test1".
	 * If you enter "//////", empty String "" will be returned..
	 * @param _path
	 * @return formatted path with "/"
	 */
	public static String formatPathForDirectoryWithoutLastSeparator(String _path)
	{
		if(_path != null && !_path.trim().equals(""))
		{
			_path=_path.trim();
			_path = org.apache.commons.lang.StringUtils.replace(_path,"\\", "/");
			while(_path.endsWith("/")&& _path.length()>1)
			{
				_path=_path.substring(0, _path.length()-1);
			}
			while(_path.startsWith("/") && _path.length()>1)
			{
				_path=_path.substring(1);
			}
			if(_path.startsWith("/"))
			{
				_path="";
			}
		}
		return _path;
	}
	
	/**
	 * returns the parent directory path for directory denoted by the given path.<br>
	 * if the given path is null, is an empty String, or is a root path (no parent), it returns an empty String.
	 * @param path: the directory path
	 * @return the parent directory path
	 */
	public static String getParentDirectoryPath(String path){
		if(path==null || path.trim().length()==0){
			return "";
		}
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path.contains("/")){
			return path.substring(0, path.lastIndexOf("/"));
		}else{
			return "";
		}
	}
	
	/**
	 * Returns a String composed by String members of a list of String objects each separated by a colon.
	 * @param stringList
	 * @return
	 */
	public String returnStringFromList(List<String> stringList)
	{
		if(stringList ==null || stringList.isEmpty()){
			return "";
		}
		StringBuilder sb = new StringBuilder();
		int n = stringList.size()-1;
		for(int i =0; i<n;i++){
			sb.append(stringList.get(i)+",");
		}
		sb.append(stringList.get(n));
		return sb.toString();
	}
	
	/**
	 * makes a List<String> from a String containing tokens separated by a given separator.
	 * @param listString: the String that represents a list. If null or empty an empty list will be returned.
	 * @param separator: the separator, if null "," will be used by default.
	 * @return the List of String elements 
	 */
	public List<String> returnListFromStringWithSeparator(String listString, String separator)
	{
		List<String> stringList = List.create(String.class);
		if(listString==null || listString.trim().length()==0)
		{
			return stringList;
		}
		if(separator==null)
		{
			separator=",";
		}
		Scanner sc = new Scanner(listString);
		sc.useDelimiter(separator);
		while(sc.hasNext())
		{
			stringList.add(sc.next().trim());
		}
		return stringList;
	}
	
	/**
	 * returns the directory name from a directory path.
	 * @param directoryPath: the directory path
	 * @return the directory name from a directory path. Empty String if the directoryPath parameter is Null or an empty String.
	 */
	public String getDirectoryNameFromPath(String directoryPath){
		if(directoryPath==null || directoryPath.trim().length()==0)
		{
			return "";
		}
		directoryPath=formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(!directoryPath.contains("/"))
		{
			return directoryPath;
		}else{
			return directoryPath.substring(directoryPath.lastIndexOf("/")+1);
		}
		
	}
	
	
}
