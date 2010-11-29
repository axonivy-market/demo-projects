package ch.ivyteam.ivy.addons.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/**
 * Helper class that permit to manipulate XML document.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.11.2009
 */
public final class XmlUtil
{
  private static final String UTF8 = "UTF-8";

  private XmlUtil()
  {
  }

  /**
   * Streams the XML document
   * 
   * @param xmldoc xml dom document
   * @param streamResult output stream to fill
   * @param encoding encoding to use. UTF-8, if this parameter is null
   * @return the output stream used
   * @throws AddonsException
   */
  private static StreamResult streamDocument(Document xmldoc, StreamResult streamResult, String encoding)
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
      transformer.setOutputProperty("encoding", encoding != null ? encoding : UTF8);
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

    return streamResult;
  }

  /**
   * Saves document into a file.
   * 
   * @param xmldoc xml dom document
   * @param fileName XML file name to produce
   * @param encoding encoding to use. UTF-8, if this parameter is null
   * @throws AddonsException
   */
  public static void saveDocument(Document xmldoc, String fileName, String encoding) throws AddonsException,
          IOException
  {
    // Serialisation through Tranform.
    StreamResult streamResult;
    BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(fileName));
    streamResult = new StreamResult(bos);
    streamDocument(xmldoc, streamResult, encoding);
    bos.close();
  }

  /**
   * Saves document into a byte array.
   * 
   * @param encoding encoding to use. UTF-8, if this parameter is null
   * @return XML byte array
   * @throws AddonsException
   */
  public static byte[] saveDocumentAsByteArray(Document xmldoc, String encoding) throws AddonsException
  {
    // Serialisation through Tranform.
    StringWriter stringWriter;

    stringWriter = new StringWriter();
    StreamResult streamResult = new StreamResult(stringWriter);
    streamDocument(xmldoc, streamResult, encoding);

    try
    {
      return stringWriter.toString().getBytes(encoding);
    }
    catch (UnsupportedEncodingException e)
    {
      throw new AddonsException(e);
    }
  }

  /**
   * Saves document into a string.
   * 
   * @param xmldoc xml dom document
   * @param encoding encoding to use. UTF-8, if this parameter is null
   * @return XML string
   * @throws AddonsException
   */
  public static String saveDocumentIntoString(Document xmldoc, String encoding) throws AddonsException
  {
    // Serialisation through Tranform.
    StringWriter stringWriter;

    stringWriter = new StringWriter();
    StreamResult streamResult = new StreamResult(stringWriter);
    streamDocument(xmldoc, streamResult, encoding);

    return stringWriter.toString();
  }

  /**
   * Loads document from a string.
   * 
   * @param doc string containing the xml document
   * @return XML DOM document
   * @throws AddonsException
   */
  public static Document loadDocumentFromString(String doc) throws AddonsException
  {
    DocumentBuilderFactory factory;
    DocumentBuilder builder;
    Document xmldoc;
    InputSource inputSource;

    try
    {
      factory = DocumentBuilderFactory.newInstance();
      builder = factory.newDocumentBuilder();
      inputSource = new InputSource();
      inputSource.setCharacterStream(new StringReader(doc));
      xmldoc = builder.parse(inputSource);
    }
    catch (ParserConfigurationException e)
    {
      throw new AddonsException(e);
    }
    catch (SAXException e)
    {
      throw new AddonsException(e);
    }
    catch (IOException e)
    {
      throw new AddonsException(e);
    }

    return xmldoc;
  }

  /**
   * Loads document from a file.
   * 
   * @param file full path to the xml file
   * @return XML DOM document
   * @throws AddonsException
   */
  public static Document loadDocumentFromFile(String file) throws AddonsException
  {
    DocumentBuilderFactory factory;
    DocumentBuilder builder;
    Document xmldoc;

    try
    {
      factory = DocumentBuilderFactory.newInstance();
      builder = factory.newDocumentBuilder();
      xmldoc = builder.parse(new File(file));
    }
    catch (ParserConfigurationException e)
    {
      throw new AddonsException(e);
    }
    catch (SAXException e)
    {
      throw new AddonsException(e);
    }
    catch (IOException e)
    {
      throw new AddonsException(e);
    }

    return xmldoc;
  }

  /**
   * Loads document from a byte array.
   * 
   * @param array array of bytes that contains the xml content
   * @param encoding encoding used by the array of bytes
   * @return XML DOM document
   * @throws AddonsException
   */
  public static Document loadDocumentFromByteArray(byte[] array, String encoding) throws AddonsException
  {
    DocumentBuilderFactory factory;
    DocumentBuilder builder;
    Document xmldoc;

    try
    {
      factory = DocumentBuilderFactory.newInstance();
      builder = factory.newDocumentBuilder();

      xmldoc = builder.parse(new InputSource(new StringReader(new String(array, encoding))));
    }
    catch (ParserConfigurationException e)
    {
      throw new AddonsException(e);
    }
    catch (SAXException e)
    {
      throw new AddonsException(e);
    }
    catch (IOException e)
    {
      throw new AddonsException(e);
    }

    return xmldoc;
  }

}
