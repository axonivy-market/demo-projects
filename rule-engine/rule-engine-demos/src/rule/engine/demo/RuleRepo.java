package rule.engine.demo;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.scripting.objects.File;
import rule.engine.demo.enums.MemberType;


public class RuleRepo {

	static String CSV_PATH = "resources/rulerepo.csv";
	
	public static List<Rule>loadRules() throws IOException
	{
		List<Rule> rules = new ArrayList<Rule>();
		BufferedReader csvReader;
		
		File ivyFile = new File(CSV_PATH);
		if(!ivyFile.exists())
		{  // initially read from resource file
			InputStream is = RuleRepo.class.getClassLoader().getResourceAsStream(CSV_PATH);
			csvReader = new BufferedReader(new InputStreamReader(is));
		}
		else
		{	// csv existing file
			FileReader fr = new FileReader(ivyFile.getJavaFile());
			csvReader = new BufferedReader(fr);
		}
		String row;
		while ((row = csvReader.readLine()) != null && row.length()>0) {
		    String[] data = row.split(",");
		    Rule rule = new Rule();
		    rule.setName(data[0]);
		    rule.setLowerLimit(Integer.parseInt(data[1]));
		    rule.setUpperLimit(Integer.parseInt(data[2]));		    
		    rule.setMemberType(MemberType.valueOf(data[3]));
		    rule.setDiscount(Integer.parseInt(data[4]));	
		    rules.add(rule);
		}
		csvReader.close();	
		return rules;
	}
	
	
	public static void saveRules(List<Rule> rules) throws IOException
	{
		File ivyFile = new File(CSV_PATH);
		ivyFile.forceDelete();
		ivyFile.createNewFile();
		String fileUrl = ivyFile.getAbsolutePath();
		FileWriter fw = new FileWriter(fileUrl);
		
		for(Rule rule:rules)
		{	
			fw.append(rule.getName());
			fw.append(",");
			fw.append(rule.getLowerLimit().toString());
			fw.append(",");
			fw.append(rule.getUpperLimit().toString());
			fw.append(",");
			fw.append(rule.getMemberType().name());
			fw.append(",");
			fw.append(rule.getDiscount().toString());		
			fw.append("\n");
		}
		
		fw.flush();
		fw.close();

	}
	
	
	
}
