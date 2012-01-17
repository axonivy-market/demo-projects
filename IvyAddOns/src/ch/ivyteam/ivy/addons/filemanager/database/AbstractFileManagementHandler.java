/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database;

import java.lang.reflect.Constructor;
import java.util.ArrayList;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Tree;
import ch.ivyteam.ivy.addons.filemanager.KeyValuePair;
import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.ReturnedMessage;
import ch.ivyteam.ivy.addons.filemanager.database.security.AbstractDirectorySecurityController;

/**
 * @author ec<br>
 *This Class is an abstract Class. It acts as an Interface to implement the indexation of the files<br>
 *in a File Management System. File indexation doesn't mean, that it handles the Files on the File System.<bR>
 *It keeps just a list of the files stored with their properties (name, path, size, creation user, creation time...).<br>
 *The File List can be stored in a Database, or as an XML File for example.<br>
 *
 */
public abstract class AbstractFileManagementHandler {

	public static final int DATABASE_INDEXATION=1;
	public static final int XML_INDEXATION=2;
	public static final int OTHER_INDEXATION=3;
	public static int indexation_Type=DATABASE_INDEXATION; //default is the use of a database to store the indexation of the files
	
	/**
	 * Flag indicating that the files' content is stored in files on the file system
	 */
	public static final int FILE_STORAGE_FILESYSTEM=1;
	/**
	 * Flag indicating that the files' content is stored in a database
	 */
	public static final int FILE_STORAGE_DATABASE=2;
	/**
	 * variable indicating what kind of file storage has been chosen: File System or Database.
	 */
	public static int file_content_storage_type = FILE_STORAGE_FILESYSTEM;
	
	/**
	 * 
	 * @return
	 */
	public static int getFile_content_storage_type() {
		return file_content_storage_type;
	}

	/**
	 * 
	 * @param fileContentStorageType
	 */
	public static void setFile_content_storage_type(int fileContentStorageType) {
		file_content_storage_type = fileContentStorageType;
	}

	/**
	 * get the Class Object of the current AbstractFileManagementHandler implementation Class
	 * @return the class Object of the current AbstractFileManagementHandler implementation Class
	 */
	public abstract Class<?> getFileManagementHandlerClass();

	/**
	 * Insert a List of java.io.File Objects into the File indexation storing System.<br>
	 * Has been marked as @deprecated because it doesn't fit the new needs of the new File Storage in DB, <br>
	 * where the path will be different as the one from the java.io.File object.<br>
	 * Please use insertFiles(List<java.io.File> _files, String _destinationPath, String _user) instead.<br>
	 * This method will still be OK for file management on the server's file system.
	 * @param _files: List<java.io.File> the files to add into the db
	 * @param _user: String representation of the user who is performing this operation
	 * @return the number of inserted Files
	 * @throws Exception
	 */
	@Deprecated
	public abstract int insertFiles(List<java.io.File> _files, String _user) throws Exception;
	
	/**
	 * Insert a List of java.io.File Objects into the File storing System
	 * @param _files: the java.io.File to be inserted
	 * @param _destinationPath: the path where the files have to be stored
	 * @param _user: the Ivy user name who performs this action. If it is not set (null or empty String), the Ivy.session().getUserName() will be used.
	 * @return the number of inserted files
	 * @throws Exception
	 */
	public abstract int insertFiles(List<java.io.File> _files, String _destinationPath, String _user) throws Exception;

	/**
	 * Insert a List of DocumentOnServer Objects into the File indexation storing System
	 * @param _documents: the List<DocumentOnServer> arg
	 * @return the number of inserted documents
	 */
	public abstract int insertDocuments(List<DocumentOnServer> _documents) throws Exception;

	/**
	 * Insert a  DocumentOnServer Object into the File indexation storing System
	 * @param _document: DocumentOnServer that has to be inserted into the File properties storing system
	 * @return 1 if successfull
	 * @throws Exception 
	 */
	public abstract int insertOneDocument(DocumentOnServer _document) throws Exception;

	/**
	 * Insert a  java.io.File Object into the File indexation storing System.
	 * Has been marked as @deprecated because it doesn't fit the new needs of the new File Storage in DB, <br>
	 * where the path will be different as the one from the java.io.File object.<br>
	 * Please use insertFile(List<java.io.File> _files, String _destinationPath, String _user) instead.<br>
	 * This method will still be OK for file management on the server's file system.
	 * @param _file: java.io.File that has to be inserted into the File indexation storing System.
	 * @param _user the user name who inserts the file
	 * @return the number of inserted file
	 * @throws Exception
	 */
	@Deprecated
	public abstract int insertFile(java.io.File _file, String _user) throws Exception;

