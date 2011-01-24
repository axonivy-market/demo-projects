package ch.ivyteam.ivy.addons.util;

import java.util.Map;
import java.util.Stack;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

/**
 * Exports a Data class into an XML file.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 09.03.2010
 */
public final class DataClass2Xml extends ExploreHandler<Object>
{
  private Document xmldoc;

  private String namespace;

  private Stack<Node> nodes;

  private Object lastObject;

  private Boolean isRoot;

  private Object rootObject;

  private Map<String, String> tagNameSubstitutions;

  private DataClass2Xml(Object object, String namespace, Map<String, String> tagNameSubstitutions)
  {
    this.namespace = namespace;
    this.rootObject = object;
    this.tagNameSubstitutions = tagNameSubstitutions;
  }

  /**
   * Performs the export of a data class to an XML document
   * 
   * @param object data class that should be exported to XML
   * @param namespace xml name space of the resulting XML document
   * @param tagNameSubstitutions attribute names are used to construct XML element name. This map permits the
   *          use of specific name for the element that correspond to a specific data class attribute name. It can be null.
   * @param createNodes indicates if null complex attributes should be created into the XML document
   * @return the dom document that contains the XML representation of the data class
   * @throws AddonsException
   */
  public static Document convert(Object object, String namespace, Map<String, String> tagNameSubstitutions,
          boolean createNodes) throws AddonsException
  {
    DataClass2Xml handler;
    DataClassInstanceExplorer explorer;

    handler = new DataClass2Xml(object, namespace, tagNameSubstitutions);
    explorer = new DataClassInstanceExplorer(handler);

    explorer.explore(object, createNodes);

    return handler.getDocument();
  }

  private Document getDocument()
  {
    return xmldoc;
  }

  @Override
  public void startDocument() throws AddonsException
  {
    String rootTagName;
    String[] temp;

    nodes = new Stack<Node>();

    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
    DocumentBuilder builder;
    try
    {
      builder = factory.newDocumentBuilder();
    }
    catch (ParserConfigurationException e)
    {
      throw new AddonsException(e);
    }
    DOMImplementation impl = builder.getDOMImplementation();

    temp = rootObject.getClass().getName().split("\\.");
    rootTagName = temp[temp.length - 1];
    rootTagName = tagNameSubstitution(rootTagName, tagNameSubstitutions);

    xmldoc = impl.createDocument(namespace, rootTagName, null);

    isRoot = true;
  }

  protected static String tagNameSubstitution(String name, Map<String, String> tagNameSubstitutions)
  {
    String result;
    
    result = name;
    if (tagNameSubstitutions != null && tagNameSubstitutions.containsKey(name))
    {
      result = tagNameSubstitutions.get(name);
    }
    return result;
  }

  @Override
  public boolean startNode(Object object, String name, String qualifiedName)
  {
    Node node;
    boolean result;

    result = false;
    if (object != null)
    {
      result = true;
      if (isRoot)
      {
        nodes.push(xmldoc.getDocumentElement());
        isRoot = false;
      }
      else
      {
        node = xmldoc.createElement(tagNameSubstitution(name, tagNameSubstitutions));
        nodes.peek().appendChild(node);
        nodes.push(node);
      }
      lastObject = object;
    }

    return result;
  }

  @Override
  public void endNode(Object object, String name, String uri)
  {
    Node node;

    if (object != null)
    {
      node = nodes.pop();
      if (object.equals(lastObject) && !(object instanceof Iterable<?>))
      {
        node.setTextContent(object.toString());
      }
    }
    super.endNode(object, name, uri);
  }
}
