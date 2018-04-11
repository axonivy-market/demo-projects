package com.axonivy.connectivity.soap;

import java.io.Writer;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpResponse;

import com.axonivy.connectivity.test.GreeterPolicyData;

public class WSResponseWriter
{

  public static void sendAsResponse(String message) throws Exception
  {
    GreeterPolicyData data = new GreeterPolicyData();
    data.setGreetResponse(message);
    getHttpResponseWriter().append(message);
  }

  private static Writer getHttpResponseWriter() throws Exception
  {
    IHttpResponse httpResponse = (IHttpResponse) Ivy.response();
    return httpResponse.getHttpServletResponse().getWriter();
  }
}