	/**
	 * Insert a  java.io.File Object into the File indexation storing System.
	 * @param _file: java.io.File that has to be inserted
	 * @param _destinationPath: where the File should go
	 * @param _user: the Ivy user name who performs this action. If it is not set (null or empty String), the Ivy.session().getUserName() will be used.
	 * @return the number of inserted file
	 * @throws Exception
	 */
	public abstract int insertFile(java.io.File _file, String _destinationPath, String _user) throws Exception;
	
	/**
	 * renames a DocumentOnServer Object in the file persistency system.
	 * @param _doc the DocumentOnServer Object that will be renamed
	 * @param _newName the new name
	 * @param _userID the user name of the person who made the change
	 * @return true if succeed else false
	 * @throws Exception
	 */
	public abstract boolean renameDocument(DocumentOnServer _doc, String _newName, String _userID) throws Exception;

	/**
	 * delete files from the File indexation storing System
	 * @param _files the list of the java.io.File to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	public abstract int deleteFiles(List<java.io.File> _files) throws Exception;

	/**
	 * delete documents from the File indexation storing System
	 * @param _documents the list of the DocumentOnServer to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	public abstract int deleteDocuments(List<DocumentOnServer> _documents) throws Exception;
	
	/**
	 * Returns the documentOnServer Object with its java.io.File attribute set with the corresponding File.<br>
	 * If the Files are stored on the File System, then the java.io.File will be the existing File.<br>
	 * If the File content is stored into a DB, a new non persistent Ivy File will be created with the content,<br>
	 * and the corresponding java.io.File will be used to set the java.io.File attribute of the resulting documentOnServer.
	 * @param _doc: the documentOnServer which java.io.File attribute should be set.
	 * @return the documentOnServer Object with its java.io.File attribute set.
	 * @throws Exception
	 */
	public abstract DocumentOnServer getDocumentOnServerWithJavaFile(DocumentOnServer _doc) throws Exception;
	
	/**
	 * Returns the documentOnServer Object pointing to the given file path with its java.io.File attribute set with the corresponding File.<br>
	 * If the Files are stored on the File System, then the java.io.File will be the existing File.<br>
	 * If the File content is stored into a DB, a new non persistent Ivy File will be created with the content,<br>
	 * and the corresponding java.io.File will be used to set the java.io.File attribute of the resulting documentOnServer.
	 * @param _filePath: the File path as String.
	 * @return the documentOnServer Object with its java.io.File attribute set. Can be null if no documentOnServer was found on this path.
	 * @throws Exception
	 */
	public abstract DocumentOnServer getDocumentOnServerWithJavaFile(String _filePath) throws Exception;

	/**
	 * Get all the DocumentOnsErver Objects that are listed under a specified path<br>
	 * @param _path: String representing the path of the directory that contains the files<br>
	 * @param _isrecursive: boolean, if true, all the files in the tree structure under the directory are going to be listed.<br>
	 * If false, only the files directly under the directory are going to be listed
	 * @return an ArrayList of {@link DocumentOnServer} Objects. Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception
	 */
	public abstract ArrayList<DocumentOnServer> getDocumentsInPath(String _path, boolean _isRecursive) throws Exception;

	/**
	 * Get all the DocumentOnsErver Objects that are listed under a specified path.<br>
	 * The java.io.File Attribute of each documentOnServer will be set with the existing java.io.File if it is stored on the FileSystem,<br>
	 * or with the corresponding java.io.File of the non persistent Ivy File created with the File Content stored in the DB.
	 * @param _path: String representing the path of the directory that contains the files<br>
	 * @param _isrecursive: boolean, if true, all the files in the tree structure under the directory are going to be listed.<br>
	 * If false, only the files directly under the directory are going to be listed
	 * @return an ArrayList of {@link DocumentOnServer} Objects. Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception
	 */
	public abstract ArrayList<DocumentOnServer> getDocumentsWithJavaFileInPath (String _path, boolean _isRecursive) throws Exception;
	
	/**
	 * get all the DocumentOnServer with the use of filtering conditions.<br>
	 * If you use a Database to store the file properties, the SQL query will be built with the given list of 'AND' conditions.<br>
	 * If the list is null or empty, it will retrieve all the DocumentOnServer from the DB.<br>
	 * Each condition should be written like : "FILEID > 1000", "FILENAME NOT LIKE 'test.doc'", "FILENAME LIKE 'test.doc'"...<br>
	 * @param _conditions: List<String> representing the conditions to perform the search
	 * @return an ArrayList of {@link DocumentOnServer} Objects. Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception
	 */
	public abstract ArrayList<DocumentOnServer> getDocuments(List<String> _conditions) throws Exception;

	/**
	 * update documents with one complete set of properties<br>
	 * If you use a database to store the file properties, the set of properties may be an SQL Query of type INSERT, UPDATE or DELETE.
	 * @param _query: the SQL Query as String
	 * @throws Exception
	 */
	public abstract void updateDocuments(String _query) throws Exception;

