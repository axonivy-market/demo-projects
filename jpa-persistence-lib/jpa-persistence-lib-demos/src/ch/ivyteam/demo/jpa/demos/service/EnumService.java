package ch.ivyteam.demo.jpa.demos.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.ivy.HasCmsName;

public class EnumService {
	private static final Logger LOG = Logger.getLogger(EnumService.class);

	private EnumService() {}

	/**
	 * Get a list of {@link Map.Entry} objects sorted by CmsName.
	 * 
	 * This function should typically be called with the values() of enumerations.
	 * 
	 * @param a
	 * @return
	 */
	public static List<Map.Entry<HasCmsName, String>> getSortedByCmsName(HasCmsName a[]) {
		return Stream
				.of(a)
				.map(e -> Map.entry(e, e.getCmsName()))
				.sorted((l, r) -> nullToEmpty(l.getValue()).compareTo(nullToEmpty(r.getValue())))
				.collect(Collectors.toCollection(ArrayList::new));
	}

	/**
	 * Get a list of annotated {@link Map.Entry} objects of a list of {@link HasCmsName}.
	 * 
	 * This function should typically be called with the values() of enumerations.
	 * 
	 * @param <R>
	 * @param a
	 * @param mapper
	 * @return
	 */
	public static <R> List<Map.Entry<HasCmsName, R>> getAttributedList(HasCmsName a[], Function<HasCmsName, R> mapper) {
		return Stream.of(a).map(e -> Map.entry(e, mapper.apply(e))).collect(Collectors.toCollection(ArrayList::new));
	}

	private static String nullToEmpty(String which) {
		return which != null ? which : "";
	}
}
