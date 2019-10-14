package com.axon.ivy.engine.config;

import java.io.IOException;

import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status.Family;

import org.glassfish.jersey.media.multipart.Boundary;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import ch.ivyteam.licence.SignedLicence;

public class RenewLicence
{
  private static Response upload(WebTarget target, String mailTo) throws IOException
  {
    FormDataMultiPart multipart;
    String licContent = SignedLicence.getLicenceContent();
    try (FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      FormDataBodyPart bodyPart = new FormDataBodyPart("oldLicense", licContent);
      multipart = (FormDataMultiPart) formDataMultiPart.bodyPart(bodyPart);
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
    Response response = upload(client, renewEmail);
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
  }
}
