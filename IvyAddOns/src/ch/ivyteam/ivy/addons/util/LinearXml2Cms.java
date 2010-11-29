package ch.ivyteam.ivy.addons.util;

import java.io.IOException;
import java.util.Locale;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import ch.ivyteam.ivy.addons.restricted.util.CmsWriteAccess;
import ch.ivyteam.ivy.cm.CoType;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * Fills the CMS from an XML file.
 * @see Cms2LinearXml
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.05.2009
 */

public final class LinearXml2Cms
{
  private LinearXml2Cms()
  {
  }

  /**
   * Reads an xml file to fill the CMS.
   * 
   * @see Cms2LinearXml
   * @param file xml file
   * @throws AddonsException
   */
  @Deprecated
  public static void convert(String file) throws AddonsException
  {
    convert(file, Ivy.cms());
  }

  /**
   * Reads an xml file to fill the CMS.
   * 
   * @see Cms2LinearXml
   * @param file xml file
   * @param cms context management system that should be exported
   * @throws AddonsException
   */
  public static void convert(String file, IContentManagementSystem cms) throws AddonsException
  {
    DocumentBuilderFactory domFactory;
    DocumentBuilder builder;
    Document doc;
    XPathFactory factory;
    XPath xpath;
    XPathExpression expr;
    Node node;
    CoType cmsNodeType;
    Locale locale;
    String uri;
    String value;
    String language;
    String[] splittedLanguage;
    String type;

    try
    {
      domFactory = DocumentBuilderFactory.newInstance();
      domFactory.setNamespaceAware(true); // never forget this!
      builder = domFactory.newDocumentBuilder();
      doc = builder.parse(file);

      factory = XPathFactory.newInstance();
      xpath = factory.newXPath();
      expr = xpath.compile("/IvyCms/object");

      Object result = expr.evaluate(doc, XPathConstants.NODESET);
      NodeList nodes = (NodeList) result;
      for (int i = 0; i < nodes.getLength(); i++)
      {
        node = nodes.item(i);

        uri = node.getAttributes().getNamedItem("uri").getTextContent();
        value = node.getTextContent();
        language = node.getAttributes().getNamedItem("lang").getTextContent();
        type = node.getAttributes().getNamedItem("type").getTextContent();

        cmsNodeType = CoType.getValueForTypeName(type);
        splittedLanguage = language.split("-", 2);
        locale = new Locale(splittedLanguage.length > 0 ? splittedLanguage[0] : "",
                splittedLanguage.length > 1 ? splittedLanguage[1] : "");

        CmsWriteAccess.write(uri, value, locale, cmsNodeType, cms);
      }
    }
    catch (ParserConfigurationException e)
    {
      throw new AddonsException(e);
    }
    catch (IOException e)
    {
      throw new AddonsException(e);
    }
    catch (XPathExpressionException e)
    {
      throw new AddonsException(e);
    }
    catch (SAXException e)
    {
      throw new AddonsException(e);
    }
  }
}
