package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Serialize a data class instance into an XML file that contains labels, selected values.<br />
 * Many XSL can be used to change the produced XML.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.10.2010
 */
public class SerializeXML
{
  private static final String ATTR_DESCRIPTION = "description";

  private static final String ATTR_LABEL = "label";

  private static final String ITEM = "item";

  private static final String UTF8 = "UTF-8";

  private static final String DESCRIPTION = "Description";

  private SerializeXML()
  {
  }

  protected static Document createDocument() throws AddonsException
  {
    Document xmldoc = null;
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

    xmldoc = impl.createDocument(null, "Ivy", null);

    return xmldoc;
  }

  protected static final String getValue(Object attribute, boolean detail)
  {
    String value;

    value = null;

    if (attribute != null
            && !ch.ivyteam.ivy.scripting.objects.util.IvyDefaultValues.isDefaultObject(attribute))
    {
      if (attribute.getClass().isPrimitive() || attribute instanceof String)
      {
        value = attribute.toString();
      }
      else
      {
        if (attribute instanceof Date)
        {
          DateFormat format = detail ? Component.getDateFormat() : new SimpleDateFormat("yyyyMMdd");
          value = format.format(((Date) attribute).toDate());
        }
        else if (attribute instanceof Time)
        {
          DateFormat format = detail ? DateFormat.getTimeInstance(DateFormat.MEDIUM) : new SimpleDateFormat(
                  "HHmmss");
          value = format.format(((Time) attribute).toDate());
        }
        else if (attribute instanceof DateTime)
        {
          DateFormat format = new SimpleDateFormat(detail ? "HH:mm:ss dd.MM.yyyy" : "yyyyMMdd-HHmmss");
          value = format.format(((DateTime) attribute).toDate());
        }
        else if (attribute instanceof Duration)
        {
          value = Long.valueOf(((Duration) attribute).toNumber()).toString();
        }
        else if (attribute instanceof Number)
        {
          value = attribute.toString();
        }
        else if (attribute instanceof Boolean)
        {
          value = attribute.toString();
        }
      }
    }
    return value;
  }

  protected static final void introspectionXMLSerialization(Object object, Element node, Document doc)
          throws AddonsException
  {
    if (object != null)
    {
      BeanInfo beanInfo;
      try
      {
        beanInfo = Introspector.getBeanInfo(object.getClass());
      }
      catch (IntrospectionException e)
      {
        throw new AddonsException(e);
      }
      Element element;
      Method method;
      Object attribute;
      Class propertyType;
      String value;

      for (PropertyDescriptor f : beanInfo.getPropertyDescriptors())
      {
        propertyType = f.getPropertyType();

        if (propertyType == null || propertyType.isInstance(Class.class))
        {
          continue;
        }
        method = f.getReadMethod();
        try
        {
          attribute = method.invoke(object);
        }
        catch (IllegalArgumentException e)
        {
          throw new AddonsException(e);
        }
        catch (IllegalAccessException e)
        {
          throw new AddonsException(e);
        }
        catch (InvocationTargetException e)
        {
          throw new AddonsException(e);
        }

        element = doc.createElement(f.getName());
        node.appendChild(element);

        value = getValue(attribute, false);
        if (value == null)
        {
          if (attribute instanceof Iterable)
          {
            for (Object o : (Iterable) attribute)
            {
              Element item;
              item = doc.createElement(ITEM);
              element.appendChild(item);
              introspectionXMLSerialization(o, item, doc);
            }
          }
          else
          {
            introspectionXMLSerialization(attribute, element, doc);
          }
        }
        else
        {
          element.setTextContent(value);
        }
      }
    }
  }

  private static void streamDocument(Document xmldoc, StreamResult streamResult, String encoding)
          throws AddonsException
  {
    DOMSource domSource = new DOMSource(xmldoc);
    TransformerFactory transformerFactory = TransformerFactory.newInstance();
    Transformer transformer;
    try
    {
      transformer = transformerFactory.newTransformer();
    }
    catch (TransformerConfigurationException e)
    {
      throw new AddonsException(e);
    }
    if (encoding != null)
    {
      transformer.setOutputProperty("encoding", encoding);
    }
    transformer.setOutputProperty("indent", "yes");
    try
    {
      transformer.transform(domSource, streamResult);
    }
    catch (TransformerException e)
    {
      throw new AddonsException(e);
    }

  }

  private Document document = null;

  private List<StreamSource> xslStreamSources = null;

  /**
   * Adds a XSL that should be used to format output.
   * 
   * @param xslString xsl document as string
   */
  public final void addXSLString(String xslString)
  {
    if (xslStreamSources == null)
    {
      xslStreamSources = new ArrayList<StreamSource>();
    }
    xslStreamSources.add(new StreamSource(new StringReader(xslString)));
  }

  /**
   * Gets DOM document.
   * 
   * @return DOM document
   */
  public final Document getDocument()
  {
    return document;
  }

  /**
   * Saves document into file.
   * 
   * @param fileName XML file name
   * @throws AddonsException
   */
  public final void saveDocument(String fileName) throws AddonsException
  {
    // Serialisation through Tranform.
    StreamResult streamResult;
    try
    {
      streamResult = new StreamResult(new BufferedOutputStream(new FileOutputStream(fileName)));
    }
    catch (FileNotFoundException e)
    {
      throw new AddonsException(e);
    }
    streamDocument(document, streamResult, UTF8);
  }

  /**
   * Saves document into byte array.
   * 
   * @return XML byte array
   * @throws AddonsException
   */
  public final byte[] saveDocumentAsUTF8ByteArray() throws AddonsException
  {
    // Serialisation through Tranform.
    StringWriter stringWriter;

    stringWriter = new StringWriter();
    StreamResult streamResult = new StreamResult(stringWriter);
    streamDocument(document, streamResult, UTF8);

    try
    {
      return stringWriter.toString().getBytes(UTF8);
    }
    catch (UnsupportedEncodingException e)
    {
      throw new AddonsException(e);
    }
  }

