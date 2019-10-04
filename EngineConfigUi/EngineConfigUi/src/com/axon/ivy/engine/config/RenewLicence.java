package com.axon.ivy.engine.config;

import java.io.IOException;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

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
      multipart = (FormDataMultiPart) formDataMultiPart.bodyPart(filePart);
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
}