	/**
	 * Allows executing an update on documents with the given Key/Value pairs and conditions for filtering
	 * @param _KVP: List<KeyValuePair> that represents the new values for the given properties (Keys)
	 * @param _conditions: List<String> the list of the conditions to filter the update
	 * @return a RecordSet of the updated documents
	 * @throws Exception
	 */
	public abstract int updateDocuments(List<KeyValuePair> _KVP, List<String> _conditions) throws Exception;

	/**
	 * Lock a document if you have a locking System for File edition.<br> 
	 * If you don't have a locking System for File edition, just override this method with no action in it.<br>
	 * This method should check if the document is already locked by another user and return false if it is the case.
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @param _user the user who locks this document
	 * @return true if the document was locked, else false
	 * @throws Exception
	 */
	public abstract boolean lockDocument(DocumentOnServer _doc, String _user) throws Exception;

	/**
	 * Lock a File if you have a locking System for File edition.<br> 
	 * If you don't have a locking System for File edition, just override this method with no action in it.<br>
	 * This method should check if the file is already locked by another user and return false if it is the case.
	 * @param _file: the java.io.File to lock
	 * @param _user the user who locks this document
	 * @return true if the document was locked, else false
	 * @throws Exception
	 */
	public abstract boolean lockFile(java.io.File _file, String _user) throws Exception;
	/**
	 * unLock a document if you have a locking System for File edition.<br> 
	 * If you don't have a locking System for File edition, just override this method with no action in it.
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public abstract boolean unlockDocument(DocumentOnServer _doc) throws Exception;

	/**
	 * unLock a File if you have a locking System for File edition.<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it.
	 * @param file: the java.io.File to lock
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public abstract boolean unlockFile(java.io.File _file) throws Exception;

	/**
	 * unLock a document with check if given user is the same who has locked the document.<br>
	 * If it is not the same, the File won't be locked.
	 * If you don't have a locking System for File edition, just override this method with no action in it.
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @param _user the user who locks this document
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public abstract boolean unlockDocumentWithUSerCheck(DocumentOnServer _doc, String _user) throws Exception;

	/**
	 * unLock a File with check if given user is the same who has locked the document.<br>
	 * If it is not the same, the File won't be locked.<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it.
	 * @param _file: the java.io.File to lock
	 * @param _user the user who locks this document
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public abstract boolean unlockFileWithUSerCheck(java.io.File _file, String _user) throws Exception;

	/**
	 * Look if a File is actually locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _file: the java.io.File to check
	 * @return true if the file is locked, else false
	 * @throws Exception
	 */
	public abstract boolean isFileLocked(java.io.File _file) throws Exception;

	/**
	 * Look if a File is actually locked by a user that is not the given user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false. 
	 * @param _file the java.io.File to check
	 * @param _user the user who has not to lock the file
	 * @return true if the file is locked by another user as the given one.
	 * @throws Exception
	 */
	public abstract boolean isFileLockedByAnotherUser(java.io.File _file, String _user) throws Exception;

	/**
	 * Looks if a DocumentOnServer is actually locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _doc: the DocumentOnServer to check
	 * @return true if the DocumentOnServer is locked, else false
	 * @throws Exception
	 */
	public abstract boolean isDocumentOnServerLocked(DocumentOnServer _doc) throws Exception;
	
	/**
	 * Checks if a DocumentOnServer is actually locked by a user different from the specified user.<br>
	 * @param _doc: the DocumentOnServer to check
	 * @param _user the user who has not to lock the file
	 * @return true if the DocumentOnServer is locked by another user as the given one, else false.
	 * @throws Exception
	 */
	public abstract boolean isDocumentOnServerLocked(DocumentOnServer _doc, String _user) throws Exception;

	/**
	 * return all the locked documents under a given path
	 * @param _path: the path where to look for the locked files
	 * @param _isRecursive: if is recursive, look in all the sub directories under the path
	 * @return the list of DocumentOnServer as ArrayList<DocumentOnServer> that are locked
	 * @throws Exception
	 */
	public abstract ArrayList<DocumentOnServer> getDocumentsLocked(String _path, boolean _isRecursive) throws Exception;

	/**
	 * this Method should be used to unlock all the files edited by a given user under a given path.
	 * If the boolean argument "recursive" is true, then all the files in the children directories
	 * are going to be unlocked. Else just the files directly under the given path are going to be unlocked.
	 * This method can be used when you close an application for example.
	 * @param _path the path where to look for the locked files
	 * @param _user the ivy user name 
	 * @param _recursive true or false. If is recursive, look in all the sub directories under the path
	 * @throws Exception
	 */
	public abstract void unlockFilesEdited(String _path, String _user, boolean _recursive) throws Exception;

	/**
	 * This method changes the modification time with actual time, the modification date with current date and modification user with session user.
	 * @param _file the java.io.File that was modified
	 * @param _userID the userID as String
	 * @throws Exception
	 */
	public abstract void changeModificationInformations(java.io.File _file, String _userID) throws Exception;
	
