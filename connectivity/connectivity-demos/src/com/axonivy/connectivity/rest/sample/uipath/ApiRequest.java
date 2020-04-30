package com.axonivy.connectivity.rest.sample.uipath;

public class ApiRequest
{
  private String userKey;
  private String clientId;
  
  private String tenant;
  private String account;
  
  public String getUserKey()
  {
    return userKey;
  }
  public void setUserKey(String userKey)
  {
    this.userKey = userKey;
  }
  public String getClientId()
  {
    return clientId;
  }
  public void setClientId(String clientId)
  {
    this.clientId = clientId;
  }
  public String getTenant()
  {
    return tenant;
  }
  public void setTenant(String tenant)
  {
    this.tenant = tenant;
  }
  public String getAccount()
  {
    return account;
  }
  public void setAccount(String account)
  {
    this.account = account;
  }
}
