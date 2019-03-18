package com.axonivy.connectivity.rest.provider;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import ch.ivyteam.api.API;
import ch.ivyteam.ivy.scripting.objects.File;

/**
 * URI for file upload: http://localhost:8081/ivy/api/designer/fileUpload
 * @since 7.3.0
 */
@Path("fileUpload")
public class FileUploadService
{
  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  public Response uploadFile(@FormDataParam("file") InputStream fileUploadStream,
          @FormDataParam("file") FormDataContentDisposition fileUploadDetail) throws IOException
  {
    String fileName = fileUploadDetail.getFileName();
    checkIsPdf(fileName);
    API.checkNotNull(fileUploadDetail, "fileUploadDetail");
    File ivyFile = createIvyFile(fileUploadStream, fileName);
    String result = "File was uploaded succesfully to: " + ivyFile.getAbsolutePath();
    return Response.status(200).entity(result).build();
  }

  private static File createIvyFile(InputStream fileUploadStream, String fileName)
          throws IOException
  {
    try
    {
      File ivyFile = new File("restDemo/"+fileName);
      String fileContent = IOUtils.toString(fileUploadStream, StandardCharsets.UTF_8);
      ivyFile.write(fileContent);
      return ivyFile;
    }
    catch (IOException ex)
    {
      throw new IOException("File could not be uploaded: "+fileName);
    }
  }

  private void checkIsPdf(String fileName)
  {
    String extension = FilenameUtils.getExtension(fileName); 
    if (!StringUtils.equals(extension, "pdf")) 
    {
      throw new IllegalArgumentException("The file is not a '.pdf'! Your file is: '." + extension + "'");
    }
  }
}
