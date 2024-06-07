package com.axonivy.connectivity.rest.log;

import java.io.IOException;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;

import ch.ivyteam.log.Logger;

public class RequestLoggingFilter implements ContainerRequestFilter {

  @Override
  public void filter(ContainerRequestContext requestContext) throws IOException {
    // Logging the request URI using the runtime logger
    Logger.getLogger("runtimelog.demo-portal.connectivity-demos.rest_client")
            .info("MyFilter - Request URI: " + requestContext.getUriInfo().getRequestUri().toString());

    // Logging the request URI using a custom logger
    Logger.getLogger("CustomLogger")
            .info("MyFilter with CustomLogger - Request URI: "
                    + requestContext.getUriInfo().getRequestUri().toString());
  }
}
