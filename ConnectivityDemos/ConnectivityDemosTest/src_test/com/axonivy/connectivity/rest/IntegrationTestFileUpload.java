package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.io.IOException;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.glassfish.jersey.filter.LoggingFilter;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.media.multipart.file.FileDataBodyPart;
import org.junit.Test;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

public class IntegrationTestFileUpload
{

  private String uri = EngineUrl.getServletUrl("api") + "/fileUpload"; 

  @Test
  public void sendPdfFile() throws IOException
  {
    // tests if can send file "test.pdf"
    try (FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      File createWrongEmptyFile = createWrongEmptyFile("test", ".pdf");
      FileDataBodyPart filePart = new FileDataBodyPart("file", createWrongEmptyFile);
      FormDataMultiPart multipart = (FormDataMultiPart) formDataMultiPart
              .field("file", createWrongEmptyFile, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);

      Response pdfResponse = createAuthenticatedClient()
              .target(uri).request()
              .header("X-Requested-By", "ivy")
              .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
      assertThat(pdfResponse.getStatus()).isEqualTo(Status.OK.getStatusCode());
      assertThat(pdfResponse.readEntity(String.class)).endsWith(createWrongEmptyFile.getName());
    }
  }
  
  @Test
  public void fileNotPdf() throws IOException
  {
 // tests if can send file that is not .pdf
    try (FormDataMultiPart formDataMultiPart = new FormDataMultiPart())
    {
      File createWrongEmptyFile = createWrongEmptyFile("empty",".txt");
      FileDataBodyPart filePart = new FileDataBodyPart("file", createWrongEmptyFile);
      FormDataMultiPart multipart = (FormDataMultiPart) formDataMultiPart
              .field("file", createWrongEmptyFile, MediaType.MULTIPART_FORM_DATA_TYPE).bodyPart(filePart);

      Response notPdfResponse = createAuthenticatedClient()
              .target(uri).request()
              .header("X-Requested-By", "ivy")
              .put(Entity.entity(multipart, MediaType.MULTIPART_FORM_DATA));
      assertThat(notPdfResponse.getStatus()).isEqualTo(Status.INTERNAL_SERVER_ERROR.getStatusCode());
    }
  }
  
  public File createWrongEmptyFile(String fileName, String extension) throws IOException
  {
    File empty = java.nio.file.Files.createTempFile(fileName, extension).toFile();
    return empty;
  }

  private static final String login = "admin";

  private static Client createAuthenticatedClient()
  {
    Client httpClient = createClient();
    httpClient.register(HttpAuthenticationFeature.basic(login, login));
    return httpClient;
  }

  private static Client createClient()
  {
    Client httpClient = ClientBuilder.newClient();
    httpClient.register(JacksonJsonProvider.class);
    httpClient.register(MultiPartFeature.class);
    httpClient.register(new LoggingFilter());
    return httpClient;
  }
}
