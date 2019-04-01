package com.axonivy.connectivity.rest.client.file;

import java.io.File;
import java.io.IOException;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

public class FileUpload
{

  public static Response upload(WebTarget target, File file) throws IOException
  {
    FormDataMultiPart multipart;
    try(FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      FileDataBodyPart filePart = new FileDataBodyPart("file", file);
      multipart = (FormDataMultiPart) formDataMultiPart.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);
    }
    Response response = target.request().header("X-Requested-By", "ivy")
    .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
    return response;
  }
}
