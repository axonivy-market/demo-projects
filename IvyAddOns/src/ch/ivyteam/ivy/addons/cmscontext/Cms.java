package ch.ivyteam.ivy.addons.cmscontext;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.CmsException;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This class extends CMS fonctionalities with a multi-uri search mechanism.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.10.2008
 */
public class Cms
{
  private static class KeyValueComparator implements Comparator<String[]>
  {
    public int compare(String[] o1, String[] o2)
    {
      if (o1 == o2)
        return 0;

      if (o1.length >= 2 && o2.length >= 2)
        return o1[1].compareTo(o2[1]);
      else if (o1.length >= 1 && o2.length >= 1)
        return o1[0].compareTo(o2[0]);

      return 0;
    }
  }

  private static final String CMS_COLUMN_SEPARATOR = ";";

  private static final String CMS_CONTEXT = "cmsContext";

  private static final String CMS_KEY = "key";

  private static final String CMS_PATH_ROOT = "/";

  private static final String CMS_PATH_SEPARATOR = "/";

  private static final String CMS_VALUE = "value";

  private static final String INEXISTANT_NODE_PREFIX = "X";

  /**
   * @param contexts CMS context list
   * @param cmsKey Suffix that is searched
   * @return 
   */
  public static String co(List<String> contexts, String cmsKey)
  {
    return co(contexts, cmsKey, null);
  }

  public static String co(List<String> contexts, String cmsKey, String defaultValue)
  {
    return getCmsString(contexts, cmsKey, defaultValue, false);
  }

  public static boolean coAsBoolean(List<String> contexts, String cmsKey, boolean defaultValue)
  {
    boolean result;
    String temp;
    temp = co(contexts, cmsKey);

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

  public static Number coAsNumber(List<String> contexts, String cmsKey, Number defaultValue)
  {
    Number result;
    String temp;
    temp = co(contexts, cmsKey);

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

  // public static RecordsetByLocale getCmsRecordSetByLocale(List<String> contexts, String subContext,
  // Boolean isSorted, boolean getReference)
  // {
  // String path;
  // RecordsetByLocale result;
  // List<Locale> locales;
  // Locale currentLocale;
  // NumberFormat nf;
  //
  // currentLocale = IvyLanguage.getSessionLanguage();
  //
  // locales = IvyLanguage.getSupportedLanguages();
  //
  // result = null;
  //
  // nf = NumberFormat.getInstance();
  // nf.setMinimumIntegerDigits(3);
  //
  // path = findCmsPath(contexts, subContext + CMS_PATH_SEPARATOR + CMS_KEY + nf.format(1));
  // if (!path.equals("") && locales != null)
  // {
  // path += CMS_PATH_SEPARATOR + subContext;
  // result = new RecordsetByLocale();
  //
  // for (Locale locale : locales)
  // {
  // IvyLanguage.setSessionLanguage(locale);
  // result.put(locale, getCmsRecordSet(isSorted, getReference, path));
  // }
  // }
  //
  // IvyLanguage.setSessionLanguage(currentLocale);
  //
  // return result;
  // }

  // public static RecordsetByLocale coRecordSetByLocale(List<String> contexts, String key, Boolean isSorted)
  // {
  // return getCmsRecordSetByLocale(contexts, key, isSorted, false);
  // }
  //
  public static List<String> coList(List<String> contexts, String key)
  {
    NumberFormat nf = NumberFormat.getInstance();
    Integer currentIndex;
    List<String> list = new ArrayList<String>();
    String cmsIndex;
    String path;
    String value;
    String currentPath;

    currentIndex = 0;
    nf.setMinimumIntegerDigits(3);

    path = findCmsPath(contexts, key + nf.format(1));
    while (true)
    {
      cmsIndex = nf.format(++currentIndex);

      currentPath = getCms(path + CMS_PATH_SEPARATOR + key + cmsIndex, true);
      if (currentPath.equals(""))
      {
        break;
      }
      value = getCms(currentPath, false);

      if (value == "")
      {
        break;
      }

      list.add(value);
    }
    return list;
  }

  public static List<String[]> coRecordSet(List<String[]> recordsetRef, boolean isSorted)
  {
    List<String[]> result;
    List<String> newRecord;

    result = new ArrayList<String[]>();
    newRecord = new ArrayList<String>();
    for (String[] record : recordsetRef)
    {
      newRecord = new ArrayList<String>();
      newRecord.add(record[0]);
      newRecord.addAll(getValues(record[1]));
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
    List<String[]> result;

    result = getCmsRecordSet(contexts, subContext, false);
    if (isSorted)
    {
      Collections.sort(result, new KeyValueComparator());
    }

    return result;
  }

  public static String cr(List<String> contexts, String cmsKey)
  {
    return getCmsString(contexts, cmsKey, null, true);
  }

  public static List<String[]> crRecordSet(List<String> contexts, String subContext)
  {
    return getCmsRecordSet(contexts, subContext, true);
  }

  public static String findCmsPath(List<String> contexts, String cmsKey)
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
        continue;

      s = getCms(context + CMS_PATH_SEPARATOR + cmsKey, true);

      if (!s.equals(""))
      {
        result = context;
        break;
      }
    }

    return result;
  }

  public static String getCms(String cmsPath, boolean getReference)
  {
    String result;

    result = null;

    cmsPath = StringUtil.cleanUpPath(cmsPath);

    if (getReference)
    {
      result = Ivy.cms().cr(cmsPath);
    }
    else
    {
      result = Ivy.cms().co(cmsPath);
    }

    if (result.equals("null"))
      result = "";

    return result;
  }

  public static List<String> getCmsContexts(List<String> contexts)
  {
    return getCmsContexts(null, contexts);
  }

  // public static StringByLocale coByLocale(List<String> contexts, String cmsKey)
  // {
  // return coByLocale(contexts, cmsKey, null);
  // }
  //
  // public static StringByLocale coByLocale(List<String> contexts, String cmsKey, String defaultValue)
  // {
  // List<Locale> locales;
  // StringByLocale result;
  // Locale currentLocale;
  //
  // result = null;
  //
  // currentLocale = null;
  //
  // locales = null;
  //
  // locales = IvyLanguage.getSupportedLanguages();
  //
  // currentLocale = IvyLanguage.getSessionLanguage();
  //
  // result = new StringByLocale();
  // for (Locale locale : locales)
  // {
  // IvyLanguage.setSessionLanguage(locale);
  // result.put(locale, getCmsString(contexts, cmsKey, defaultValue, false));
  // }
  //
  // IvyLanguage.setSessionLanguage(currentLocale);
  //
  // return result;
  // }

  public static List<String> getCmsContexts(String subContext, List<String> _contexts)
  {
    String context;
    String oldContext;
    String cmsContextPath;
    boolean exists;
    List<String> contexts;
    contexts = new ArrayList<String>();

    if (subContext != null && !subContext.equals(""))
    {
      if (_contexts.isEmpty())
      {
        contexts.add(CMS_PATH_SEPARATOR + subContext);
      }
    }

    for (int i = _contexts.size() - 1; i >= 0; i--)
    {
      context = _contexts.get(i);
      if (subContext != null && !subContext.equals(""))
      {
        context += CMS_PATH_SEPARATOR + subContext;
      }

      if (context.startsWith(INEXISTANT_NODE_PREFIX))
      {
        contexts.add(0, context);
      }
      else
      {
        // Exclude inexistant nodes
        exists = false;
        if (!Ivy.cms().cr(context).equals(""))
        {
          exists = true;
        }

        context = exists ? context : INEXISTANT_NODE_PREFIX + context;
        if (!isPathAlreadyPresent(context, contexts))
        {
          contexts.add(0, context);
        }

        if (exists)
        {
          while (true)
          {
            oldContext = context;

            cmsContextPath = getCms(context + CMS_PATH_SEPARATOR + CMS_CONTEXT, true);
            if (cmsContextPath.equals(""))
            {
              break;
            }

            context = getCms(cmsContextPath, false);
            if (context.equals(""))
            {
              break;
            }

            if (!context.startsWith(CMS_PATH_ROOT))
            {
              context = oldContext + CMS_PATH_SEPARATOR + context;

              context = StringUtil.cleanUpPath(context);
            }
            
            if (getCms(context, true).equals("")) {
              throw new CmsException("Could not access the CMS uri '" + context + "' used by uri '" + cmsContextPath + "'");
            }

            if (!isPathAlreadyPresent(context, contexts))
            {
              contexts.add(0, context);
            }
          }
        }
      }
    }
    return contexts;
  }

  private static List<String[]> getCmsRecordSet(List<String> contexts, String subContext, boolean getReference)
  {
    String path;
    NumberFormat nf;

    nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);
    path = findCmsPath(contexts, subContext + CMS_PATH_SEPARATOR + CMS_KEY + nf.format(1));
    if (path != null && !path.equals(""))
    {
      path += CMS_PATH_SEPARATOR + subContext;
    }

    return getCmsRecordSet(path, getReference);
  }

