package ch.ivyteam.ivy.addons.cmscontext;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;

/**
 * This class extends CMS functionalities with a multi-uri search mechanism. It permits some inheritance
 * functionalities in the CMS.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.10.2008
 */
public final class Cms
{
  /**
   * Singleton class that avoid the double check locking.
   * @see <a href="http://en.wikipedia.org/wiki/Double-checked_locking">Wikipedia</a>
   */
  private static final class COBlankCache
  {
    private COBlankCache()
    {
    }

    private static Map<IContentManagementSystem, Set<String>> instance = new HashMap<IContentManagementSystem, Set<String>>();

    protected static Set<String> getInstance(IContentManagementSystem cms)
    {
      if (!instance.containsKey(cms))
      {
        synchronized (Cms.class)
        {
          instance.put(cms, new HashSet<String>());
        }
      }
      return instance.get(cms);
    }

    protected static void clear()
    {
      instance.clear();
    }

    protected static synchronized void remove(String uri)
    {
      for (Set<String> set : instance.values())
      {
        set.remove(uri);
      }
    }
  }

  /**
   * Singleton class that avoid the double check locking.
   * @see <a href="http://en.wikipedia.org/wiki/Double-checked_locking">Wikipedia</a>
   */
  private static final class CRBlankCache
  {
    private CRBlankCache()
    {
    }

    private static Map<IContentManagementSystem, Set<String>> instance = new HashMap<IContentManagementSystem, Set<String>>();

    protected static Set<String> getInstance(IContentManagementSystem cms)
    {
      if (!instance.containsKey(cms))
      {
        synchronized (Cms.class)
        {
          instance.put(cms, new HashSet<String>());
        }
      }
      return instance.get(cms);
    }

    protected static void clear()
    {
      instance.clear();
    }

    protected static synchronized void remove(String uri)
    {
      for (Set<String> set : instance.values())
      {
        set.remove(uri);
      }
    }
  }

  private Cms()
  {
  }

  private static class KeyValueComparator implements Comparator<String[]>
  {
    public int compare(String[] o1, String[] o2)
    {
      if (o1 == o2)
      {
        return 0;
      }
      if (o1.length >= 2 && o2.length >= 2)
      {
        return o1[1].compareTo(o2[1]);
      }
      else if (o1.length >= 1 && o2.length >= 1)
      {
        return o1[0].compareTo(o2[0]);
      }

      return 0;
    }
  }

  private static final String CMS_COLUMN_SEPARATOR = ";";

  public static final String CMS_CONTEXT = "cmsContext";

  private static final String CMS_KEY = "key";

  public static final String CMS_URI_ROOT = "/";

  public static final String CMS_URI_SEPARATOR = "/";

  private static final String CMS_VALUE = "value";

  public static final String INEXISTANT_NODE_PREFIX = "X";

  public static final String SPECIFIC_ENVIRONMENT_NODE_NAME = "env";