	/**
	 * this method allows getting a DocumentOnServer with the given Path
	 * @param _filePath the filePath
	 * @return the ch.ivyteam.ivy.addons.filemanager.DocumentOnServer corresponding to the given path.<br>
	 */
	public abstract DocumentOnServer getDocumentOnServer(String _filePath) throws Exception;
	
	
	/**
	 * Saves a ch.ivyteam.ivy.addons.filemanager.DocumentOnServer in the persistence System (File System, database...)
	 * @param _document: the ch.ivyteam.ivy.addons.filemanager.DocumentOnServer to save
	 * @param _fileDestinationPath: where to save the DocumentOnServer. If the destinationPath is the same than the DocumentOnServer Path the DocumentOnServer will be updated.<br>
	 * If the destinationPath is different, this method can be used to MOVE a DocumentOnServer. Or it can be used to store the file in a database.
	 * @return the saved ch.ivyteam.ivy.addons.filemanager.DocumentOnServer contained in the ch.ivyteam.ivy.addons.filemanager.ReturnedMessage object
	 * @throws Exception
	 */
	public abstract ReturnedMessage saveDocumentOnServer(DocumentOnServer _document, String _fileDestinationPath) throws Exception;
	
	/**
	 * Moves a ch.ivyteam.ivy.addons.filemanager.DocumentOnServer in the persistence System (File System, database...)
	 * @param _document: the ch.ivyteam.ivy.addons.filemanager.DocumentOnServer to save
	 * @param _fileDestinationPath: where to save the DocumentOnServer. If the destinationPath is the same than the DocumentOnServer Path nothing happens.<br>
	 * @return the moved ch.ivyteam.ivy.addons.filemanager.DocumentOnServer contained in the ch.ivyteam.ivy.addons.filemanager.ReturnedMessage object
	 * @throws Exception
	 */
	public abstract ReturnedMessage moveDocumentOnServer(DocumentOnServer _document, String _fileDestinationPath) throws Exception;
	
	/**
	 * Checks if a given DocumentOnServer already exists in a path.
	 * @param _document: the DocumentOnServer object
	 * @param _path: the path where to check
	 * @return true if a documentOnServer with the name of the given DocumentOnServer is present in the given path. Else returns false.
	 * @throws Exception
	 */
	public abstract boolean documentOnServerExists(DocumentOnServer _document, String _path) throws Exception;
	
	/**
	 * Checks if a File denoted by the given path exists
	 * @param _filePath: the filePath to check
	 * @return: true if the file exists and false if not
	 * @throws Exception
	 */
	public abstract boolean fileExists(String _filePath) throws Exception;
	
	/**
	 * delete the file denoted by the given path
	 * @param _filePath: the path from the file to delete
	 * @return true if the file was deleted else false
	 * @throws Exception
	 */
	public abstract boolean deleteFile(String _filePath) throws Exception;
	
	/**
	 * Insert a list of copied ch.ivyteam.ivy.addons.filemanager.DocumentOnServer in the persistence System (File System, database...).
	 * This methods adds a _CopyX at the end of the name of copied Files if they would have overwritten other existing files.
	 * @param _document: the List<DocumentOnServer> copied objects to save
	 * @param _fileDestinationPath: where to save the DocumentOnServer objects.<br>
	 * @return the saved ch.ivyteam.ivy.addons.filemanager.DocumentOnServer objects contained in the ch.ivyteam.ivy.addons.filemanager.ReturnedMessage object
	 * @throws Exception
	 */
	public abstract ReturnedMessage pasteCopiedDocumentOnServers(List<DocumentOnServer> _documents, String _fileDestinationPath) throws Exception;
	
	/**
	 * Renames a document
	 * @param _document: the ch.ivyteam.ivy.addons.filemanager.DocumentOnServer to be renamed
	 * @param _newName: the new name as String
	 * @return the renamed ch.ivyteam.ivy.addons.filemanager.DocumentOnServer contained in the ch.ivyteam.ivy.addons.filemanager.ReturnedMessage object
	 * @throws Exception
	 */
	public abstract ReturnedMessage renameDocumentOnServer(DocumentOnServer _document, String _newName) throws Exception;
	
	
	/**
	 * Deletes a ch.ivyteam.ivy.addons.filemanager.DocumentOnServer.
	 * @param _document ch.ivyteam.ivy.addons.filemanager.DocumentOnServer to delete
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 */
	public abstract ReturnedMessage deleteDocumentOnServer(DocumentOnServer _document) throws Exception;
	
	/**
	 * Deletes a List of ch.ivyteam.ivy.addons.filemanager.DocumentOnServer.
	 * @param _documents List of ch.ivyteam.ivy.addons.filemanager.DocumentOnServer to delete.
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 * @throws Exception
	 */
	public abstract ReturnedMessage deleteDocumentOnServers(List<DocumentOnServer> _documents) throws Exception;
	
