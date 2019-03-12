package com.axonivy.connectivity.rest.provider;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.swing.JFileChooser;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import ch.ivyteam.api.API;

@Path("fileUpload")
public class FileUploadService
{
  private String uri = "http://localhost:8081/ivy/api/designer/fileUpload";

  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  public Response uploadFile(@FormDataParam("file") InputStream fileUploadStream,
          @FormDataParam("file") FormDataContentDisposition fileUploadDetail)
  {
    String fileLocation = new JFileChooser().getFileSystemView().getDefaultDirectory().toString()
            + "/Documents/createdDocuments/" + fileUploadDetail.getFileName();
    checkExtension(fileUploadDetail.getFileName()); // checks if your file
                                                    // type/extension is right
    API.checkNotNull(fileUploadDetail, "fileUploadDetail");
    createFile(fileUploadStream, fileLocation);
    String result = "File was uploaded succesfully to: " + fileLocation;
    return Response.status(200).entity(result).build();
  }

  private void checkExtension(String fileName)
  {
    String extension = FilenameUtils.getExtension(fileName); // check file
                                                             // extension
    if (!StringUtils.equals(extension, "pdf")) // deny if extension is other
                                               // than .pdf
    {
      throw new IllegalArgumentException("The file is not a '.pdf'! Your file is: '." + extension + "'");
    }
  }

  private void createFile(InputStream fileUploadStream, String fileLocation)
  {
    try // create file
    {
      int read = 0;
      byte[] bytes = new byte[1024];
      FileOutputStream out = new FileOutputStream(new File(fileLocation));
      while ((read = fileUploadStream.read(bytes)) != -1)
      {
        out.write(bytes, 0, read);
      }
      out.flush();
      out.close();
    }
    catch (Exception ex)
    {
      ex.printStackTrace();
    }
  }
}
