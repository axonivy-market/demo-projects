package ch.ivyteam.ivy.addons.util;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

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
 * Exports the CMS to an XML file.<br />
 * The file produced looks like :<br />
 * 
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
public final class Cms2LinearXml
{
  private Cms2LinearXml()
  {
  }

  /**
   * Extracts a CMS branch to an XML file.
   * 
   * @param file name of the XML file to produce
   * @param uri CMS uri from where the extraction begins
   * @throws AddonsException
   */
  public static void convert(String file, String uri) throws AddonsException
  {
    CmsExplorer explorer;

    explorer = new CmsExplorer(new Handler(file));
    explorer.explore(uri);
  }

  private static final class Handler extends ExploreHandler<IContentObject>
  {
    private String fileName;

    private Document xmldoc = null;

    private Element rootElement = null;

    private Handler(String fileName)
    {
      this.fileName = fileName;
    }

    @Override
    protected void endDocument() throws AddonsException
    {
      StreamResult streamResult;
      BufferedOutputStream bufferedOutputStream;

      bufferedOutputStream = null;
      try
      {
        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileName));
        streamResult = new StreamResult(bufferedOutputStream);
        DOMSource domSource = new DOMSource(xmldoc);
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer;
        transformer = transformerFactory.newTransformer();

        transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");

        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.transform(domSource, streamResult);
      }
      catch (TransformerConfigurationException e)
      {
        throw new AddonsException(e);
      }
      catch (TransformerException e)
      {
        throw new AddonsException(e);
      }
      catch (FileNotFoundException e)
      {
        throw new AddonsException(e);
      }
      finally
      {
        if (bufferedOutputStream != null)
        {
          try
          {
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
          }
          catch (IOException e)
          {
            throw new AddonsException(e);
          }
        }
      }
    }

    @Override
    public void startDocument() throws AddonsException
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
    public boolean startNode(IContentObject object, String name, String uri) throws AddonsException
    {
      IContentObject contentObject;
      String contentObjectType;
      Element objectElement;
      String language;

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
            language = contentObjectValue.getLanguage().getLanguage();
            if (!contentObjectValue.getLanguage().getCountry().equals(""))
            {
              language += "-" + contentObjectValue.getLanguage().getCountry();

            }
            objectElement.setAttribute("lang", language);
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
}
