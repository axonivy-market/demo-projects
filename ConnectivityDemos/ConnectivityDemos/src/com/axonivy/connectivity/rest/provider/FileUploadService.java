package com.axonivy.connectivity.rest.provider;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.StreamingOutput;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
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
    checkExtension(fileName);
    API.checkNotNull(fileUploadDetail, "fileUploadDetail");
    File ivyFile = createIvyFile(fileUploadStream, fileName);
    String result = "File was uploaded succesfully to: " + ivyFile.getAbsolutePath();
    return Response.status(200).entity(result).build();
  }

  private static File createIvyFile(InputStream fileUploadStream, String fileName)
          throws IOException
  {
    File ivyFile = new File("restDemo/" + fileName);
    try (OutputStream os = new FileOutputStream(ivyFile.getJavaFile()))
    {
      IOUtils.copy(fileUploadStream, os);
      return ivyFile;
    }
    catch (IOException ex)
    {
      throw new IOException("File could not be uploaded: " + fileName, ex);
    }
  }
  

  private static void checkExtension(String fileName)
  {
    String extension = FilenameUtils.getExtension(fileName);
    if (!checkIfStringContainsList(extension))
    {
      throw new IllegalArgumentException("The file is not allowed! Your file is: '." + extension + "'");
    }
  }

  private static List<String> whitelistedExtensions = Arrays.asList("pdf", "txt", "jpg");
  
  private static boolean checkIfStringContainsList(String extension)
  {
    return whitelistedExtensions.contains(extension);
  }

  @GET
  @Path("/{fileName}")
  public Response downloadPdfFile(@PathParam("fileName") String fileName) throws IOException
  {
    File ivyFile = new File("restDemo/" + fileName);
    byte[] data = ivyFile.readBinary().toByteArray();
    StreamingOutput fileStream = new StreamingOutput()
      {
        @Override
        public void write(java.io.OutputStream output) throws IOException, WebApplicationException
        {
          try
          {
            output.write(data);
            output.flush();
          }
          catch (IOException e)
          {
            throw new WebApplicationException("Could not Find the file: '"+fileName+"'", e);
          }
        }
      };
    return Response
            .ok(fileStream, MediaType.APPLICATION_OCTET_STREAM)
            .header("content-disposition", "attachment; filename = " + fileName)
            .build();
  }

}