  public static final String SPECIFIC_ENVIRONMENT_URI = CMS_URI_SEPARATOR + SPECIFIC_ENVIRONMENT_NODE_NAME
          + CMS_URI_SEPARATOR;

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism.
   * @see ch.ivyteam.ivy.cm.IContentManagementSystem#co(String)
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @return the obtained string value
   */
  public static String co(List<String> contexts, String cmsKey)
  {
    return co(contexts, cmsKey, Ivy.cms());
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism.
   * @see ch.ivyteam.ivy.cm.IContentManagementSystem#co(String)
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param cms Content Management System to use
   * @return the obtained string value
   */
  public static String co(List<String> contexts, String cmsKey, IContentManagementSystem cms)
  {
    return co(contexts, cmsKey, null, cms);
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @return the obtained string value
   */
  public static String co(List<String> contexts, String cmsKey, String defaultValue)
  {
    return co(contexts, cmsKey, defaultValue, Ivy.cms());
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @param cms Content Management System to use
   * @return the obtained string value
   */
  public static String co(List<String> contexts, String cmsKey, String defaultValue,
          IContentManagementSystem cms)
  {
    return getCmsString(contexts, cmsKey, defaultValue, false, cms);
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used. The returned value is evaluated as boolean. 1-->true; false otherwise.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @return the obtained boolean value
   */
  public static boolean coAsBoolean(List<String> contexts, String cmsKey, boolean defaultValue)
  {
    return coAsBoolean(contexts, cmsKey, defaultValue, Ivy.cms());
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used. The returned value is evaluated as boolean. 1-->true; false otherwise.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @param cms Content Management System to use
   * @return the obtained boolean value
   */
  public static boolean coAsBoolean(List<String> contexts, String cmsKey, boolean defaultValue,
          IContentManagementSystem cms)
  {
    boolean result;
    String temp;
    temp = co(contexts, cmsKey, cms);

    if (defaultValue)
    {
      result = temp.equals("") || temp.equals("1");
    }
    else
    {
      result = temp.equals("1");
    }
    return result;
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used. The returned value is evaluated as Number.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @return the obtained value
   */
  public static Number coAsNumber(List<String> contexts, String cmsKey, Number defaultValue)
  {
    return coAsNumber(contexts, cmsKey, defaultValue, Ivy.cms());
  }

  /**
   * Returns the value of the ContentObject through the CMScontext mechanism. When no value is found, the
   * default value is used. The returned value is evaluated as Number.
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param defaultValue value that is returned if nothing is found in the CMS
   * @param cms Content Management System to use
   * @return the obtained value
   */
  public static Number coAsNumber(List<String> contexts, String cmsKey, Number defaultValue,
          IContentManagementSystem cms)
  {
    Number result;
    String temp;
    temp = co(contexts, cmsKey, cms);

    result = defaultValue;

    if (temp != null)
    {
      try
      {
        result = Integer.parseInt(temp);
      }
      catch (NumberFormatException e)
      {
        // Nothing to do
      }
    }

    return result;
  }

  /**
   * Returns the list of value found through the CMScontext mechanism. In that mechanism, a list is a set of
   * content values that have as name the key name suffixed with with 3 digits. <br />
   * It permits in one call to read many values in the CMS. (<code>value001 - value002 - value003 - ...</code>)
   * 
   * @param contexts CMS context list
   * @param key suffix that is searched
   * @return the obtained value list
   */
  public static List<String> coList(List<String> contexts, String key)
  {
    return coList(contexts, key, Ivy.cms());
  }

  /**
   * Returns the list of value found through the CMScontext mechanism. In that mechanism, a list is a set of
   * content values that have as name the key name suffixed with with 3 digits. <br />
   * It permits in one call to read many values in the CMS. (<code>value001 - value002 - value003 - ...</code>)
   * 
   * @param contexts CMS context list
   * @param key suffix that is searched
   * @param cms Content Management System to use
   * @return the obtained value list
   */
  public static List<String> coList(List<String> contexts, String key, IContentManagementSystem cms)
  {
    NumberFormat nf = NumberFormat.getInstance();
    Integer currentIndex;
    List<String> list = new ArrayList<String>();
    String cmsIndex;
    String uri;
    String value;
    String currentURI;

    currentIndex = 0;
    nf.setMinimumIntegerDigits(3);

    uri = findURI(contexts, key + nf.format(1), cms);
    while (true)
    {
      cmsIndex = nf.format(++currentIndex);

      currentURI = getCms(uri + CMS_URI_SEPARATOR + key + cmsIndex, true, cms);
      if (currentURI.equals(""))
      {
        break;
      }
      value = getCms(currentURI, false, cms);

      if (value.equals(""))
      {
        break;
      }

      list.add(value);
    }
    return list;
  }

  public static List<String[]> coRecordSet(List<String[]> recordsetRef, boolean isSorted)
  {
    return coRecordSet(recordsetRef, isSorted, Ivy.cms());
  }

  public static List<String[]> coRecordSet(List<String[]> recordsetRef, boolean isSorted,
          IContentManagementSystem cms)
  {
    List<String[]> result;
    List<String> newRecord;

    result = new ArrayList<String[]>();
    newRecord = new ArrayList<String>();
    for (String[] record : recordsetRef)
    {
      newRecord = new ArrayList<String>();
      newRecord.add(record[0]);
      newRecord.addAll(getValues(record[1], cms));
      result.add(newRecord.toArray(new String[0]));
    }
    if (isSorted)
    {
      Collections.sort(result, new KeyValueComparator());
    }

    return result;
  }

  public static List<String[]> coRecordSet(List<String> contexts, String subContext, boolean isSorted)
  {
    return coRecordSet(contexts, subContext, isSorted, Ivy.cms());
  }

  public static List<String[]> coRecordSet(List<String> contexts, String subContext, boolean isSorted,
          IContentManagementSystem cms)
  {
    List<String[]> result;

    result = getCmsRecordSet(contexts, subContext, false, cms);
    if (isSorted)
    {
      Collections.sort(result, new KeyValueComparator());
    }

    return result;
  }

  /**
   * Returns the uri of the ContentObject through the CMScontext mechanism.
   * @see ch.ivyteam.ivy.cm.IContentManagementSystem#co(String)
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @return the obtained string value
   */
  public static String cr(List<String> contexts, String cmsKey)
  {
    return cr(contexts, cmsKey, Ivy.cms());
  }

  /**
   * Returns the uri of the ContentObject through the CMScontext mechanism.
   * @see ch.ivyteam.ivy.cm.IContentManagementSystem#co(String)
   * 
   * @param contexts CMS context list
   * @param cmsKey suffix that is searched
   * @param cms Content Management System to use
   * @return the obtained string value
   */
  public static String cr(List<String> contexts, String cmsKey, IContentManagementSystem cms)
  {
    return getCmsString(contexts, cmsKey, null, true, cms);
  }

  public static List<String[]> crRecordSet(List<String> contexts, String subContext)
  {
    return crRecordSet(contexts, subContext, Ivy.cms());
  }

  public static List<String[]> crRecordSet(List<String> contexts, String subContext,
          IContentManagementSystem cms)
  {
    return getCmsRecordSet(contexts, subContext, true, cms);
  }

  private static String findURI(List<String> contexts, String cmsKey, IContentManagementSystem cms)
  {
    String context;
    String s;
    String result;

    s = "";
    context = "";
    result = "";

    for (int i = contexts.size() - 1; i >= 0; i--)
    {
      context = contexts.get(i);

      // Exclude inexsitant nodes
      if (context.length() == 0 || context.startsWith(INEXISTANT_NODE_PREFIX))
      {
        continue;
      }

      s = getCms(context + CMS_URI_SEPARATOR + cmsKey, true, cms);

      if (!s.equals(""))
      {
        result = context;
        break;
      }
    }

    return result;
  }

  /**
   * Returns the uri or the value of the ContentObject read from CMS.
   * 
   * @param uri CMS uri to read
   * @param getReference if true the uri of the ContentObject is returned; otherwise the value is returned
   * @param cms Content Management System to use
   * @return the uri or the value of the ContentObject.
   */
  public static String getCms(String uri, boolean getReference)
  {
    return getCms(uri, getReference, Ivy.cms());
  }

  /**
   * Returns the uri or the value of the ContentObject read from CMS.
   * 
   * @param uri CMS uri to read
   * @param getReference if true the uri of the ContentObject is returned; otherwise the value is returned
   * @return the uri or the value of the ContentObject.
   */
  public static String getCms(String uri, boolean getReference, IContentManagementSystem cms)
  {
    String result;
    String cleanURI;

    result = "";
    cleanURI = uri;

    cleanURI = StringUtil.cleanUpPath(cleanURI);

    if (getReference)
    {
      if (!CRBlankCache.getInstance(cms).contains(cleanURI))
      {
        result = cms.cr(cleanURI);
        if (result.equals(""))
        {
          CRBlankCache.getInstance(cms).add(cleanURI);
        }
      }
    }
    else
    {
      if (!COBlankCache.getInstance(cms).contains(cleanURI))
      {
        // Only read value that are not in COBlankCache
        result = cms.co(cleanURI);
        if (result.equals(""))
        {
          COBlankCache.getInstance(cms).add(cleanURI);
        }
        if (result.contains("%"))
        {
          Pattern p;

          p = Pattern.compile("%(.*?)(?=%)");
          Matcher m = p.matcher(result);

          while (m.find())
          {
            try
            {
              if (Ivy.var().get(m.group(1)) != null)
              {
                result = result.replaceFirst("%" + m.group(1) + "%", Ivy.var().get(m.group(1)));
                m = p.matcher(result);
              }
            }
            catch (Exception e)
            {
              // Nothing to do
            }
          }
        }
      }
    }
    if (result.equals("null"))
    {
      result = "";
    }

    return result;
  }

  /**
   * Re-interprets the CMScontext to complete it with new <code>cmsContext</code> value found.
   * 
   * @param contexts CMS context list
   * @return the updated CMS context list
   * @throws AddonsException
   */
  public static List<String> getCmsContexts(List<String> contexts) throws AddonsException
  {
    return getCmsContexts(contexts, Ivy.cms());

  }

  /**
   * Re-interprets the CMScontext to complete it with new <code>cmsContext</code> value found.
   * 
   * @param contexts CMS context list
   * @param cms Content Management System to use
   * @return the updated CMS context list
   * @throws AddonsException
   */
  public static List<String> getCmsContexts(List<String> contexts, IContentManagementSystem cms)
          throws AddonsException
  {
    return getCmsContexts(null, contexts, cms);
  }

  /**
   * Add a suffix to each entry of the CMS context and re-interprets its to complete with new
   * <code>cmsContext</code> values found in that folder.
   * 
   * @param subContext suffix added to each entry
   * @param contexts CMS context list
   * @return the updated CMS context list
   * @throws AddonsException
   */
  public static List<String> getCmsContexts(String subContext, List<String> contexts) throws AddonsException
  {
    return getCmsContexts(subContext, contexts, Ivy.cms());
  }

  /**
   * Add a suffix to each entry of the CMS context and re-interprets its to complete with new
   * <code>cmsContext</code> values found in that folder.
   * 
   * @param subContext suffix added to each entry
   * @param contexts CMS context list
   * @param cms Content Management System to use
   * @return the updated CMS context list
   * @throws AddonsException
   */
  public static List<String> getCmsContexts(String subContext, List<String> contexts,
          IContentManagementSystem cms) throws AddonsException
  {
    String context;
    String oldContext;
    String envContext;
    String contextURI;
    String environment;
    boolean usesEnvironment;
    boolean exists;
    List<String> usedContexts;
    usedContexts = new ArrayList<String>();

    environment = Ivy.session().getActiveEnvironment();
    usesEnvironment = true;
    if (environment == null || environment.equals(""))
    {
      try
      {
        environment = Ivy.session().getWorkflowContext().getApplication().getActiveEnvironment();
      }
      catch (EnvironmentNotAvailableException e)
      {
        throw new AddonsException(e);
      }
      catch (PersistencyException e)
      {
        throw new AddonsException(e);
      }
      if (environment == null || environment.equals(""))
      {
        usesEnvironment = false;
      }
    }

    if (subContext != null && !subContext.equals("") && contexts.isEmpty())
    {
      usedContexts.add(CMS_URI_SEPARATOR + subContext);
    }

    for (int i = contexts.size() - 1; i >= 0; i--)
    {
      context = contexts.get(i);

      if (context.startsWith(SPECIFIC_ENVIRONMENT_URI))
      {
        continue;
      }
      if (subContext != null && !subContext.equals(""))
      {
        context += CMS_URI_SEPARATOR + subContext;
      }

      if (context.startsWith(INEXISTANT_NODE_PREFIX))
      {
        usedContexts.add(0, context);
      }
      else
      {
        // Exclude inexistant nodes
        exists = false;
        if (!cms.cr(context).equals(""))
        {
          exists = true;
        }

        context = exists ? context : INEXISTANT_NODE_PREFIX + context;
        if (!isURIAlreadyPresent(context, usedContexts))
        {
          if (exists && usesEnvironment)
          {
            envContext = SPECIFIC_ENVIRONMENT_URI + environment + context;
            if (cms.cr(envContext).equals(""))
            {
              envContext = INEXISTANT_NODE_PREFIX + envContext;
            }
            if (!isURIAlreadyPresent(envContext, usedContexts))
            {
              usedContexts.add(0, envContext);
            }
          }
          usedContexts.add(0, context);
        }

        if (exists)
        {
          while (true)
          {
            oldContext = context;

            contextURI = getCms(context + CMS_URI_SEPARATOR + CMS_CONTEXT, true, cms);
            if (contextURI.equals(""))
            {
              break;
            }

            context = getCms(contextURI, false, cms);
            if (context.equals(""))
            {
              break;
            }

            if (!context.startsWith(CMS_URI_ROOT))
            {
              context = oldContext + CMS_URI_SEPARATOR + context;

              context = StringUtil.cleanUpPath(context);
            }

            if (getCms(context, true, cms).equals(""))
            {
              throw new CmsException("Could not access the CMS uri '" + context + "' used by uri '"
                      + contextURI + "'");
            }

            if (!isURIAlreadyPresent(context, usedContexts))
            {
              usedContexts.add(0, context);
            }
          }
        }
      }
    }
    return usedContexts;
  }

  private static List<String[]> getCmsRecordSet(List<String> contexts, String subContext,
          boolean getReference, IContentManagementSystem cms)
  {
    String uri;
    NumberFormat nf;

    nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);
    uri = findURI(contexts, subContext + CMS_URI_SEPARATOR + CMS_KEY + nf.format(1), cms);
    if (uri != null && !uri.equals(""))
    {
      uri += CMS_URI_SEPARATOR + subContext;
    }

    return getCmsRecordSet(uri, getReference, cms);
  }

  private static List<String[]> getCmsRecordSet(String uri, boolean getReference, IContentManagementSystem cms)
  {
    Integer currentIndex;
    String cmsIndex;
    String key;
    List<String[]> result;
    NumberFormat nf;
    List<String> record;
    String currentURI;

    result = new ArrayList<String[]>();
    currentIndex = 0;

    nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);

    while (true)
    {
      record = new ArrayList<String>();

      cmsIndex = nf.format(++currentIndex);

      currentURI = getCms(uri + CMS_URI_SEPARATOR + CMS_KEY + cmsIndex, true, cms);
      if (currentURI.equals(""))
      {
        break;
      }
      key = getCms(currentURI, false, cms);

      record.add(key);

      currentURI = getCms(uri + CMS_URI_SEPARATOR + CMS_VALUE + cmsIndex, true, cms);

      if (getReference)
      {
        record.add(currentURI);
      }
      else
      {
        record.addAll(getValues(currentURI, cms));
      }

      result.add(record.toArray(new String[0]));
    }

    return result.size() > 0 ? result : null;
  }

  private static String getCmsString(List<String> contexts, String cmsKey, String defaultValue,
          boolean getReference, IContentManagementSystem cms)
  {
    String uri;
    String value;

    uri = findURI(contexts, cmsKey, cms);

    if (!uri.equals(""))
    {
      value = getCms(uri + CMS_URI_SEPARATOR + cmsKey, getReference, cms);
    }
    else
    {
      value = defaultValue;
    }

    if (value == null)
    {
      value = "";
    }

    return value;
  }

  protected static List<String> getValues(String uri, IContentManagementSystem cms)
  {
    return Arrays.asList(getCms(uri, false, cms).split(CMS_COLUMN_SEPARATOR));
  }

  private static boolean isURIAlreadyPresent(String context, List<String> contexts)
  {
    boolean found;
    // Check if already present
    found = false;
    for (String s : contexts)
    {
      if (s.equals(context))
      {
        found = true;
        break;
      }
    }
    return found;
  }

  /**
   * CMS context machanism keeps in a cache all empty value read from the CMS. This method permits to remove
   * one specific entry from the cache.
   * 
   * @param uri CMS uri to invalidate
   */
  public static void invalidate(String uri)
  {
    COBlankCache.remove(uri);
    CRBlankCache.remove(uri);
  }

  /**
   * CMS context machanism keeps in a cache all empty value read from the CMS. This method permits to clear
   * the full cache.
   */
  public static void invalidate()
  {
    COBlankCache.clear();
    CRBlankCache.clear();
  }
}