	/**
	 * Creates a ZIP File containing the given documentOnServer Objects
	 * @param _documents: list of DocumentOnServer Objects to put in the ZIP file
	 * @param _dirPath: the path of the parent directory where to put the ZIP
	 * @param _zipName: the name of the ZIP file
	 * @param _checkIfExists: if true, the method  will check if the zipFile exists. If so, the new ZIP will not be created,<br>
	 * a ReturnedMasseage with the Information will be returned. If false, the ZIP will be created even if the file already exists.
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 * @throws Exception
	 */
	public abstract ReturnedMessage zipDocumentOnServers(List<DocumentOnServer> _documents, String _dirPath, String _zipName, boolean _checkIfExists) throws Exception;
	
	/**
	 * set the description on the file with the given path.<br>
	 * The description is stored in the files table in the database.
	 * @param _path: the path of the file
	 * @param _description: the description
	 * @return: a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 * @throws Exception
	 */
	public abstract ReturnedMessage setFileDescription(String _path, String _description) throws Exception;
	
	/**
	 * set the description on the given documentOnServer object.<br>
	 * The description is stored in the files table in the database.
	 * @param _document: documentOnServer object which id or path has to be set.
	 * @param _description: the description
	 * @return: a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 * @throws Exception
	 */
	public abstract ReturnedMessage setFileDescription(DocumentOnServer _document, String _description) throws Exception;
	
	/**
	 * Returns the directory structure as a Tree under a parent folder.  
	 * @param _rootPath the path of the root directory
	 * @return the directory structure as a ch.ivyteam.ivy.scripting.objects.Tree
	 */
	public abstract Tree getDirectoryTree(String _rootPath) throws Exception;
	
	/**
	 * Lists all the DocumentOnServer in a directory. All the listed DocumentOnServer are "real" files and not directories.
	 * @param _directoryPath: the directory path to be parsed for files.
	 * @param _listChildrenDirectories: boolean if true, all the files under the directory structure are going to be listed. <br>
	 * Else only the files directly contained in the directory are going to listed.
	 * @return : the list of ch.ivyteam.ivy.addons.filemanager.DocumentOnServer found in the directory.
	 */
	public abstract List<DocumentOnServer> getDocumentOnServersInDirectory(String _directoryPath, boolean _listChildrenDirectories) throws Exception;
	
	/**
	 * Creates a new directory
	 * @param _destinationPath
	 * @param _newDirectoryName
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 */
	public abstract ReturnedMessage createDirectory(String _destinationPath, String _newDirectoryName) throws Exception;
	
	/**
	 * tells if a directory denoted by the given path exists.
	 * @param directoryPath: the directory path
	 * @return true if it does exists, else false.<br>
	 * Returns also false if the parameter is null or an empty String.
	 * @throws Exception
	 */
	public abstract boolean directoryExists(String directoryPath) throws Exception;
	
	/**
	 * Tells if a directory denoted by the given path is empty. <br>
	 * If the directory contains at least one directory or one file it is not empty.
	 * @param directoryPath: the directory path
	 * @return true if the directory is empty, else false. Returns true if the directory doesn't exist.
	 * @throws Exception: IllegalArgumentException if directoryPath is null or an empty String
	 */
	public abstract boolean isDirectoryEmpty(String directoryPath) throws Exception;
	
	/**
	 * Deletes the given directory and all the contained files and directories.<br>
	 * If the security is activated, it will check if the session user has the right to delete this directory.<br>
	 * If not it will not delete the directory.<br>
	 * 
	 * @param _directoryPath : the path of the directory to delete
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 */
	public abstract ReturnedMessage deleteDirectory(String _directoryPath) throws Exception;
	
	/**
	 * <b><h1>WARNING: USE THIS METHOD WITH CAUTION!</h1></b><br>
	 * This method allows deleting a directory without checking if the session user has the right for it or not.<br>
	 * It does not check if the directory is empty also.<br>
	 * This method deletes the directory itself, all its sub-directories and all the contained files.<br>
	 * Please use the isDirectoryEmpty method if you want to check if the directory contains other files or directories.
	 * @param _path the directory path to delete
	 * @return true if delete successful, else false
	 * @throws Exception
	 */
	public abstract ReturnedMessage deleteDirectoryAsAdministrator(String _directoryPath) throws Exception;
	
	/**
	 * Renames a directory
	 * @param _path: the path of the directory (includes the name of the directory to rename)
	 * @param _newName: the new name
	 * @return a ch.ivyteam.ivy.addons.filemanager.ReturnedMessage containing the type of result <br>
	 * (ch.ivyteam.ivy.addons.filemanager.ReturnedMessage.SUCCESS_MESSAGE / ERROR_MESSAGE / INFORMATION_MESSAGE);
	 */
	public abstract ReturnedMessage renameDirectory(String _path, String _newName) throws Exception;
	
