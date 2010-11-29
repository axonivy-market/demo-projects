package ch.ivyteam.ivy.addons.util;

import java.math.BigDecimal;
import java.util.Map;
import java.util.Stack;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import ch.ivyteam.ivy.addons.restricted.util.DataClassFactory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Helper class that deserialize an XML file to a data class.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.11.2009
 */
public final class Xml2DataClass extends ExploreHandler<Class>
{
  private Node xmlNode;

  private Stack<Element> elements;

  private Map<String, String> tagNameSubstitutions;

  private Stack<Object> objects;

  private Object rootObject;

  private Xml2DataClass(Node xmlNode, Map<String, String> tagNameSubstitutions, Object object)
  {
    this.xmlNode = xmlNode;
    this.tagNameSubstitutions = tagNameSubstitutions;
    this.objects = new Stack<Object>();
    this.elements = new Stack<Element>();
    this.rootObject = object;
  }

  /**
   * Deserializes the XML file.
   * 
   * @param object object that is filled by this method
   * @param xmldoc dom document
   * @param tagNameSubstitutions map that gives attribute name for a given xml element name.<br />
   *          Only fill the map with attributes that doesn't have the same name than the xml element name. XML
   *          element name can contain invalid java chars like '-' or may have a different case.<br />
   *          key = Ivy DC attribute name<br />
   *          value = xml element name
   * @throws AddonsException
   */
  public static void convert(final Object object, Document xmldoc, Map<String, String> tagNameSubstitutions)
          throws AddonsException
  {
    convert(object, xmldoc.getDocumentElement(), tagNameSubstitutions);
  }

  private static void convert(final Object object, Node xmlNode, Map<String, String> tagNameSubstitutions)
          throws AddonsException
  {
    Xml2DataClass handler;
    DataClassExplorer explorer;

    handler = new Xml2DataClass(xmlNode, tagNameSubstitutions, object);
    explorer = DataClassExplorer.createClassExplorer(handler);

    explorer.explore(object.getClass());
  }

  @SuppressWarnings("unchecked")
  @Override
  public boolean startNode(Class propertyType, String name, String qualifiedName) throws AddonsException
  {
    Node xmlCurrentNode;
    Object value;
    Object parentObject;
    Element parentElement;
    boolean result;

    parentObject = null;
    parentElement = null;
    result = false;
    if (!objects.empty())
    {
      parentObject = objects.peek();
      parentElement = elements.peek();
    }

    xmlCurrentNode = findNode(name, parentElement);

    if (parentObject == null)
    {
      value = rootObject;
    }
    else
    {
      value = null;
      if (TypeCategory.getCategory(propertyType) == TypeCategory.TypeCategoryEnum.SIMPLE)
      {
        if (isLeaf(xmlCurrentNode))
        {
          value = processLeaf(propertyType, xmlCurrentNode);
        }
        result = false;
      }
      else
      {
        value = DataClassFactory.newInstance(propertyType);
      }
      if (parentObject instanceof List)
      {
        List list = (List) parentObject;
        xmlCurrentNode = findNode(name, parentElement, list.size());
        list.add(value);
      }
      else
      {
        fillAttribute(name, value, parentObject);
      }
    }

    objects.push(value);
    elements.push(xmlCurrentNode instanceof Element ? (Element) xmlCurrentNode : null);
    if (xmlCurrentNode != null)
    {
      result = super.startNode(propertyType, name, qualifiedName) && xmlCurrentNode.hasChildNodes();
    }

    return result;
  }

  private void fillAttribute(String name, Object value, Object parentObject) throws AddonsException
  {
    if (value != null && parentObject instanceof CompositeObject)
    {
      try
      {
        ((CompositeObject) parentObject).set(name, value);
      }
      catch (NoSuchFieldException e)
      {
        throw new AddonsException(e);
      }
    }
  }

  private Node findNode(String name, Element parentElement)
  {
    return findNode(name, parentElement, 0);
  }

  private Node findNode(String name, Element parentElement, int index)
  {
    Node xmlCurrentNode;

    if (parentElement == null)
    {
      xmlCurrentNode = this.xmlNode;
    }
    else
    {
      xmlCurrentNode = parentElement.getElementsByTagName(
              DataClass2Xml.tagNameSubstitution(name, tagNameSubstitutions)).item(index);
    }
    return xmlCurrentNode;
  }

  private Object processLeaf(Class<?> propertyType, Node xmlNode)
  {
    String textValue;
    Object value;

    textValue = xmlNode.getTextContent();
    value = null;

    if (propertyType.isAssignableFrom(String.class))
    {
      value = textValue;
    }
    else if (propertyType.equals(Integer.class))
    {
      value = Integer.parseInt(textValue);
    }
    else if (propertyType.isAssignableFrom(Number.class))
    {
      try
      {
        value = new BigDecimal(textValue);
      }
      catch (NumberFormatException e)
      {
        value = null;
      }
    }
    else if (propertyType.isAssignableFrom(Boolean.class))
    {
      value = !(textValue.equals("") || textValue.equals("0") || textValue.equals("false"));
    }
    else if (propertyType.isAssignableFrom(Date.class))
    {
      // TODO is that possible without a formatter
      value = new Date(textValue);
    }
    else if (propertyType.isAssignableFrom(Time.class))
    {
      value = new Time(textValue);
    }
    else if (propertyType.isAssignableFrom(DateTime.class))
    {
      value = new DateTime(textValue);
    }
    else if (propertyType.isAssignableFrom(Duration.class))
    {
      value = new Duration(textValue);
    }
    // Ignore other types
    return value;
  }

  private boolean isLeaf(Node xmlNode)
  {
    boolean result;

    result = false;
    do
    {
      if (xmlNode == null)
      {
        break;
      }
      if (xmlNode.getChildNodes().getLength() == 1 && xmlNode.getFirstChild().getNodeType() == Node.TEXT_NODE)
      {
        result = true;
        break;
      }
      if (xmlNode.hasChildNodes())
      {
        break;
      }

      result = true;
    } while (false);

    return result;
  }

  @Override
  public void endNode(Class propertyType, String name, String uri)
  {
    objects.pop();
    elements.pop();

    super.endNode(propertyType, name, uri);
  }

  @Override
  public boolean redoSameNode()
  {
    boolean result;
    Object parent;

    result = false;

    if (!objects.empty())
    {
      parent = objects.peek();
      if (parent instanceof List)
      {
        List list = (List) parent;
        if (elements.peek().getElementsByTagName("item").getLength() != list.size())
        {
          result = true;
        }
      }
    }
    return result;
  }
}
