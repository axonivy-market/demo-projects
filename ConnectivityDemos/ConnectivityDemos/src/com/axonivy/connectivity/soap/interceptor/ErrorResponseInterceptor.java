package com.axonivy.connectivity.soap.interceptor;

import org.apache.cxf.binding.soap.SoapMessage;
import org.apache.cxf.binding.soap.interceptor.AbstractSoapInterceptor;
import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.Phase;

/*
 * This class replaces all soap responses with 400 Bad Request
 */
@SuppressWarnings("restriction")
public class ErrorResponseInterceptor extends AbstractSoapInterceptor
{

  public ErrorResponseInterceptor()
  {
    super(Phase.PRE_STREAM);
  }

  @Override
  public void handleMessage(SoapMessage soapMessage) throws Fault
  {
    soapMessage.put(Message.RESPONSE_CODE, 400);
  }
}
