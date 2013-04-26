package ch.ivyteam.ivy.demo.upload;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import org.apache.commons.io.FileUtils;
import ch.ivyteam.io.ZipUtil;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

public class UnzipManager
{
	public static final String EXTRACTION_PATH = System.getProperty("java.io.tmpdir") + File.separator + "ivyZipExtractTemp" + File.separator;
	private String zipFilePath;
	private String extractedFolderPath;
	private UnzipThread unzipThread;
	private boolean isStop;

	public UnzipManager(String zipFilePath)
	{
		this.init();
		this.zipFilePath = zipFilePath;

	}

	public void init()
	{
		this.unzipThread = new UnzipThread();
		this.isStop = false;
	}

	public String getZipFilePath()
	{
		return zipFilePath;
	}

	public String getExtractedFolder()
	{
		return EXTRACTION_PATH;
	}

	public void start()
	{
		this.unzipThread.start();
	}

	public boolean isRunning()
	{
		return this.unzipThread.isAlive();
	}

	public boolean isCancel()
	{
		return this.isStop;
	}
	
	public void abort()
	{
		isStop = true;
		//delete temp folder
		File tempFile = new File(EXTRACTION_PATH);
		FileUtils.deleteQuietly(tempFile);
	}

	private class UnzipThread extends Thread
	{
		@Override
		public void run()
		{
			try
			{
				SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
				{

					@Override
					public Boolean call() throws Exception
					{
						File extractedFolder;
						if (isStop == false)
						{
							File zipFile = new File(getZipFilePath());
							System.out.println(zipFile.getName());
							if (zipFile != null && zipFile.exists())
							{
								try
								{
									extractedFolder = unpackFile(zipFile);
								}
								catch (Exception ex)
								{

								}

							}
						}
						return null;
					}

				});
			}
			catch (Exception e)
			{

			}
		}

	}

	/**
	 * extract zip or iar file to specific path in server at path
	 * 
	 * @param zipFile
	 * @return
	 * @throws IOException
	 */
	public static File unpackFile(File zipFile) throws IOException
	{
		File tempDir = new File(EXTRACTION_PATH);
		System.out.println(tempDir.getAbsolutePath());
		if (tempDir.exists() == false)
		{
			tempDir.mkdirs();
		}

		ZipUtil.extractFromZipFile(zipFile, tempDir, false, null);

		return tempDir;
	}

}