  // private static List<String[]> getCmsRecordSet(Boolean isSorted, boolean getReference, String path)
  private static List<String[]> getCmsRecordSet(String path, boolean getReference)
  {
    Integer currentIndex;
    String cmsIndex;
    String key;
    List<String[]> result;
    String value;
    NumberFormat nf;
    List<String> record;
    String currentPath;

    result = new ArrayList<String[]>();
    currentIndex = 0;

    nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);

    while (true)
    {
      record = new ArrayList<String>();

      cmsIndex = nf.format(++currentIndex);

      currentPath = getCms(path + CMS_PATH_SEPARATOR + CMS_KEY + cmsIndex, true);
      if (currentPath.equals(""))
      {
        break;
      }
      key = getCms(currentPath, false);

      record.add(key);

      value = getCms(path + CMS_PATH_SEPARATOR + CMS_VALUE + cmsIndex, getReference);

      if (getReference)
      {
        record.add(value);
      }
      else
      {
        record.addAll(getValues(value));
      }

      result.add(record.toArray(new String[0]));
    }
    // if (isSorted)
    // {
    // Collections.sort(result, new KeyValueComparator());
    // }
    return result.size() > 0 ? result : null;
  }

  public static String getCmsString(List<String> contexts, String cmsKey, String defaultValue,
          boolean getReference)
  {
    String path;
    String value;

    path = findCmsPath(contexts, cmsKey);

    if (!path.equals(""))
    {
      value = getCms(path + CMS_PATH_SEPARATOR + cmsKey, getReference);
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

  protected static List<String> getValues(String path)
  {
    // TODO Allow the use of something different than semi-colon. Get it from CMS ?
    return Arrays.asList(getCms(path, false).split(CMS_COLUMN_SEPARATOR));
  }

  private static boolean isPathAlreadyPresent(String context, List<String> contexts)
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
}
