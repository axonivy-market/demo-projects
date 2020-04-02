package com.axonivy.connectivity.soap;

import static org.assertj.core.api.Assertions.assertThat;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.junit.jupiter.api.Test;

import com.axonivy.ivy.webtest.engine.EngineUrl;

public class IntegrationTestSoapIgnorePolicy
{
  private static final String PROCESS_ID = "162AFFB8ACCCB74C";

  @Test
  public void greetWithPolicyEnabled() throws Exception
  {
    String url = EngineUrl.process() + "/ConnectivityDemosTest/" + PROCESS_ID
            + "/greeterPoliciesNotDisabled.ivp";
    CloseableHttpClient client = HttpClients.createDefault();
    CloseableHttpResponse response = client.execute(new HttpGet(url));
    String content = EntityUtils.toString(response.getEntity());
    assertThat(content).isEqualTo(
            "org.apache.cxf.ws.policy.PolicyException: None of the policy alternatives can be satisfied.");
  }

  @Test
  public void greetWithPolicyDisabled() throws Exception
  {
    String url = EngineUrl.process() + "/ConnectivityDemosTest/" + PROCESS_ID
            + "/greeterPoliciesDisabled.ivp";
    CloseableHttpClient client = HttpClients.createDefault();
    CloseableHttpResponse response = client.execute(new HttpGet(url));
    String content = EntityUtils.toString(response.getEntity());
    assertThat(content).isEqualTo(
            "org.apache.cxf.binding.soap.SoapFault: A security error was encountered when verifying the message");
  }
}