	/**
	 * returns the FileManager Security Controller if applicable.<br>
	 * If the Security controlling is not implemented, this method should return null.
	 * @return the FileManager Security Controller if applicable, or null
	 * @throws Exception
	 */
	public abstract AbstractDirectorySecurityController getSecurityController() throws Exception;
	
	/**
	 * Get the storage type where the files' content is going to be stored
	 * @return
	 */
	public abstract int getFileStorageType();
	
	/**
	 * Replaces all the backslashes through "/" in a String
	 * All the file paths in the persistence system should use the "/" char as file separator
	 * @param _s the String (query) to treat
	 * @return the String with all its backslashes replaced by "/" char
	 */
	static public String escapeBackSlash(String _s){
		if(_s!=null)
		{
			_s=_s.replaceAll("\\\\", "/");
		}
		return _s;
	}
	
	/**
	 * Formats a given path with "/" as separator<br>
	 * so that it is always compatible for Windows, Linux and Mac OS.
	 * It doesn't check if there is a File.separator at the end of the path.
	 * @param _path
	 * @return formatted path with the system File.separator
	 */
	public static String formatPath(String _path)
	{
		if(_path != null && !_path.equals(""))
		{
			_path = org.apache.commons.lang.StringUtils.replace(_path,"\\", "/");
		}
		return _path;
	}
	
	/**
	 * Formats a given directory path with "/" as separator<br>
	 * so that it is always compatible for Windows, Linux and Mac OS.<br>
	 * The resulting path ends always with "/"
	 * @param _path
	 * @return formatted path with "/"
	 */
	public static String formatPathForDirectory(String _path)
	{
		if(_path != null && !_path.trim().equals(""))
		{
			_path=_path.trim();
			_path = org.apache.commons.lang.StringUtils.replace(_path,"\\", "/");
			if(!_path.endsWith("/"))
			{
				_path=_path+"/";
			}
		}
		return _path;
	}
	
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
	 * This is a convenient way to get the right fileManagementHandler instance in the application context.<br>
	 * If a System property named "file.management.indexation.class" is set, then it tries to return the Instance of this Class.<br>
	 * The value of this propertie should be the full qualified name of the class (namespace included).<br>
	 * If there is no such property, then it returns an Instance of the default fileManagementHandler: a FileManagementDBHandler,<br>
	 * with a call to its constructor<br> {@code FileManagementDBHandler(String ivyDBConnectionName, String tableName)}<br>
	 * Here the ivyDBConnectionName will be "uploadManager", and the tableName "UPLOADEDFILES".<br>
	 * If you use a database to store the files indexation, and you want to use other arguments
	 * @return the AbstractFileManagementHandler Instance to handle the file indexation storage.
	 * @throws Exception
	 */
	public static AbstractFileManagementHandler getInstance()throws Exception{
		AbstractFileManagementHandler fileManagementHandler=null;

		if(System.getProperty("file.management.indexation.class")!=null && !System.getProperty("file.management.indexation.class").trim().equals("")){
			fileManagementHandler=(AbstractFileManagementHandler) Class.forName(
					System.getProperty("file.management.indexation.class")).newInstance();
		}else{
			//This is the default FileManagementHandler with filemanager as ivy DB connexionName and UPLOADEDFILES as Table name.
			fileManagementHandler= new FileManagementDBHandlerUniversal("filemanager","UPLOADEDFILES");
		}

		return fileManagementHandler;
	}

