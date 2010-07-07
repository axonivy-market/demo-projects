package ch.ivyteam.ivy.addons.xmlserialization;

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
import java.util.List;

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

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.StaticRelation;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DataClassAttributeDetail;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Serialize a data class instance into an XML file that contains labels, selected values.<br />
 * Many XSL can be used to change the produced XML.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class SerializeDataClass
{
  private static final String ATTR_DESCRIPTION = "description";

  private static final String ATTR_LABEL = "label";

  private static final String ITEM = "item";

  private static final String UTF8 = "UTF-8";

  protected static Document createDocument()
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

  protected static String getValue(Object attribute, boolean detail)
  {
    String value;

    value = null;

    if (attribute == null)
    {

    }
    else
    {
      // if (propertyType.isPrimitive() || attribute instanceof String) {
      if (attribute.getClass().isPrimitive() || attribute instanceof String)
      {
        value = attribute.toString();
      }
      else
      {
        if (attribute instanceof Date)
        {
          DateFormat format = new SimpleDateFormat(detail ? "dd.MM.yyyy" : "yyyyMMdd");
          value = format.format(((Date) attribute).toDate());
        }
        else if (attribute instanceof Time)
        {
          DateFormat format = new SimpleDateFormat(detail ? "HH:mm:ss" : "HHmmss");
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

  @SuppressWarnings("unchecked")
protected static void introspectionXMLSerialization(Object object, Element node, Document doc)
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
          continue;
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

  protected Document document = null;

  private StaticRelation staticRelation;

  protected List<StreamSource> xslStreamSources = null;

  public SerializeDataClass(StaticRelation _staticRelation)
  {
    staticRelation = _staticRelation;
  }

  /**
   * Adds a XSL that should be used to format output.
   * 
   * @param xslString xsl document as string
   */
  public void addXSLString(String xslString)
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
  public Document getDocument()
  {
    return document;
  }

  /**
   * Saves document into file.
   * 
   * @param fileName XML file name
   */
  public void saveDocument(String fileName)
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
   */
  public byte[] saveDocumentAsUTF8ByteArray()
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
   */
  public String saveDocumentIntoString()
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
   */
  public void serializeXML(CompositeObject object)
  {
    serializeXMLWithXSLStreamSource(object, null);
  }

  /**
   * Serializes an object that was used with DynamicDialog.
   * 
   * @param object object to serialize
   * @param attributeDetail attribute detail constructed by DynamicDialog
   */
  public void serializeXML(CompositeObject object, DataClassAttributeDetail attributeDetail)
  {
    serializeXMLWithXSLStreamSource(object, attributeDetail);
  }

  protected void serializeXMLWithXSLStreamSource(CompositeObject object,
          DataClassAttributeDetail attributeDetail)
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

  protected void xmlSerialization(CompositeObject object, DataClassAttributeDetail attributeDetail,
          Document document)
  {
    xmlSerialization(object, attributeDetail, document.getDocumentElement(), document);
  }

  @SuppressWarnings("unchecked")
protected void xmlSerialization(Object object, DataClassAttributeDetail attributeDetail, Element node,
          Document document)
  {
    Element element;
    String value;

    for (DataClassAttributeDetail child : attributeDetail.children)
    {
      element = document.createElement(child.name);
      node.appendChild(element);

      element
              .setAttribute(ATTR_LABEL, staticRelation.get(child.fullName).getComponentParameters()
                      .getTitle());

      if (object == null)
      {

      }
      else
      {
        try
        {
          if (child.children != null)
          {
            Object childObject = child.read.invoke(object, new Object[] {});
            if (child.isList)
            {
              List list = (List) childObject;

              for (Object itemObject : list)
              {
                Element item;
                item = document.createElement(ITEM);
                element.appendChild(item);
                xmlSerialization(itemObject, child, item, document);
              }

            }
            else
            {
              xmlSerialization(childObject, child, element, document);
            }
          }
          else
          {
            value = getValue(child.read.invoke(object, new Object[] {}), false);
            element.setTextContent(value);

            value = getValue(child.readText.invoke(object, new Object[] {}), true);
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
}
