package ch.ivyteam.ivy.addons.util;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/**
 * String utilities.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 23.10.2008
 */
public class StringUtil
{
  /**
   * Clean up a string as it was a unix fs path.<br />
   * <code>/root/a/b/../c becomes /root/a/c</code>
   * 
   * @param fullPath path to clean up
   * @return
   */
  public static String cleanUpPath(String fullPath)
  {
    List<String> parts;
    int index;

    // new ArrayList is present to avoid UnsupportedOperationException when
    // remove() is invoked because asList create a fixed size list.
    parts = new ArrayList<String>(java.util.Arrays.asList(fullPath.split("/")));

    index = 0;
    while (index < parts.size())
    {
      if (parts.get(index).equals("."))
      {
        parts.remove(index);
      }
      else if (parts.get(index).equals(".."))
      {
        parts.remove(index);
        if (index == 0)
        {
          break;
        }
        else
        {
          index--;
          parts.remove(index);
        }
      }
      else
      {
        index++;
      }
    }

    return StringUtil.join(parts, "/");
  }

  /**
   * Joins different string parts with a specific string. <code>
   * list = {"a", "b", "c"}
   * separator = ";"
   * result = "a;b;c"
   * </code>
   * 
   * @param list item to join
   * @param separator string to put between two items
   * @return joined string
   */
  public static String join(List<String> list, String separator)
  {
    if (list == null)
      return "";
    if (separator == null)
      separator = "";

    StringBuffer buf = new StringBuffer();
    for (int i = 0; i < list.size(); i++)
    {
      buf.append(list.get(i));
      if (i < list.size() - 1)
        buf.append(separator);
    }

    return buf.toString();
  }

  /**
   * Replaces in the source string the keys given by the hashtable by their values. The keys can be framed in
   * the source string with markers. <br />
   * If the key is "test" and both markers are "%", the string "%test%" is searched and replaced.
   * 
   * @param source string that should be modified
   * @param hash values to subst
   * @param startMarker begin mark of the string to replace
   * @param endMarker end mark of the string to replace
   * @return
   */
  public static String substitute(String source, Hashtable<String, String> hash, String startMarker,
          String endMarker)
  {
    String result;

    result = source;

    if (hash != null)
    {
      for (String key : hash.keySet())
      {
        result = result.replaceAll(startMarker + key + endMarker, hash.get(key));
      }
    }

    return result;
  }

}
