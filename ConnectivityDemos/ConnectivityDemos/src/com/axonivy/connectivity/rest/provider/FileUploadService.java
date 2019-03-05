package com.axonivy.connectivity.rest.provider;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

import ch.ivyteam.api.API;
import ch.ivyteam.ivy.environment.Ivy;



@Path("fileUpload")
public class FileUploadService
{
  String uri = "http://localhost:8081/ivy/api/designer/fileUpload";
  
  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  public Response uploadFile(@FormDataParam("file") InputStream fileUploadStream,
          @FormDataParam("file") FormDataContentDisposition fileUploadDetail)
  {
    //checkExtension(fileUploadDetail.getFileName());
    API.checkNotNull(fileUploadDetail, "fileUploadDetail");
    String fileLocation = "/home/jla/Documents/createdDocuments/" + fileUploadDetail.getFileName();
    try
    {
      FileOutputStream out = new FileOutputStream(new File(fileLocation));
      int read = 0;
      byte[] bytes = new byte[1024];
      out = new FileOutputStream(new File(fileLocation));
      while ((read = fileUploadStream.read(bytes)) != -1)
      {
        out.write(bytes, 0, read);
      }
      out.flush();
      out.close();
    }
    catch (IOException ex)
    {
      ex.printStackTrace();
    }
    String result = "File was uploaded succesfully to: " + fileLocation;
    return Response.status(200).entity(result).build();
  }

  private void checkExtension(String fileName)
  {
    String extension = FilenameUtils.getExtension(fileName);
    if (!StringUtils.equals(extension, "pdf"))
    {
      throw new IllegalArgumentException("The file is not a '.pdf'! Your file is: '." + extension + "'");
    }
  }
  
  private final InputStream target = this.getClass().getResourceAsStream("test.txt");
  private final String file = this.getClass().getResource("test.txt").getFile();
  
  public FormDataMultiPart testFileConverter() throws IOException
  {
    try(FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      FileDataBodyPart filePart = new FileDataBodyPart("file", new File(file));
      FormDataMultiPart multipart = (FormDataMultiPart) formDataMultiPart
              .field("file", target, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);
      
      Ivy.log().fatal(multipart);
      return multipart;
    }
  }
}
