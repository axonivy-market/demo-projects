package com.axonivy.connectivity.rest.log.filter;

import java.io.IOException;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;
import javax.ws.rs.ext.Provider;
import ch.ivyteam.log.Logger;

@Provider
public class RequestLoggingFilter implements ContainerRequestFilter {

    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        // Logging the request URI for demonstration
        Logger.getLogger("runtimelog.demo-portal.connectivity-demos.rest_client")
              .info("My Filter - Request URI: " + requestContext.getUriInfo().getRequestUri().toString());
    }
}
