package ch.ivyteam.ivy.addons.restricted.util;

import java.util.Locale;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.sudo.ContentObjectSystemSudo;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.persistence.PersistencyException;

/**
 * Gives write access to the CMS.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 27.10.2009
 */

public final class CmsWriteAccess
{
  private CmsWriteAccess()
  {
  }

  /**
   * Stores a value into the CMS.
   * 
   * @param uri uri of the node to write
   * @param value the value the store into the CMS. It is only allowed to store String values
   * @param locale if null, the default value is written; otherwise the value for the specified locale is
   *          written
   * @param cms Content Management System to use
   * @return true if the value is correctly stored
   * @throws AddonsException
   */
  public static boolean write(String uri, String value, Locale locale, IContentManagementSystem cms)
          throws AddonsException
  {
    return write(uri, value, locale, CoType.STRING, cms);
  }

  /**
   * Stores a value into the CMS.
   * 
   * @param uri uri of the node to write
   * @param value the value the store into the CMS. It is only allowed to store String values
   * @param locale if null, the default value is written; otherwise the value for the specified locale is
   *          written
   * @param type type of entry to create
   * @param cms Content Management System to use
   * @return true if the value is correctly stored
   * @throws AddonsException
   */
  public static boolean write(String uri, String value, Locale locale, CoType type,
          IContentManagementSystem cms) throws AddonsException
  {
    boolean result;
    IContentObjectValue objectValue;
    IContentObject node;
    Boolean isDefault;
    Boolean create;
    String user;
    String cleanURI;

    user = System.getProperty("user.name");

    cleanURI = StringUtil.cleanUpPath(uri);

    node = null;
    result = false;
    try
    {
      if (cleanURI.startsWith(Cms.SPECIFIC_ENVIRONMENT_URI))
      {
        node = ContentObjectSystemSudo.getContentObject(cleanURI, true);
      }
      else
      {
        node = cms.getContentObject(cleanURI);
      }

      if (node == null)
      {
        node = createTreePath(cleanURI, user, type, cms);
      }

      objectValue = node.getValue(null, locale);

      create = false;

      if (objectValue != null)
      {
        if (locale != null && !objectValue.getLanguage().equals(locale))
        {
          create = true;
        }
      }
      else
      {
        create = true;
      }

      isDefault = false;
      if (locale == null)
      {
        isDefault = true;
      }
      else if (locale.equals(cms.getDefaultLanguage()))
      {
        isDefault = true;
      }

      if (create)
      {
        objectValue = node.addValue("", null, null, locale, user, isDefault, null);
      }

      objectValue.setContent(value.equals("") ? null : value, user);

      Cms.invalidate(cleanURI);

      result = true;
    }
    catch (Exception e)
    {
      throw new AddonsException("Unable to store CMS value '" + value + "' at '" + cleanURI, e);
    }
    return result;
  }

  private static IContentObject createTreePath(String uri, String user, CoType type,
          IContentManagementSystem cms) throws PersistencyException, AddonsException
  {
    String[] uriPart;
    IContentObject currentNode;
    IContentObject node;
    String nodeName;
    StringBuffer currentUri;
    String cleanURI;

    currentUri = new StringBuffer();

    cleanURI = StringUtil.cleanUpPath(uri);

    if (cleanURI.startsWith(Cms.SPECIFIC_ENVIRONMENT_URI))
    {
      uriPart = cleanURI.substring(1).split(Cms.CMS_URI_SEPARATOR);
      currentNode = ContentObjectSystemSudo.getContentObject(Cms.CMS_URI_SEPARATOR
              + Cms.SPECIFIC_ENVIRONMENT_NODE_NAME, true);
    }
    else
    {
      uriPart = cleanURI.split(Cms.CMS_URI_SEPARATOR);
      currentNode = cms.getContentObject(Cms.CMS_URI_SEPARATOR);
    }
    node = currentNode;

    if (uriPart.length > 2)
    {
      for (Integer i = 1; i < uriPart.length - 1; i++)
      {
        nodeName = uriPart[i];

        currentUri.append("/").append(nodeName);

        node = null;

        node = currentNode.getChild(nodeName);

        if (node == null)
        {
          node = currentNode.addChild(nodeName, "", CoType.FOLDER, user);
          node = currentNode.getChild(nodeName);

          Cms.invalidate(currentUri.toString());
        }
        currentNode = node;
      }
      nodeName = uriPart[uriPart.length - 1];
      node = currentNode.addChild(nodeName, "", type, user);
      node = currentNode.getChild(nodeName);
    }
    return node;
  }

  private static void removeEmptyPath(IContentObject node) throws PersistencyException, AddonsException
  {
    IContentObject parent;

    try
    {
      if (node != null
              && (node.getParent() != null || node.getName().equals(Cms.SPECIFIC_ENVIRONMENT_NODE_NAME)))
      {
        parent = node.getParent();
        if (!node.hasChildren() && !node.hasValues())
        {
          Cms.invalidate(node.getUri());
          node.delete();
          try
          {
            removeEmptyPath(parent);
          }
          catch (Exception e)
          {
            try
            {
              Thread.sleep(1000);
            }
            catch (InterruptedException e1)
            {
              throw new AddonsException(e1);
            }
            removeEmptyPath(parent);
          }
        }
      }
    }
    catch (PersistencyException e)
    {
      try
      {
        throw new AddonsException("Unable to remove CMS node at '" + node.getUri() + "'", e);
      }
      catch (PersistencyException e1)
      {
        throw new AddonsException("Unable to clean up CMS path", e1);
      }
    }
  }

  /**
   * Removes the specified value from the CMS and destroy all the CMS branches that are no more used.
   * 
   * @param uri uri of the node value to remove
   * @param locale if null, the default value is removed; otherwise the value for the specified locale is
   *          removed
   * @param cms Content Management System to use
   * @throws AddonsException
   */
  public static void remove(String uri, Locale locale, IContentManagementSystem cms) throws AddonsException
  {
    IContentObject node;
    IContentObjectValue objectValue;
    String cleanUpURI;

    cleanUpURI = StringUtil.cleanUpPath(uri);

    Cms.invalidate(cleanUpURI);

    node = null;
    try
    {
      if (cleanUpURI.startsWith(Cms.SPECIFIC_ENVIRONMENT_URI))
      {
        node = ContentObjectSystemSudo.getContentObject(cleanUpURI, true);
      }
      else
      {
        try
        {
          node = cms.getContentObject(cleanUpURI);
        }
        catch (PersistencyException e)
        {
          // Nothing to do
        }
      }
      if (node != null)
      {
        if (locale == null)
        {
          for (IContentObjectValue o : node.getValues())
          {
            o.delete(null);
          }
        }
        else
        {
          objectValue = node.getValue(null, locale);
          if (objectValue != null && objectValue.getLanguage().equals(locale))
          {
            objectValue.delete(null);
          }
        }
      }
      removeEmptyPath(node);
    }
    catch (PersistencyException e)
    {
      throw new AddonsException("Unable to remove CMS value at '" + cleanUpURI, e);
    }
  }
}
