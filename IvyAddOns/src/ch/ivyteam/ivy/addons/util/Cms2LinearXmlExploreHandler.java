package ch.ivyteam.ivy.addons.util;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.persistence.PersistencyException;

/**
 * Handler class used with CmsExplorer to export the CMS to an XML file.<br />
 * The file produced look like :<br />
 * <pre>
 *  &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; ?&gt;
 *  &lt;IvyCms&gt;
 *    &lt;object lang=&quot;fr&quot; name=&quot;no&quot; type=&quot;String&quot; uri=&quot;/Labels/Buttons/no&quot;&gt;Non&lt;/object&gt;
 *    ...
 * </pre>
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */
public class Cms2LinearXmlExploreHandler extends ExploreHandler
{
  private String fileName;

  private Document xmldoc = null;

  private Element rootElement = null;

  public Cms2LinearXmlExploreHandler(String _fileName)
  {
    fileName = _fileName;
  }

  @Override
  public void endDocument()
  {
    StreamResult streamResult;
    try
    {
      streamResult = new StreamResult(new BufferedOutputStream(new FileOutputStream(fileName)));
    }
    catch (FileNotFoundException e)
    {
        throw new AddonsException(e);
    }
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

    transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");

    transformer.setOutputProperty(OutputKeys.INDENT, "yes");
    try
    {
      transformer.transform(domSource, streamResult);
    }
    catch (TransformerException e)
    {
      throw new AddonsException(e);
    }

  }

  @Override
  public void endNode(Object object, String name, String uri)
  {
  }

  @Override
  public void startDocument()
  {
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
    xmldoc = builder.newDocument();

    rootElement = xmldoc.createElement("IvyCms");
    xmldoc.appendChild(rootElement);
  }

  @Override
  public boolean startNode(Object object, String name, String uri)
  {
    IContentObject contentObject;
    String contentObjectType;
    Element objectElement;
    contentObject = (IContentObject) object;

    try
    {
      contentObjectType = contentObject.getContentObjectType().getName();

      if (contentObjectType.equals("String") || contentObjectType.equals("Text"))
      {

        for (IContentObjectValue contentObjectValue : contentObject.getValues())
        {
          objectElement = xmldoc.createElement("object");
          rootElement.appendChild(objectElement);

          objectElement.setAttribute("name", name);
          objectElement.setAttribute("uri", uri);

          objectElement.setAttribute("type", contentObject.getContentObjectType().getName());

          objectElement.setTextContent(contentObjectValue.getContentAsString());
          objectElement.setAttribute("lang", contentObjectValue.getLanguage().getLanguage());
        }
      }
    }
    catch (PersistencyException e)
    {
      throw new AddonsException(e);
    }
    return true;
  }
}
