package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.KnownParameters;
import ch.ivyteam.ivy.addons.restricted.util.CmsWriteAccess;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;

final class ParameterTreeListHelper
{
  private ParameterTreeListHelper()
  {
  }

  static class Item
  {
    private String key;

    private String keySubPath;

    private String valueSubPath;

    private Map<Locale, String> values;

    protected Item()
    {
      values = new HashMap<Locale, String>();
    }

    protected final String getKeySubPath()
    {
      return keySubPath;
    }

    protected final String getValueSubPath()
    {
      return valueSubPath;
    }

    protected final String getKey()
    {
      return key;
    }

    protected final Map<Locale, String> getValues()
    {
      return values;
    }

    protected void setKey(String key)
    {
      this.key = key;
    }

    protected void setKeySubPath(String keySubPath)
    {
      this.keySubPath = keySubPath;
    }

    protected void setValueSubPath(String valueSubPath)
    {
      this.valueSubPath = valueSubPath;
    }
  }

  protected static List<Item> readList(String uri) throws PersistencyException
  {
    String index;
    List<Item> result;
    String keyPath;
    String subPath;
    Item item;
    String itemURI;
    IContentObjectValue value;
    int i;
    boolean stop;
    String cleanURI;

    result = new ArrayList<Item>();

    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);

    cleanURI = StringUtil.cleanUpPath(uri);

    i = 1;
    while (true)
    {
      stop = true;
      index = nf.format(i++);

      subPath = KnownParameters.KEY_VALUE + index;
      keyPath = Ivy.cms().cr(cleanURI + "/" + subPath);
      if (!keyPath.equals(""))
      {
        stop = false;
      }

      item = new Item();
      item.setKey(Ivy.cms().co(keyPath));
      item.setKeySubPath(subPath);
      subPath = KnownParameters.CONTENT_VALUE + index;
      itemURI = cleanURI + "/" + subPath;
      item.setValueSubPath(subPath);
      for (Locale locale : Ivy.cms().getSupportedLanguages())
      {
        value = Ivy.cms().getContentObjectValue(itemURI, locale);
        if (value != null && value.getLanguage().equals(locale))
        {
          item.getValues().put(locale, value.getContentAsString());
          if (!value.getContentAsString().equals(""))
          {
            stop = false;
          }
        }
      }
      result.add(item);

      if (stop)
      {
        break;
      }
    }
    return result;
  }

  protected static void writeList(String uri, List<Item> list, IContentManagementSystem cms)
          throws PersistencyException, AddonsException
  {
    NumberFormat nf;
    String index;
    String itemURI;
    String cleanURI;
    int i;

    cleanURI = StringUtil.cleanUpPath(uri);

    nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(3);
    i = 1;
    for (Item item : list)
    {
      index = nf.format(i++);

      itemURI = cleanURI + "/" + KnownParameters.KEY_VALUE + index;
      write(itemURI, item.getKey(), null, cms);
      itemURI = cleanURI + "/" + KnownParameters.CONTENT_VALUE + index;
      for (Locale locale : Ivy.cms().getSupportedLanguages())
      {
        write(itemURI, item.getValues().get(locale), locale, cms);
      }
    }
    while (true)
    {
      index = nf.format(i++);
      itemURI = cleanURI + "/" + KnownParameters.KEY_VALUE + index;
      if (Ivy.cms().cr(itemURI).equals(""))
      {
        break;
      }
      CmsWriteAccess.remove(itemURI, null, cms);
      itemURI = cleanURI + "/" + KnownParameters.CONTENT_VALUE + index;
      for (Locale locale : Ivy.cms().getSupportedLanguages())
      {
        CmsWriteAccess.remove(itemURI, locale, cms);
      }
    }
  }

  private static void write(String uri, String value, Locale locale, IContentManagementSystem cms)
          throws AddonsException, PersistencyException
  {
    if (value == null || value.equals(""))
    {
      CmsWriteAccess.remove(uri, locale, cms);
    }
    else
    {
      CmsWriteAccess.write(uri, value, locale, cms);
    }
  }
}
