package ch.ivyteam.ivy.addons.util;

/**
 * Define default handler for explorer classes.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
public class ExploreHandler<T>
{
  /**
   * Method called every time that the explorer class enters a new node.
   * 
   * @param object object that is actually explored
   * @param name name of the object
   * @param qualifiedName fully qualified name of the object
   * @return true if the current node should be explored too, false otherwise
   * @throws AddonsException 
   */
  public boolean startNode(T object, String name, String qualifiedName) throws AddonsException
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
  public void endNode(T object, String name, String uri)
  {
  }

  /**
   * Method called after the endNode to ask to the handler if the same node should be explored again. Calling
   * this method is not mandatory. Some explorer classes don't use it.
   * 
   * @return true if the same node should be explored again, false otherwise
   */
  public boolean redoSameNode()
  {
    return false;
  }

  /**
   * Method called at the begin of the exploring.
   * @throws AddonsException 
   */
  public void startDocument() throws AddonsException
  {

  }

  /**
   * Method called when the exploring is finished.
   * @throws AddonsException 
   */
  protected void endDocument() throws AddonsException
  {

  }
}
