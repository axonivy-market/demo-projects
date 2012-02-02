package ch.ivyteam.ivy.addons.technical;

import ch.ivyteam.ivy.environment.Ivy;

/**
 * Defines error codes used with IvyAddOns to fill IvyResultStatus.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 04.05.2010
 */
public enum MessageCodes
{

  XIVY_ADD_EVT_001, XIVY_ADD_EVT_002, XIVY_ADD_EVT_003;

  /**
   * The method checks for each enum value there is the message in the CMS
   */
  public static void checkCodesInCMS()
  {
    for (Enum<?> aValue : values())
    {
      if (Ivy.cms().cr("/messages/" + aValue.toString()).length() == 0)
        Ivy.log().error("The message code \"{0}\" is missing in the CMS!", aValue.toString());
      else
        Ivy.log().info("The message code \"{0}\" exists in the CMS and contains \"{1}\"!", aValue.toString(),
                Ivy.cms().co("/messages/" + aValue.toString()).toString());
    }
  }
}
