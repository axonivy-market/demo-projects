package rule.engine.demo;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.StringJoiner;
import java.util.stream.Collectors;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.File;
import rule.engine.demo.enums.MemberType;

public class RuleRepo
{

  static String CSV_PATH = "resources/rulerepo.csv";

  public static List<Rule> loadRules() throws IOException
  {
    List<String> lines;
    File ivyFile = new File(CSV_PATH);

    if (ivyFile.exists())
    {
      lines = FileUtils.readLines(new File(CSV_PATH).getJavaFile(), StandardCharsets.UTF_8);
    }
    else
    {
      try(var input = RuleRepo.class.getClassLoader().getResourceAsStream(CSV_PATH))
      {
        lines = IOUtils.readLines(input, StandardCharsets.UTF_8);
      }
      catch(Exception ex)
      {
        Ivy.log().error("Couldn't read file", ex);
        lines = List.of();
      }
    }
    return lines.stream()
            .map(RuleRepo::convertLineToRule)
            .collect(Collectors.toList());
  }

  public static void saveRules(List<Rule> rules) throws IOException
  {
    String content = rules.stream()
            .map(RuleRepo::convertRulesToLines)
            .collect(Collectors.joining("\n"));
    File ivyFile = new File(CSV_PATH);
    ivyFile.forceDelete();
    ivyFile.createNewFile();
    ivyFile.write(content);
  }
  
  private static Rule convertLineToRule(String line)
  {
    String[] data = line.split(",");
    Rule rule = new Rule();
    rule.setName(data[0]);
    rule.setLowerLimit(Integer.parseInt(data[1]));
    rule.setUpperLimit(Integer.parseInt(data[2]));
    rule.setMemberType(MemberType.valueOf(data[3]));
    rule.setDiscount(Integer.parseInt(data[4]));
    return rule;
  }

  private static String convertRulesToLines(Rule rule)
  {
    return new StringJoiner(",")
            .add(rule.getName())
            .add(rule.getLowerLimit().toString())
            .add(rule.getUpperLimit().toString())
            .add(rule.getMemberType().name())
            .add(rule.getDiscount().toString())
            .toString();
  }

}
