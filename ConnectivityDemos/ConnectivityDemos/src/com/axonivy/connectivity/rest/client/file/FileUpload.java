package com.axonivy.connectivity.rest.client.file;

import java.io.File;
import java.io.IOException;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.filter.LoggingFilter;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.authentication.HttpBasicAuthenticationFeature;

public class FileUpload
{

  public static Response upload(WebTarget target, File file) throws IOException
  {
//    FormDataMultiPart multipart;
//    try(FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
//    {
//      FileDataBodyPart filePart = new FileDataBodyPart("file", file);
//      multipart = (FormDataMultiPart) formDataMultiPart.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);
//    }
//    Ivy.log().info("test: "+target); 
//    Response response = target.request().header("X-Requested-By", "ivy")
//    .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
//    Ivy.log().info(response.readEntity(String.class));
//    Ivy.log().info(file);
//    return response;
//  }
  String uri = "http://localhost:8081/ivy/api/designer/fileUpload";
  FormDataMultiPart multipart;
  try (FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
  {
    FileDataBodyPart filePart = new FileDataBodyPart("file", file);
    multipart = (FormDataMultiPart) formDataMultiPart
            .field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);
  }
  Response pdfResponse = createClient()
          .target(uri).request()
          .header("X-Requested-By", "ivy")
          .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
  Ivy.log().info(file);
  Ivy.log().info(pdfResponse.readEntity(String.class));
  return pdfResponse;
  }
  
  private static Client createClient()
  {
    Client httpClient = ClientBuilder.newClient();
    httpClient.register(JacksonJsonProvider.class);
    httpClient.register(MultiPartFeature.class);
    httpClient.register(new LoggingFilter());
    httpClient.register(HttpBasicAuthenticationFeature.class);
    httpClient.property("username", "restUser");
    httpClient.property("password", "restUser");
    
    return httpClient;
  }
}
