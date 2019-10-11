package com.axon.ivy.engine.config;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.lang.StringUtils;
import org.primefaces.model.UploadedFile;

import ch.ivyteam.ivy.config.IFileAccess;
import ch.ivyteam.licence.InvalidLicenceException;
import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;

public class LicenceUtil
{
  public static void backupAllOlds(File newLicenceFile) throws IOException
  {
    List<File> oldFiles= IFileAccess.get().getConfigurationFiles(new SuffixFileFilter(".lic"), FalseFileFilter.INSTANCE)
        .stream()
        .filter(file -> !file.equals(newLicenceFile))
        .collect(Collectors.toList());
    for (File oldFile : oldFiles)
    {
      backup(oldFile);
    }
  }

  private static void backup(File license) throws IOException
  {
    File backupFile = new File(license.getAbsolutePath().concat(".bak"));
    Files.deleteIfExists(backupFile.toPath());
    Files.move(license.toPath(), backupFile.toPath());
    Files.deleteIfExists(license.toPath());
  }

  public static File verifyAndInstall(UploadedFile uploadedFile) throws Exception
  {
    File tempLicence = uploadFile(uploadedFile);
    try
    {
      verify(tempLicence);
      return install(tempLicence, uploadedFile.getFileName());
    }
    finally
    {
      Files.deleteIfExists(tempLicence.toPath());
    }
  }

  private static File install(File tempLicence, String fileName) throws InvalidLicenceException, IOException
  {
    File newLicence = IFileAccess.get().getConfigurationFile(fileName);
    if (newLicence.exists())
    {
      backup(newLicence);
    }
    Files.copy(tempLicence.toPath(), newLicence.toPath());
    SignedLicence.installLicence(newLicence);
    return newLicence;
  }

  public static void verify(File newLicence) throws Exception
  {
    SignedLicence.verifyLicence(newLicence);
  }

  private static File uploadFile(UploadedFile uploadedFile) throws IOException, FileNotFoundException
  {
    File tempLicence = File.createTempFile("temp", uploadedFile.getFileName());
    try (FileOutputStream fos = new FileOutputStream(tempLicence);
            InputStream is = uploadedFile.getInputstream())
    {
      IOUtils.copy(is, fos);
    }
    return tempLicence;
  }

  public static boolean isCluster()
  {
    return LicenceConstants.VAL_LICENCE_TYPE_ENTERPRISE.equals(SignedLicence.getParam(
            ch.ivyteam.licence.LicenceConstants.PARAM_LICENCE_TYPE));
  }
  
  public static boolean isDemo()
  {
    if (StringUtils.isNotEmpty(System
            .getProperty("ch.ivyteam.ivy.server.configuration.development")))
    {
      return false;
    }
    if (SignedLicence.isDemo())
    {
      return true;
    }
    return false;
  }
}
