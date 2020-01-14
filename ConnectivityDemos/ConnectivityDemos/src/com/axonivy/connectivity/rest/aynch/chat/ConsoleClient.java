package com.axonivy.connectivity.rest.aynch.chat;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.InvocationCallback;
import javax.ws.rs.client.WebTarget;

import ch.ivyteam.ivy.rest.client.authentication.HttpBasicOrDigestAuthenticationFeature;
import ch.ivyteam.ivy.rest.client.mapper.JsonFeature;

/**
 * Simple console client for {@link ChatService} messages received.
 * 
 * Immediately starts a new asynchronous listeners for the service if a message
 * is received.
 * 
 * @since 7.3.0
 */
public class ConsoleClient implements InvocationCallback<List<ChatMessage>>
{
  public static void main(String[] args)
  {
    WebTarget target = createJaxRsChatClient();
    target.request().async().get(new ConsoleClient(target));
    System.out.println("chat client is listening");
  }

  /**
   * @return instantiated REST client with plain JAX-RS API. As we are not
   *         running an IvyEnvironment here.
   */
  public static WebTarget createJaxRsChatClient()
  {
    String port = System.getProperty("ivy.port", "8081");
    return ClientBuilder.newClient()
            .target("http://localhost:" + port + "/ivy/api/designer/chatdemo")
            .register(HttpBasicOrDigestAuthenticationFeature.class)
            .register(JsonFeature.class)
            .property("username", "theWorker")
            .property("password", "theWorker");
  }

  private final WebTarget target;

  private ConsoleClient(WebTarget target)
  {
    this.target = target;
  }

  @Override
  public void completed(List<ChatMessage> messages)
  {
    printToConsole(messages);
    waitForNextResponse(target);
  }

  private static void printToConsole(List<ChatMessage> messages)
  {
    for (ChatMessage message : messages)
    {
      String date = new SimpleDateFormat("HH:MM:ss").format(message.sentDate);
      System.out.println("[" + date + "] " + message.toString());
    }
  }

  private void waitForNextResponse(WebTarget webTarget)
  {
    webTarget.request().async().get(this);
  }

  @Override
  public void failed(Throwable t)
  {
    System.err.println("error in chat" + t);
    t.printStackTrace();
  }
}