  /**
   * Saves document into string.
   * 
   * @return XML string
   * @throws AddonsException
   */
  public final String saveDocumentIntoString() throws AddonsException
  {
    // Serialisation through Tranform.
    StringWriter stringWriter;

    stringWriter = new StringWriter();
    StreamResult streamResult = new StreamResult(stringWriter);
    streamDocument(document, streamResult, null);

    return stringWriter.toString();
  }

  /**
   * Serializes an object that was not used with DynamicDialog.<br />
   * Labels and selected values are not known.
   * 
   * @param object object to serialize
   * @throws AddonsException
   */
  public final void serializeXML(Object object) throws AddonsException
  {
    serializeXMLWithXSLStreamSource(object, null);
  }

  /**
   * Serializes an object that was used with DynamicDialog.
   * 
   * @param object object to serialize
   * @param attributeDetail attribute detail constructed by DynamicDialog
   * @throws AddonsException
   */
  public final void serializeXML(Object object, TreeNode<ComponentParameters> attributeDetail)
          throws AddonsException
  {
    serializeXMLWithXSLStreamSource(object, attributeDetail);
  }

  protected final void serializeXMLWithXSLStreamSource(Object object,
          TreeNode<ComponentParameters> attributeDetail) throws AddonsException
  {
    TransformerFactory transformerFactory;
    Transformer transformer;
    DOMSource domSource;
    DOMResult domResult;
    DocumentBuilder builder;
    DocumentBuilderFactory builderFactory;

    document = createDocument();

    if (attributeDetail == null)
    {
      introspectionXMLSerialization(object, document.getDocumentElement(), document);
    }
    else
    {
      xmlSerialization(object, attributeDetail, document);
    }

    if (xslStreamSources != null)
    {
      transformerFactory = TransformerFactory.newInstance();
      builderFactory = DocumentBuilderFactory.newInstance();
      try
      {
        builder = builderFactory.newDocumentBuilder();
      }
      catch (ParserConfigurationException e)
      {
        throw new AddonsException(e);
      }

      for (StreamSource xsl : xslStreamSources)
      {
        domSource = new DOMSource(document);
        document = builder.newDocument();
        domResult = new DOMResult(document);

        try
        {
          transformer = transformerFactory.newTransformer(xsl);
          transformer.transform(domSource, domResult);
        }
        catch (TransformerConfigurationException e)
        {
          throw new AddonsException(e);
        }
        catch (TransformerException e)
        {
          throw new AddonsException(e);
        }
      }
    }
  }

  protected final void xmlSerialization(Object object,
          TreeNode<ComponentParameters> attributeDetail, Document document) throws AddonsException
  {
    xmlSerialization(object, attributeDetail, document.getDocumentElement(), document);
  }

  protected final void xmlSerialization(Object object, TreeNode<ComponentParameters> attributeDetail,
          Element node, Document document) throws AddonsException
  {
    Element element;
    String value;
    BeanInfo beanInfo;
    Map<String, PropertyDescriptor> propertyMap;
    String attributeName;
    PropertyDescriptor descriptionProperty;
    PropertyDescriptor attributeProperty;

    try
    {
      beanInfo = Introspector.getBeanInfo(object.getClass());
    }
    catch (IntrospectionException e)
    {
      throw new DynamicDialogException(e);
    }

    propertyMap = new HashMap<String, PropertyDescriptor>();
    for (PropertyDescriptor property : beanInfo.getPropertyDescriptors())
    {
      propertyMap.put(property.getName(), property);
    }

    for (TreeNode<ComponentParameters> child : attributeDetail.getChildren())
    {
      attributeName = child.getValue().getName();
      element = document.createElement(attributeName);
      node.appendChild(element);

      element.setAttribute(ATTR_LABEL, child.getValue().getTitle());

      if (object != null)
      {
        try
        {
          if (child.getChildren() != null && !child.getChildren().isEmpty())
          {
            Object childObject = propertyMap.get(attributeName).getReadMethod().invoke(object,
                    new Object[] {});
            if (childObject != null)
            {
              if (child.getValue().isList())
              {
                Iterable list = (Iterable) childObject;

                for (Object itemObject : list)
                {
                  Element item;
                  item = document.createElement(ITEM);
                  element.appendChild(item);
                  xmlSerialization(itemObject, child.getChildren().get(0), item, document);
                }

              }
              else
              {
                xmlSerialization(childObject, child, element, document);
              }
            }
          }
          else
          {
            attributeProperty = propertyMap.get(attributeName);
            value = getValue(attributeProperty.getReadMethod().invoke(object, new Object[] {}), false);
            element.setTextContent(value);

            descriptionProperty = propertyMap.get(attributeName + DESCRIPTION);
            if (descriptionProperty == null)
            {
              descriptionProperty = attributeProperty;
            }
            value = getValue(descriptionProperty.getReadMethod().invoke(object, new Object[] {}), true);
            element.setAttribute(ATTR_DESCRIPTION, value);
          }
        }
        catch (IllegalArgumentException e)
        {
          throw new AddonsException(e);
        }
        catch (IllegalAccessException e)
        {
          throw new AddonsException(e);
        }
        catch (InvocationTargetException e)
        {
          throw new AddonsException(e);
        }
      }
    }
  }

  /**
   * Gets a new instance of the class.
   * 
   * @return newly created instance
   */
  public static SerializeXML getNewInstance()
  {
    return new SerializeXML();
  }
}
