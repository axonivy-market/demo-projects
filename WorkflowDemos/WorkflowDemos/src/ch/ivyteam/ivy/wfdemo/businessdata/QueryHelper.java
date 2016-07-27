package ch.ivyteam.ivy.wfdemo.businessdata;

/**
 * This QueryHelper helps you create raw queries for Elasticsearch
 */
public class QueryHelper {

	public static String queryLastName(String lastName)
	{
		return toDoubleQuotes("{ 'query': { 'wildcard': { 'person.lastName': '"+ lastName.toLowerCase() + "*' } } }");
	}

	public static String queryFullText(String textToSearch)
	{
		return toDoubleQuotes("{ 'query': {'query_string': {'query': '" + textToSearch + "*' } } }");
	}

	private static String toDoubleQuotes(String jsonWithSingleQuotes)
	{
		return jsonWithSingleQuotes.replace("'", "\"");
	}

}
