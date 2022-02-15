package ch.ivyteam.demo.jpa.demos.test.mock;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import ch.ivyteam.ivy.globalvars.IGlobalVariableContext;
import ch.ivyteam.ivy.vars.Variable;
import ch.ivyteam.ivy.vars.Variables;


public class SimpleGlobalVariableContext implements IGlobalVariableContext {

	private final Map<String, String> varMap = new HashMap<>();

	public String put(String key, String value) {
		return varMap.put(key, value);
	}

	@Override
	public String get(String varName) {
		return varMap.get(varName);
	}

	@Override
	public Set<String> getVariableNames() {
		return varMap.keySet();
	}

	@Override
	public String set(String name, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String reset(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<String> names() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Variable variable(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Variable> all() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Variables ofEnvironment(String environment) {
		// TODO Auto-generated method stub
		return null;
	}

}