	/**
	 * This is a convenient way to get the right fileManagementHandler instance in the application context with a given<br>
	 * arguments array for its constructor. The order of the given arguments must be the same as the order of the constructor's arguments.<br>
	 * If the arguments arry is null or empty, the empty constructor will be called.
	 * If the given arguments do not match any constructor in their Type and their order, an IllegalArgumentException will be thrown and catched.
	 * If a System property named "file.management.indexation.class" is set, then it tries to return the Instance of this Class.<br>
	 * The value of this propertie should be the full qualified name of the class (namespace included).<br>
	 * If there is no such property, then it returns an Instance of the default fileManagementHandler: a FileManagementDBHandler,<br>
	 * with a call to its constructor.<br>
	 * @param _arguments: an array of Object that contains the arguments for the fileManagementHandler constructor
	 * @return the AbstractFileManagementHandler Instance to handle the file indexation storage.
	 * @throws Exception
	 */
	public static AbstractFileManagementHandler getInstance(Object _arguments[])throws Exception{
		AbstractFileManagementHandler fileManagementHandler=null;
		Object args[];
		if(_arguments==null)
		{
			args=new Object[0];
		}
		else 
		{
			args = _arguments;
		}
		Class<?> [] argsClasses = new Class<?> [args.length];
		for(int i=0; i<args.length; i++)
		{
			argsClasses[i]= args[i].getClass();
		}
		Constructor<?>[] constructors;
		boolean matched = false; //flag to tell if a constructor corresponding to the arguments type was found.

		// if no arguments, we take the default getInstance() method
		if (args.length==0)
		{
			fileManagementHandler = getInstance();
		}
		// if there are arguments, we try to find the corresponding constructor
		else 
		{ 
			//first we get all the constructors from the declared FileManagementHandler Class
			if(System.getProperty("file.management.indexation.class")!=null && !System.getProperty("file.management.indexation.class").trim().equals(""))
			{//We take the property variante
				constructors = Class.forName(
						System.getProperty("file.management.indexation.class")).getConstructors();
				//then for each constructor found, we try to find the constructor 
				// which arguments Types match the arguments Types given as parameter
				for(int i=0; i<constructors.length;i++){
					Class<?> [] constructorArgs = constructors[i].getParameterTypes();
					matched=true;
					//If the constructor doesn't have the same number of arguments as the arguments array, we skip this one.
					if(constructorArgs.length!= args.length)
					{
						continue;
					}
					//for each given argument we look if it matches the Type of its constructor argument contertype
					for(int j=0; j<constructorArgs.length;j++){
						if(!constructorArgs[j].isInstance(args[j])){ // if doesn't match we look at the next Constructor
							matched=false;
							break;
						}
					}
					if(matched){ // we have found the right constructor so we build a new Instance of it with the arguments
						fileManagementHandler = (AbstractFileManagementHandler) constructors[i].newInstance(args);
						break;
					}
				}
			}else
			{//we take the Database Handler Class Variante
				if(args.length==2)
				{// the database dispatcher Class takes two args
					fileManagementHandler= new FileManagementDBHandlerUniversal((String) args[0],(String) args[1]);
				}
				if(args.length==3)
				{// the database dispatcher Class takes 3 args: connection name, table name and schemata name
					fileManagementHandler= new FileManagementDBHandlerUniversal((String) args[0],(String) args[1],(String) args[2]);
				}
			}

			if(fileManagementHandler==null)
			{//the arg list doesn't correspond to any constructor nor to the database Db Dispatcher class getInstance Method
				throw new IllegalArgumentException("The serie of arguments for the AbstractFileManagementHandler doesn't match any of the constructors arguments.");
			}
		}
		return fileManagementHandler;
	}

