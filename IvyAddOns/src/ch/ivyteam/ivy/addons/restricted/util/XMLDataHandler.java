package ch.ivyteam.ivy.addons.restricted.util;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

import ch.ivyteam.log.Logger;

/**
 * Handler class for XML Data.
 * 
 * @author Barreiro François-Xavier, TI-Informatique
 * @since 07.06.2010
 */
public class XMLDataHandler extends DefaultHandler {
	
	private LinkedList<Object> stack = new LinkedList<Object>();
	private Map<String, Object> results = new HashMap<String, Object>();

	private boolean skipRootElement = true ;
	
	private StringBuffer textBuffer = null ;
		
	private Logger logger = null;
		
	public XMLDataHandler(Logger ivyLogger){
		logger = ivyLogger ;		
	}
	
	public Map<String, Object> getResults()  {
		return results ;				
	}
					
	public void startDocument() throws SAXException {
		//if (logger != null) logger.info("Start document   : ") ;
    }

    public void endDocument() throws SAXException {
		//if (logger != null) logger.info("End document     : ") ;		
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
    	String parentName = null ;
    	
		//if (logger != null) logger.info("Start element    : " + qName );
	
		if (!skipRootElement)
			{
			if (!stack.isEmpty())
				parentName = (String) stack.getLast() ;
			
			if (parentName == null)
				stack.add(qName) ;
			else
				stack.add(parentName + "." + qName) ;		
			}
		else
			{
			// First root element is skipped, process next elements
			skipRootElement = false ;
			}
				
		textBuffer = null ;
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
    	String parentName = null ;
		
    	//if (logger != null) logger.info("End element      : " + qName);
		
		if (!stack.isEmpty())
			stack.removeLast() ;
		
		// Skip empty elements
		if (textBuffer!= null) {			
			if (stack.isEmpty())
				{
				// Procesing First element
				results.put(qName, textBuffer.toString()) ;
				 if (logger != null) logger.info("Put      : " + qName + " - " + textBuffer.toString());				
				}
			else
				{
				parentName = (String) stack.getLast() ;
				results.put(parentName +"."+ qName, textBuffer.toString()) ;
				 if (logger != null) logger.info("Put      : " + parentName +"."+ qName + " - " + textBuffer.toString());				
				}			
		}
						
		textBuffer = null ;
    }

    public void characters(char ch[], int start, int length) throws SAXException {
    	
    	String content = new String(ch, start, length);
    	
		//if (logger != null) logger.info("Start characters : " + content);
		
		if (!content.trim().equals("")) {		
			if (textBuffer == null)
				textBuffer = new StringBuffer(content);			
			else
				textBuffer.append(content) ;
			}
    }
    
    public void ignorableWhitespace(char[] ch, int start, int end) throws SAXException {
		// if (logger != null) logger.info("Espaces inutiles rencontres : ..." + new String(ch, start, end) +  "...");
    }
    
    public void processingInstruction(String target, String data) throws SAXException {
		// if (logger != null) logger.info("Processing Instruction    : " + target + "  with data    : " + data);
    }    
		
	public void warning(SAXParseException e) throws SAXException {
		if (logger != null) logger.warn("XMLEventDataHandler - Warning : " + e.getMessage()) ;
		throw e ;		
	}

	public void error(SAXParseException e) throws SAXException {
		if (logger != null) logger.error("XMLEventDataHandler - Error : " + e.getMessage());
		throw e ;
	}

	public void fatalError(SAXParseException e) throws SAXException {
		if (logger != null) logger.error("XMLEventDataHandler - FatalError : " + e.getMessage());
		throw e ;
	}	
}
