package ch.ivyteam.ivy.addons.util;

import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;

/**
 * Explores the CMS and calls handler's methods. This class is useful to create import / export CMS methods.
 * The startNode() and endNode() handler's methods are called for every node and its translations.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
public class CmsExplorer
{
  private ExploreHandler handler;

  /**
   * Creates an CMS explorer with a specific handler.
   * 
   * @param _handler handle that should be used
   */
  public CmsExplorer(ExploreHandler _handler)
  {
    handler = _handler;
  }

  /**
   * Explores all the node descending from a starting uri and call the corresponding handler's method.
   * 
   * @param uri start uri for exploring
   */
  public void explore(String uri)
  {
    handler.startDocument();
    explore(uri, null);
    handler.endDocument();
  }

  private void explore(String uri, IContentObject parentObject)
  {
    IContentObject object;

    try
    {
      object = Ivy.cms().findContentObject(uri);

      if (handler.startNode(object, object.getName(), uri))
      {

        for (IContentObject child : object.getChildren())
        {
          explore(child.getUri(), object);
        }
      }
      handler.endNode(object, object.getName(), uri);
    }
    catch (IllegalArgumentException e)
    {
      throw new AddonsException(e);
    }
    catch (EnvironmentNotAvailableException e)
    {
      throw new AddonsException(e);
    }
    catch (PersistencyException e)
    {
      throw new AddonsException(e);
    }

  }

}
