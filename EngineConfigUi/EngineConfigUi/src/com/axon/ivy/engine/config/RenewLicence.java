package com.axon.ivy.engine.config;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.glassfish.jersey.media.multipart.Boundary;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

public class RenewLicence
{
  public static Response upload(WebTarget target, java.io.File licence, String mailTo) throws IOException
  {
    FormDataMultiPart multipart;
    try (FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      FileDataBodyPart filePart = new FileDataBodyPart("oldLicense", licence);
      multipart = (FormDataMultiPart) formDataMultiPart.field("oldLicense", licence,
              MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);
    }
    
    multipart.setMediaType(Boundary.addBoundary(MediaType.MULTIPART_FORM_DATA_TYPE));
    Response response = null;
    try
    {
      response = target.request()
              .header("X-Requested-By", "ivy")
              .header("MIME-Version", "1.0")
              .header("mailTo", mailTo)
              .put(Entity.entity(multipart, multipart.getMediaType()));
    }
    catch (Exception ex)
    {
      return Response.status(400).entity("There was problem with requesting response").build();
    }
    return response;
  }

  public static Response upload(WebTarget target, IFile resource, String mailTo) throws IOException
  {
    File finishedFile = toTempIoFile(resource);
    Response response = upload(target, finishedFile, mailTo);
    finishedFile.delete();
    return response;
  }

  public static File toTempIoFile(IFile resource) throws IOException
  {
    String name = StringUtils.substringBeforeLast(resource.getName(), ".");
    String extension = "." + resource.getFileExtension();
    File tempFile = Files.createTempFile(name, extension).toFile();
    try
    {
      IOUtils.copy(resource.getContents(), new FileOutputStream(tempFile));
    }
    catch (CoreException ex)
    {
      throw new IOException("There was some problem while creating tempFile", ex);
    }
    return tempFile;
  }
}
