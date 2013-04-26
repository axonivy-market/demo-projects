package ch.ivyteam.ivy.demo.upload;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ulc.vwidget.server.IVFileUtilitiesHandler;
import ch.ivyteam.ulc.vwidget.server.IVFolderCompressHandler;
import ch.ivyteam.ulc.vwidget.server.ULCVFileUtilities;
import ch.ivyteam.ulc.vwidget.server.ULCVFolderCompression;

import com.ulcjava.base.application.ULCAlert;

public class ZipManager
{
	private final String TEMPORARY = "___TEMP___";
	private String folderPath;
	private String zipPath;
	private String zipTempPath;
	private String status;
	private int percent;
	private boolean isRunning;
	private boolean isCancelled;
	private ULCVFolderCompression zipTool;
	private ULCVFileUtilities fileUtil;
	private IVFolderCompressHandler zipFolderHandler;

	public String getFolderPath()
	{
		return folderPath;
	}

	public String getStatus()
	{
		return status;
	}

	public int getPercent()
	{
		return percent;
	}

	public String getZipPath()
	{
		return getZipPath();
	}

	public void setZipPath(String zipPath)
	{
		this.zipPath = zipPath;
	}

	public String getZipTempPath()
	{
		return zipTempPath;
	}

	public void setZipTempPath(String zipTempPath)
	{
		this.zipTempPath = zipTempPath;
	}
	
	public boolean isCancel()
	{
		return isCancelled;
	}
	
	public boolean isRunning() {
		return isRunning;
	}

	public void abort()
	{
		isCancelled = true;
		if(zipTool != null)
		{
			zipTool.cancelRequest();
		}
	}
	
	//compress method to zip a folder.
	public void compress(String folderName, String folderPath)
	{
		if (!folderPath.isEmpty())
		{
			isRunning = true;
			if (!isCancelled)
			{
				zipFolderHandler = new MyFolderCompressHandler(folderPath);
				zipTool = new ULCVFolderCompression(zipFolderHandler);
				if (zipTool.isUploaded())
				{
					status = "Compressing folder " + folderName;
					zipTool.zipClientFolder(TEMPORARY + folderName, folderPath);
				}
			}
		}
		else
		{
			this.isRunning = false;
		}
	}

	public void getZipProgress() {
		if (this.zipTool != null) {
			this.zipTool.getZipProgress();
		}
	}
	
	
	//In case, the user want to cancel compressing. The temp folder will be deleted
	private void removeTemporaryFiles(String filePath) {
		if (this.fileUtil == null) {
			this.fileUtil = new ULCVFileUtilities(new IVFileUtilitiesHandler() {

				@Override
				public void onFailure(String arg0) {
					Ivy.log().error(arg0);
				}

				@Override
				public void onDeleteFiles(boolean arg0) {
					Ivy.log().info("Delete files: " + arg0);
				}

				@Override
				public void onDeleteFile(boolean arg0) {
					Ivy.log().info("Delete file: " + arg0);
				}

				@Override
				public void onCheckPathExists(boolean arg0) {
				}
			});
		}
		if (this.fileUtil.isUploaded()) {
			this.fileUtil.deleteFile(filePath);
		}
	}
	
	private class MyFolderCompressHandler implements IVFolderCompressHandler
	{
		String folderPath;

		private MyFolderCompressHandler(String folderPath)
		{
			this.folderPath = folderPath;
		}

		@Override
		public void onZipProgress(long percentage)
		{
			percent = 0;//(int) arg0;
			if (!this.folderPath.isEmpty())
			{
				percent = Math.round((float) percentage);
			}
			else
			{
				percent = 100;
				Ivy.log().warn("(" + percent + " %)");
			}
		}

		@Override
		public void onSuccess(String zipName, String zipPath)
		{
			if (zipName != null && !zipName.equals("") && zipPath != null && !zipPath.equals(""))
			{
				setZipTempPath(zipPath);
				setZipPath(zipPath);
			}
			isRunning = false;
		}

		@Override
		public void onFailure(String message)
		{
			if ((message != null) && !message.equals(""))
			{
				String title = "Failed";
				String firstButtonLabel = "OK";
				isRunning = false;
				ULCAlert alert = new ULCAlert(title, message, firstButtonLabel);
				alert.show();
			}
		}

		@Override
		public void onCancel()
		{
			isCancelled = true;
			isRunning = false;
			// Get temporary files
			String file = getZipTempPath();
			Ivy.log().warn("Prepare to delete temp files:");
			removeTemporaryFiles(file);
		}
	}

}
