package ch.ivyteam.ivy.addons.util;

/**
 * Exports a CMS branch into an XML file.
 * 
 * @deprecated This is provided for compatibility only. Please use the new Cms2LinearXml class,
 * @see Cms2LinearXml
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
@Deprecated
public final class CmsExport
{
  private CmsExport()
  {
  }

  /**
   * Exports the specified CMS branch.
   * 
   * @param fileName xml file to produce
   * @param uri starting point of the export
   * @throws AddonsException
   */
  public static void export(String fileName, String uri) throws AddonsException
  {
    Cms2LinearXml.convert(fileName, uri);
  }
}
