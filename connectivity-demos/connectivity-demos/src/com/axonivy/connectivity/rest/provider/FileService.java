package com.axonivy.connectivity.rest.provider;

import java.io.FileInputStream;
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
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import ch.ivyteam.api.API;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.File;

/**
 * URI for file upload: http://localhost:8081/ivy/api/designer/file
 * @since 7.3.0
 */
@Path("file")
public class FileService
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
    return Response.status(201)
            .header("uploadedFile", fileName)
            .entity(result)
            .build();
  }

  private static File createIvyFile(InputStream fileUploadStream, String fileName)
          throws IOException
  {
    File ivyFile = new File(fileName, false);
    try (OutputStream os = new FileOutputStream(ivyFile.getJavaFile()))
    {
      IOUtils.copy(fileUploadStream, os);
      return ivyFile;
    }
    catch (IOException ex)
    {
      Ivy.log().fatal("File could not be uploaded: " + fileName, ex);
      throw new IOException("File could not be uploaded: " + fileName, ex);
    }
  }

  private static void checkExtension(String fileName)
  {
    String extension = FilenameUtils.getExtension(fileName);
    if (!checkIfStringContainsList(extension))
    {
      Ivy.log().fatal("The file is not allowed! Your file is: '." + extension + "'");
      throw new IllegalArgumentException("The file is not allowed! Your file is: '." + extension + "'");
    }
  }

  public static List<String> whitelistedExtensions = Arrays.asList("pdf", "txt", "jpg", "jpeg");

  private static boolean checkIfStringContainsList(String extension)
  {
    return whitelistedExtensions.contains(extension);
  }

  @GET
  @Path("/{fileName}")
  @Produces(MediaType.APPLICATION_OCTET_STREAM)
  public Response downloadFile(@PathParam("fileName") String fileName) throws IOException
  {
    File ivyFile = new File(fileName);
    InputStream fis = new FileInputStream(ivyFile.getJavaFile());
    return Response
            .ok(fis, MediaType.APPLICATION_OCTET_STREAM)
            .header("content-disposition", "attachment; filename = " + fileName)
            .build();

  }

}
