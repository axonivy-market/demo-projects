package ch.ivyteam.ivy.demo.upload;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Arrays;

import org.apache.commons.io.FileUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ulc.vwidget.server.IVFileDownloadHandler;
import ch.ivyteam.ulc.vwidget.server.ULCVFileDownloader;

import com.ulcjava.base.application.ULCAlert;
import com.ulcjava.base.application.event.IWindowListener;
import com.ulcjava.base.application.event.WindowEvent;

/*
 * @author dthai (dung.thai@axonactive.vn)
 */
public class FileUploadManager
{
	private static final long MAXIMUM_UPLOAD_SIZE_BYTES = Long.MAX_VALUE;
	private ULCVFileDownloader fileDownloader;
	private MyFileDownloadHandler downloadHandler;
	private String uploadFolderPath;
	private String clientFolderPath;
	private boolean isRunning;
	private boolean isFailed;
	private boolean isCancel;
	private DecimalFormat df;

	public FileUploadManager(String clientFolderPath)
	{
		isRunning = false;
		isFailed = false;
		isCancel = false;
		df = new DecimalFormat("#.#");
		this.clientFolderPath = clientFolderPath;
	}

	public boolean isRunning()
	{
		return isRunning;
	}

	public boolean isFailed()
	{
		return isFailed;
	}
	
	public boolean isCancel()
	{
		return isCancel;
	}

	public String getUploadFolderPath()
	{
		return uploadFolderPath;
	}
	
	public String getUploadFolderPathOnServer()
	{
		return fileDownloader.getDownloadedFile();
	}

	public void setUploadFolderPath(String uploadFolderPath)
	{
		this.uploadFolderPath = uploadFolderPath;
	}

	public String getClientFolderPath()
	{
		return clientFolderPath;
	}

	public void setClientFolderPath(String clientFolderPath)
	{
		this.clientFolderPath = clientFolderPath;
	}

	public void upload()
	{
		if (!clientFolderPath.isEmpty())
		{
			isRunning = true;
			verifyFreeMemoryBeforeDownload();
		}
		else
		{
			isRunning = false;
		}
	}

	public void abort()
	{
		isRunning = false;
		isCancel = true;
		if (fileDownloader != null && fileDownloader.isUploaded())
		{
			Ivy.log().warn("### fireDownloadCancelled !!!");
			fileDownloader.fireDownloadCancelled();
		}
	}

	public String getStatus()
	{
		String uploadStatus = "";
		File fileUpload = new File(getClientFolderPath());
		if (isRunning())
		{
			long downloadedByteCount = fileDownloader.getDownloadedByteCount();
			long downloadSize = fileDownloader.getDownloadSize();

			// Server haven't received info from client side
			if (downloadSize == -1 || downloadedByteCount == 0)
			{

				Object[] formatObjects = new Object[] { fileUpload.getName() };
				uploadStatus = "Connecting to upload..." + Arrays.asList(formatObjects);
			}
			else
			{
				String uploadedAmount = exchangeBytetoMByte(downloadedByteCount);
				String filesize = exchangeBytetoMByte(downloadSize);
				Object[] formatObjects = new Object[] { fileUpload.getName(), uploadedAmount, filesize };
				uploadStatus = "Uploading Info" + Arrays.asList(formatObjects);
			}
		}
		else
		{
			if (haveAllFilesUploaded() && !isCancel)
			{
				uploadStatus = "File is uploaded to server successfully.";
			}
			else
			{
				uploadStatus = "Upload cancelled. File on server removed.";
			}
		}

		return uploadStatus;
	}

	private boolean haveAllFilesUploaded()
	{
		return !isRunning;
	}

	private String exchangeBytetoMByte(long fileSize)
	{
		double fileSizeInMB = 1.0 * fileSize / FileUtils.ONE_MB;
		return df.format(fileSizeInMB) + " MB";
	}

	private void verifyFreeMemoryBeforeDownload()
	{
		downloadHandler = new MyFileDownloadHandler();
		fileDownloader = new ULCVFileDownloader(downloadHandler, MAXIMUM_UPLOAD_SIZE_BYTES);
		if (fileDownloader != null && fileDownloader.isUploaded())
		{
			fileDownloader.initiateToDownload();
		}
	}

	private void showErrorDialogForFailUpload(String message)
	{
		ULCAlert alert = new ULCAlert("Upload Failed", message, "OK");
		alert.addWindowListener(new IWindowListener()
		{
			private static final long serialVersionUID = 1L;

			@Override
			public void windowClosing(WindowEvent event)
			{
				
			}
		});
		alert.show();
	}

	private class MyFileDownloadHandler implements IVFileDownloadHandler
	{

		@Override
		public void onCancel()
		{
			Ivy.log().warn("Upload Cancelled !!!");
		}

		@Override
		public void downloadInfo(long downloadSize, long freeHeapMemory)
		{
			// This condition ensures splitDownloadSize < freeHeapMemory
			long splitDownloadSize = Math.min(downloadSize, freeHeapMemory / 2);
			fileDownloader.startDownload(splitDownloadSize);
			Ivy.log().info("------- Download info: -------");
			Ivy.log().info("File size: " + FileUtils.byteCountToDisplaySize(downloadSize));
			Ivy.log().info("Free heap: " + FileUtils.byteCountToDisplaySize(freeHeapMemory));
			Ivy.log().info("Split downloadSize: " + FileUtils.byteCountToDisplaySize(splitDownloadSize));
		}

		@Override
		public void onFailure(Throwable arg0)
		{
			Ivy.log().error("Upload FAILED !!!");
			Ivy.log().error(arg0.getMessage());
			isFailed = true;
			showErrorDialogForFailUpload(arg0.getMessage());
		}

		@Override
		public void onSuccess(String uploadFilePath)
		{
			File serverFile = new File(uploadFilePath);
			if (serverFile.exists() && serverFile.isFile() && serverFile.canRead())
			{
				// This stores the upload folder path for later remove
				File uploadFolder = serverFile.getParentFile();
				if (uploadFolder.isDirectory() && uploadFolder.getName().equals("ivyUploadTempFolder"))
				{
					setUploadFolderPath(uploadFolder.getAbsolutePath());
					isRunning = false;
				}
			}
			else
			{
				Ivy.log().warn("ULC extension of file uploading returned error file. File path: {0}, file exist: {1}, file access: {2} ", uploadFilePath, serverFile.exists(), serverFile.canRead());
			}
		}

		@Override
		public String getClientFilePath()
		{
			return clientFolderPath;
		}

	}
}