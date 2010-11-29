package ch.ivyteam.ivy.addons.xmlserialization;

import org.w3c.dom.Document;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.SerializeXML;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

/**
 * Serialize a data class instance into an XML file that contains labels, selected values.<br />
 * Many XSL can be used to change the produced XML.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
@Deprecated
public class SerializeDataClass
{
  private SerializeXML serializeXML;

  private SerializeDataClass()
  {
  }

  @Deprecated
  public SerializeDataClass(ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.StaticRelation staticRelation)
  {
    serializeXML = SerializeXML.getNewInstance();
  }

  /**
   * Adds a XSL that should be used to format output.
   * 
   * @param xslString xsl document as string
   */
  public final void addXSLString(String xslString)
  {
    serializeXML.addXSLString(xslString);
  }

  /**
   * Gets DOM document.
   * 
   * @return DOM document
   */
  public final Document getDocument()
  {
    return serializeXML.getDocument();
  }

  /**
   * Saves document into file.
   * 
   * @param fileName XML file name
   * @throws AddonsException
   */
  public final void saveDocument(String fileName) throws AddonsException
  {
    serializeXML.saveDocument(fileName);
  }

  /**
   * Saves document into byte array.
   * 
   * @return XML byte array
   * @throws AddonsException
   */
  public final byte[] saveDocumentAsUTF8ByteArray() throws AddonsException
  {
    return serializeXML.saveDocumentAsUTF8ByteArray();
  }

  /**
   * Saves document into string.
   * 
   * @return XML string
   * @throws AddonsException
   */
  public final String saveDocumentIntoString() throws AddonsException
  {
    return serializeXML.saveDocumentIntoString();
  }

  /**
   * Serializes an object that was not used with DynamicDialog.<br />
   * Labels and selected values are not known.
   * 
   * @param object object to serialize
   * @throws AddonsException
   */
  public final void serializeXML(CompositeObject object) throws AddonsException
  {
    serializeXML.serializeXML(object);
  }

  /**
   * Serializes an object that was used with DynamicDialog.
   * 
   * @param object object to serialize
   * @param attributeDetail attribute detail constructed by DynamicDialog
   * @throws AddonsException
   */
  public final void serializeXML(CompositeObject object, TreeNode<ComponentParameters> attributeDetail)
          throws AddonsException
  {
    serializeXML.serializeXML(object, attributeDetail);
  }
}
