package com.axonivy.connectivity.rest;

import java.util.Locale;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.IUser;

public class UserCreator {

	public static void createUsers(String prefix, int amount)
	{
		ISecurityContext securityContext = Ivy.session().getSecurityContext();
		for(int i=0; i<amount; i++)
		{
			if (i%100==0)
			{
				System.out.println("/"+i);
			}
			String userN = prefix+i;
			IUser user = securityContext.findUserWithoutLookup(userN);
			if (user == null)
			{
				user = securityContext.createUser(userN, userN, userN, Locale.GERMAN, "nomail@junit.com", userN);
			}
		}
	}
	
}
