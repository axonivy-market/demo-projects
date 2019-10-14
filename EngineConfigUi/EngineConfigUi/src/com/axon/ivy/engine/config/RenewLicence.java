package com.axon.ivy.engine.config;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status.Family;

import org.glassfish.jersey.media.multipart.Boundary;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import ch.ivyteam.licence.SignedLicence;

public class RenewLicence
{
  private static Response upload(WebTarget target, File licence, String mailTo) throws IOException
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

  public static void sendRenew(WebTarget client, String renewEmail) throws IOException
  {
    File tempFile = Files.createTempFile("test", ".lic").toFile();

    FileOutputStream fos = new FileOutputStream(tempFile);
    fos.write(SignedLicence.getLicenceContent().getBytes());
    fos.flush();
    fos.close();

    Response response = upload(client, tempFile, renewEmail);
    if (response.getStatusInfo().getFamily() == Family.SUCCESSFUL)
    {
      UiModder.addInfoMessage("Message", "Your request has been sent successfully");
    }
    else if (response.getStatus() == 406) {
      JsonObject json = new JsonParser().parse(response.readEntity(String.class)).getAsJsonObject(); 
      UiModder.addErrorMessage("Message", json.get("errorMessage").getAsString()); 
    }
    else
    {
      UiModder.addErrorMessage("Message", "There was some problem sending your request: " + response.readEntity(String.class));
    }
    tempFile.delete();
  }
}
