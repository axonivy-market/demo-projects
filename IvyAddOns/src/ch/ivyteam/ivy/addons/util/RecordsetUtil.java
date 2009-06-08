package ch.ivyteam.ivy.addons.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Recordset utilities.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 30.01.2009
 */
public class RecordsetUtil
{
  /**
   * Transforms a List<List<String>> into a List<String[]>.
   * 
   * @param stringListList recordset of type List<List<String>>
   * @return
   */
  public static List<String[]> getRecordset(List<List<String>> stringListList)
  {
    List<String[]> result;
    String[] temp = new String[] {};

    result = new ArrayList<String[]>();
    for (List<String> item : stringListList)
    {
      result.add(item.toArray(temp));
    }
    return result;
  }
}
