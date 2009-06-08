package ch.ivyteam.ivy.addons.util;

/**
 * Export a CMS branch into an XML file.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
public class CmsExport
{
  /**
   * Exports the specified CMS branch.
   * 
   * @param fileName xml file to produce
   * @param uri starting point of the export
   */
  static public void export(String fileName, String uri)
  {
    CmsExplorer explorer;
    Cms2LinearXmlExploreHandler handler;

    handler = new Cms2LinearXmlExploreHandler(fileName);
    explorer = new CmsExplorer(handler);

    explorer.explore(uri);
  }

}
