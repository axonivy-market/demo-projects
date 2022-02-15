package ch.ivyteam.demo.jpa.demos.test.mock;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;

import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.cm.event.ContentManagementEventListener;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.search.restricted.exceptions.IndexException;
import ch.ivyteam.ivy.search.restricted.indexed.IIndexedObject;
import ch.ivyteam.ivy.search.restricted.indexed.IIndexedSearchQuery;
import ch.ivyteam.ivy.search.restricted.indexed.IIndexedSearchableSystem;
import ch.ivyteam.ivy.search.restricted.indexed.ISearchIndex;
import ch.ivyteam.ivy.search.restricted.indexed.ISearchQueryTerm;
import ch.ivyteam.ivy.search.restricted.indexed.ISearchableIndexField;
import ch.ivyteam.ivy.search.restricted.indexed.SearchOperator;
import ch.ivyteam.ivy.search.restricted.indexed.SearchQueryBuilder.Field;


public class SimpleContentManagementSystem implements IContentManagementSystem {

	private final Map<String, Object> uriMap = new HashMap<>();

	public Object put(String key, Object value) {
		return uriMap.put(key, value);
	}

	@Override
	public String co(String uri) {
		Object result = uriMap.get(uri);
		return result != null ? result.toString() : "";
	}

	@Override
	public String co(String uri, List<Object> formatObjects) {
		return MessageFormat.format(co(uri), formatObjects.toArray());
	}

	@Override
	public String coLocale(String uri, Locale locale) {
		return co(uri) + "<" + locale.getISO3Language() + ">";
	}

	@Override
	public IProcessModelVersion getProcessModelVersion() { throw new NotMockedException(); }

	@Override
	public IContentManagementSystem getContentManagementSystem() { throw new NotMockedException(); }

	@Override
	public <T> T getAdapter(Class<T> arg0) { throw new NotMockedException(); }

	@Override
	public IIndexedObject createIndexedObject(Object arg0) { throw new NotMockedException(); }

	@Override
	public void createSearchIndex(IProgressMonitor arg0) throws IndexException { throw new NotMockedException(); }

	@Override
	public IIndexedSearchQuery createSearchQuery(List<ISearchQueryTerm> arg0, SearchOperator arg1) { throw new NotMockedException(); }

	@Override
	public IIndexedSearchQuery createSearchQuery(String arg0, ISearchableIndexField arg1) { throw new NotMockedException(); }

	@Override
	public Field createSearchQueryBuilder() { throw new NotMockedException(); }

	@Override
	public ISearchIndex getIndex() { throw new NotMockedException(); }

	@Override
	public IProject getProject() { throw new NotMockedException(); }

	@Override
	public IIndexedSearchableSystem<?> getSearchableSystem() { throw new NotMockedException(); }

	@Override
	public boolean isReadyForSearching() { throw new NotMockedException(); }

	@Override
	public String getName() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public String getDescription() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public Object getIdentifier() { throw new NotMockedException(); }

	@Override
	public List<Locale> getSupportedLanguages() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public void addSupportedLanguage(Locale language) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public void removeSupportedLanguage(Locale language) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public boolean isSupportedLanguage(Locale language) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public Locale getDefaultLanguage() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public void setDefaultLanguage(Locale defaultLanguage) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public void setDefaultPageLayout(IContentObject defaultLayout) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public void setDefaultPageStyleSheet(IContentObject defaultStyleSheet) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject getDefaultPageLayout() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject getDefaultPageStyleSheet() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject getRootContentObject() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject getContentObject(String uri, boolean searchInRequiredProjects) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject findContentObject(String uri) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObject getContentObject(String uri) throws PersistencyException { throw new NotMockedException(); }

	@Override
	public IContentObjectValue getContentObjectValue(String uri, Locale language, boolean searchInRequiredProjects) throws PersistencyException, IllegalArgumentException {
		throw new NotMockedException();
	}

	@Override
	public IContentObjectValue findContentObjectValue(String uri, Locale language) throws PersistencyException {
		throw new NotMockedException();
	}

	@Override
	public IContentObjectValue getContentObjectValue(String uri, Locale language) throws PersistencyException {
		throw new NotMockedException();
	}

	@Override
	public IContentObject getContentObjectForKey(Object key) throws PersistencyException {
		throw new NotMockedException();
	}

	@Override
	public String coLocale(String uri, String locale) { throw new NotMockedException(); }

	@Override
	public String cr(String uri) { throw new NotMockedException(); }

	@Override
	public Set<IContentManagementSystem> getAllCmsFromRequiredProjects() throws PersistencyException { throw new NotMockedException(); }

	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Locale> languages() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addModificationListener(ContentManagementEventListener listener) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeModificationListener(ContentManagementEventListener listener) {
		// TODO Auto-generated method stub
		
	}
}
