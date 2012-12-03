package ch.ivyteam.ivy.demo.charts;

import ch.ivyteam.ivy.scripting.objects.List;

public class ChartDataGenerator {

	public static void generateData(List<ProgrammingLanguagePopularity> data) {
		addToData(data, "C", 19.22, 17.32);
		addToData(data, "Java", 17.46, 17.88);
		addToData(data, "Objective-C", 10.38, 5.98);
		addToData(data, "C++", 9.70, 8.09);
		addToData(data, "PHP", 5.73, 6.09);
		addToData(data, "C#", 5.59, 7.32);
		addToData(data, "Visual Basic", 5.03, 5.04);
		addToData(data, "Python", 4.06, 3.61);
		addToData(data, "Perl", 2.18, 2.08);
		addToData(data, "Ruby", 1.74, 1.50);
		addToData(data, "JavaScript", 1.28, 2.57);
		addToData(data, "Delphi", 1.00, 0.88);
		addToData(data, "Lisp", 0.95, 1.18);
		addToData(data, "Pascal", 0.88, 0.99);
		addToData(data, "Visual Basic .NET", 0.77, 0.53);
		addToData(data, "Ada", 0.66, 0.62);
		addToData(data, "PL/SQL", 0.63, 1.44);
		addToData(data, "Lua", 0.63, 1.44);
		addToData(data, "MATLAB", 0.62, 0.96);
		addToData(data, "Assembly", 0.59, 0.53);
	}

	private static void addToData(List<ProgrammingLanguagePopularity> data, String name, Double newValue, Double oldValue) {
		ProgrammingLanguagePopularity progLang = new ProgrammingLanguagePopularity();
		progLang.setName(name);
		progLang.setPercentageNew(newValue);
		progLang.setPercentageOld(oldValue);
		data.add(progLang);
	}
}