	/**
	 * This is a convenient way to get the right fileManagementHandler instance in the application context with its fully qualifiered name and a given<br>
	 * arguments array for its constructor. The order of the given arguments must be the same as the order of the constructor's arguments.<br>
	 * If the arguments array is null or empty, the empty constructor will be called.
	 * If the given arguments do not match any constructor in their Type and their order, an IllegalArgumentException will be thrown and catched.
	 * If a System property named "file.management.indexation.class" is set, then it tries to return the Instance of this Class.<br>
	 * The value of this propertie should be the full qualified name of the class (namespace included).<br>
	 * If there is no such property, then it returns an Instance of the default fileManagementHandler: a FileManagementDBHandler,<br>
	 * with a call to its constructor.<br>
	 * @param _className: a String indicating the class fully qualifiered name of the filemanagementHandler to be used	 
	 * @param _arguments: an array of Object that contains the arguments for the fileManagementHandler constructor
	 * @return the AbstractFileManagementHandler Instance to handle the file indexation storage.
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static AbstractFileManagementHandler getInstance(String _className, Object _arguments[])throws Exception{
		AbstractFileManagementHandler fileManagementHandler=null;
		Object args[];
		Class<AbstractFileManagementHandler> fileManagementClass = null;

		if(_className == null || _className.trim().length()==0)
		{//if no class name, used other getInstance method.
			fileManagementHandler = getInstance(_arguments);
			return fileManagementHandler;
		}
		try{
			fileManagementClass = (Class<AbstractFileManagementHandler>) Class.forName(_className);
		}catch(Exception ex){
			Ivy.log().warn("No class for name "+_className,ex);
		}
		// we check if we could instanciate the given Class. If no => use other getInstance
		if(fileManagementClass == null)
		{
			fileManagementHandler = getInstance(_arguments);
			return fileManagementHandler;
		}
		//the fileManagementClass could be found
		if(_arguments==null)
		{
			args=new Object[0];
		}
		else
		{
			args = _arguments;
		}
		Class<?> [] argsClasses = new Class<?> [args.length];
		for(int i=0; i<args.length; i++){
			argsClasses[i]= args[i].getClass();
		}
		Constructor<?>[] constructors;
		boolean matched = false; //flag to tell if a constructor corresponding to the arguments type was found.

		// if no arguments, we take the default getInstance() method
		if (args.length==0)
			fileManagementHandler = getInstance();
		// if there are arguments, we try to find the corresponding constructor
		else { 
			//first we get all the constructors from the declared FileManagementHandler Class
			if(fileManagementClass!=null){
				constructors = fileManagementClass.getConstructors();
			}else{
				constructors = Class.forName("ch.ivyteam.ivy.addons.filemanager.database.FileManagementDBHandlerUniversal").getConstructors();
			}
			// then for each constructor found, we try to find the constructor 
			// which arguments Types match the arguments Types given as parameter
			for(int i=0; i<constructors.length;i++){
				Class<?> [] constructorArgs = constructors[i].getParameterTypes();
				matched=true;
				//If the constructor doesn't have the same number of arguments as the arguments array, we skip this one.
				if(constructorArgs.length!= args.length)
					continue;
				//for each given argument we look if it matches the Type of its constructor argument contertype
				for(int j=0; j<constructorArgs.length;j++){
					if(!constructorArgs[j].isInstance(args[j])){ // if doesn't match we look at the next Constructor
						matched=false;
						break;
					}
				}
				if(matched){ // we have found the right constructor so we build a new Instance of it with the arguments
					fileManagementHandler = (AbstractFileManagementHandler) constructors[i].newInstance(args);
					break;
				}
			}
			if(fileManagementHandler==null)
			{
				throw new IllegalArgumentException("The serie of arguments doesn't match any of the constructors arguments.");
			}
		}
		return fileManagementHandler;
	}

	/**
	 * This method offers a convenient way to get an Instance of the FileManagementHandler in a Database context.<br>
	 * This means that the file indexation is going to be stored in a database.<br>
	 * This method takes two arguments: the ivy user friendly database connexion name, and the indexation table name.<br>
	 * These two arguments are taken as constructor arguments in the FileManagementHandler Class.
	 * If a System property named "file.management.indexation.class" is set, then it tries to return the Instance of this Class.<br>
	 * The value of this propertie should be the full qualified name of the class (namespace included).<br>
	 * If there is no such property, then it returns an Instance of the default fileManagementHandler: a FileManagementDBHandler,<br>
	 * @param _databaseConnexionName: the ivy user friendly database connexion name
	 * @param _tableName: the indexation table name
	 * @return the AbstractFileManagementHandler Instance to handle the file indexation storage.
	 * @throws Exception
	 */
	public static AbstractFileManagementHandler getInstanceInDatabaseContext(String _databaseConnexionName, String _tableName)throws Exception{
		AbstractFileManagementHandler fileManagementHandler=null;
		setIndexationType(DATABASE_INDEXATION);
		
			if(System.getProperty("file.management.indexation.class")!=null && !System.getProperty("file.management.indexation.class").trim().equals("")){
				fileManagementHandler=(AbstractFileManagementHandler) Class.forName(
						System.getProperty("file.management.indexation.class")).
						getConstructor(new Class[] {String.class, String.class}).newInstance(_databaseConnexionName,_tableName);
			}else{
				fileManagementHandler= new FileManagementDBHandlerUniversal(_databaseConnexionName,_tableName);
			}
		
		return fileManagementHandler;
	}

	/**
	 * FOR ADVANCED USED ONLY.
	 * returns the type of persistency system used to store the files information.<br>
	 * This information has to be stored in the the file.management.indexation.type System property.<br>
	 * If this property is not setted the DATABASE_INDEXATION int is returned, because the default storeage system is a database one.
	 * @return the int corresponding to the persistency system (DATABASE_INDEXATION, XML_INDEXATION...)
	 */
	public static int getIndexationType(){
		int indexationType= DATABASE_INDEXATION;
		if(System.getProperty("file.management.indexation.type")!=null && !System.getProperty("file.management.indexation.type").trim().equals(""))
		{
			indexationType= System.getProperty("file.management.indexation.type").equalsIgnoreCase("database")?DATABASE_INDEXATION : 
				System.getProperty("file.management.indexation.type").equalsIgnoreCase("xml")?XML_INDEXATION:OTHER_INDEXATION;
		}
		return indexationType;
	}

	/**
	 * FOR ADVANCED USED ONLY.
	 * One can use this method to set the file.management.indexation.type System property.<br>
	 * This property should be used to indicate the kind of persistency system used to store the files information.<br>
	 * An alternative to "database" system storage could be an XML one.
	 * @param _indexationType the int corresponding to the persistency system (DATABASE_INDEXATION, XML_INDEXATION...)
	 */
	public static void setIndexationType(int _indexationType)
	{
		String indexation=(_indexationType== DATABASE_INDEXATION)?"database":(_indexationType== XML_INDEXATION)?"xml":"other";
		
		if(System.getProperty("file.management.indexation.type")!=null)
		{//file.management.indexation.type ystem property was setted
			System.setProperty("file.management.indexation.type", indexation);
		}
		indexation_Type = _indexationType;
	}


}
