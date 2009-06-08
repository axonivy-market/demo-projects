package ch.ivyteam.ivy.addons.util;

/**
 * Define default handler for explorer classes.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
public class ExploreHandler
{
  /**
   * Method called every time that the explorer class enters a new node.
   * 
   * @param object object that is actually explored
   * @param name name of the object
   * @param qualifiedName fully qualified name of the object
   * @return true if the current node should be explored too, false otherwise
   */
  public boolean startNode(Object object, String name, String qualifiedName)
  {
    return true;
  }

  /**
   * Method called every time that the explorer class leaves a node.
   * 
   * @param object object that is actually explored
   * @param name name of the object
   * @param qualifiedName fully qualified name of the object
   */
  public void endNode(Object object, String name, String uri)
  {

  }

  /**
   * Method called at the begin of the exploring.
   */
  public void startDocument()
  {

  }

  /**
   * Method called when the exploring is finished.
   */
  public void endDocument()
  {

  }
}
