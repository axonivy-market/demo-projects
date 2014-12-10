package ch.ivyteam.ivy.demo.validation;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/**
 * This class helps validating the user entries of swiss PLZ.
 * 
 * @author ah
 */
public class PlzUtils {
	
	/** Singleton instatnce, access the util by calling getUtils*/
	private static PlzUtils fSingleton;
	
	/** PLZ to city map */
	private Map<Integer, String> fPlzMap = new HashMap<Integer, String>();

	/** Name of the csv file containing the zip codes. */
	private static String sfDataFielName = "plz.csv";
	
	/** 
	 * Singleton constructor 
	 * @throws IOException 
	 */
	private PlzUtils() throws IOException
	{
		// load data from the file
		InputStream plzMapAsStream = this.getClass().getResourceAsStream(sfDataFielName);
		BufferedReader plzReader = new BufferedReader(new InputStreamReader(plzMapAsStream));
		String line = plzReader.readLine();
		while(line != null)
		{
			String[] data = line.split(";");
			String city = data[0];
			String plzDesc = data[1];
			int plz = Integer.parseInt(plzDesc);
			fPlzMap.put(plz, city);
			// loop
			line = plzReader.readLine();
		}
	}
	
	/** 
	 * Accss to the utils 
	 * @throws IOException 
	 */
	public static PlzUtils getUtils() throws IOException
	{
		if (fSingleton == null)
		{
			fSingleton = new PlzUtils();
		}
		return fSingleton;
	}
	
	/** 
	 * Tests, wether the given swiss PLZ is a known (valid) PLZ. 
	 */
	public boolean extists(int swissPlzNumber)
	{
		return fPlzMap.containsKey(swissPlzNumber);
	}
	
	/**
	 * Teat this utility class
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException
	{
		// test install
		PlzUtils.getUtils();
		
		System.out.println( "Test1: Horw -> 6048: "+ PlzUtils.getUtils().extists(6048));
		System.out.println( "Test1:    ? -> 6048: "+ PlzUtils.getUtils().extists(9999));
	}
	
}
