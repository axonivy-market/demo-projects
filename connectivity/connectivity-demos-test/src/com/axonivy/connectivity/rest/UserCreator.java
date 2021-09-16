package com.axonivy.connectivity.rest;

import java.util.Locale;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.user.NewUser;

public class UserCreator
{

  public static void createUsers(String prefix, int amount)
  {
    ISecurityContext securityContext = Ivy.session().getSecurityContext();
    for (int i = 0; i < amount; i++)
    {
      if (i % 100 == 0)
      {
        System.out.println("/" + i);
      }
      String userN = prefix + i;
      IUser user = securityContext.users().find(userN);
      if (user == null)
      {
        var newUser = NewUser.create(userN)
            .fullName(userN)
            .password(userN)
            .language(Locale.GERMAN)
            .mailAddress("nomail@junit.com")
            .externalName(userN).toNewUser();
        user = securityContext.users().create(newUser);
      }
    }
  }
}
