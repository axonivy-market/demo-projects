package com.axonivy.connectivity.soap.client;

import org.apache.cxf.endpoint.Client;
import org.apache.cxf.frontend.ClientProxy;
import org.apache.cxf.phase.Phase;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.webservice.exec.feature.WebServiceClientFeature;
import ch.ivyteam.ivy.webservice.exec.feature.WebServiceClientFeatureContext;
import de.eon.webservice.interceptor.CxfReceiveInterceptor;
import de.eon.webservice.interceptor.CxfSendInterceptor;

public class CustomLogFeature  implements WebServiceClientFeature {

  @Override
  public void initialize(WebServiceClientFeatureContext context) {
    Client proxy = ClientProxy.getClient(context.getBindingProvider());
    proxy.getOutInterceptors().add(new CxfSendInterceptor(Phase.SEND_ENDING));
    proxy.getInInterceptors().add(new CxfReceiveInterceptor(Phase.RECEIVE));
    Ivy.log().info("working with custom interceptors");
  }

}
