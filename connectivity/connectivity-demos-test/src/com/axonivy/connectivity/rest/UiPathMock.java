package com.axonivy.connectivity.rest;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

import javax.annotation.security.PermitAll;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

import io.swagger.v3.oas.annotations.Hidden;

/**
 * Mocks parts of the UI Path RPA API which has been used in the demo: <code>ConnectivityDemos/rest/uiPath</code>
 * <p>docs<br/>https://platform.uipath.com/AXONPRESALES/AXONPRESALES/swagger/ui</p>
 */
@Path("rpaMock")
@PermitAll
@Hidden
public class UiPathMock
{
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  @Path("odata/Settings/UiPath.Server.Configuration.OData.GetLicense")
  public String getLicense()
  {
    return load("json/license.json");
  }
  
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  @Path("odata/Jobs")
  public String getJobs()
  {
    String template = load("json/jobs.json");
    String json = StringUtils.replace(template, 
            "Key\": \"string\",", "Key\": \""+UUID.randomUUID().toString()+"\",");
    json = StringUtils.replace(json, 
            "PersistenceId\": \"string\",", "PersistenceId\": \""+UUID.randomUUID().toString()+"\",");
    return json;
  }
  
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  @Path("odata/Robots")
  public String getRobots()
  {
    return load("json/robots.json");
  }
  
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  @Path("odata/Releases")
  public String getReleases()
  {
    return load("json/releases.json");
  }
  
  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @Path("oauth/token")
  public String getToken(@SuppressWarnings("unused") String tokenRequest)
  {
    return load("json/token.json");
  }
  
  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @Path("odata/Jobs/UiPath.Server.Configuration.OData.StartJobs")
  public String startJob(@SuppressWarnings("unused") String tokenRequest)
  {
    return load("json/startJob.json");
  }
  
  private static String load(String path)
  {
    try(InputStream is = UiPathMock.class.getResourceAsStream(path))
    {
      return IOUtils.toString(is, StandardCharsets.UTF_8);
    }
    catch (IOException ex)
    {
      throw new RuntimeException("Failed to read resource: "+path);
    }
  }
}
