package ch.ivyteam.demo.jpa.demos.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.apache.log4j.Logger;

import ch.ivyteam.demo.jpa.demos.test.mock.NotMockedException;
import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;
import ch.ivyteam.ivy.process.data.persistence.IIvyQuery;

public class IvyEntityManager implements IIvyEntityManager {
	private static final Logger LOG = Logger.getLogger(IvyEntityManager.class);
	private final String persistenceUnitName;
	private static final Map<String, EntityManagerFactory> emfMap = new HashMap<>();

	public IvyEntityManager(String persistenceUnitName) {
		this.persistenceUnitName = persistenceUnitName;

		EntityManagerFactory entityManagerFactory = emfMap.get(persistenceUnitName);
		if(entityManagerFactory == null) {
			synchronized (this) {
				if(entityManagerFactory == null) {
					LOG.info("Creating a new EntityManagerFactory for persistence unit '" + persistenceUnitName + "'.");
					entityManagerFactory = Persistence.createEntityManagerFactory(persistenceUnitName);
					emfMap.put(persistenceUnitName, entityManagerFactory);
					LOG.debug("Put new IvyEntityManager for persistence unit '" + persistenceUnitName + "' into map.");
				}
			}
		}
	}

	/**
	 * Clear the entity managers for a new run.
	 */
	public static void initialize() {
		List<String> pus = new ArrayList<>();
		for (Map.Entry<String, EntityManagerFactory> e : emfMap.entrySet()) {
			pus.add(e.getKey());
			e.getValue().close();
		}
		emfMap.clear();
		for (String pu : pus) {
			new IvyEntityManager(pu);
		}
	}

	@Override
	public EntityManager createEntityManager() {
		return emfMap.get(persistenceUnitName).createEntityManager();
	}

	@Override
	public EntityManager createEntityManager(Map<?, ?> properties) {
		return emfMap.get(persistenceUnitName).createEntityManager(properties);
	}

	@Override public <T> T find(Class<T> entityClass, Object primaryKey) {
		throw new NotMockedException();
	}

	@Override public <T> List<T> findAll(Class<T> entityClass) {
		throw new NotMockedException();
	}

	@Override public <T> T persist(T entity) {
		throw new NotMockedException();
	}

	@Override public <T> T merge(T entity) {
		throw new NotMockedException();
	}

	@Override public <T> T refresh(T entity) {
		throw new NotMockedException();
	}

	@Override public <T> T remove(T entity) {
		throw new NotMockedException();
	}

	@Override public IIvyQuery createQuery(String qlString) {
		throw new NotMockedException();
	}
	@Override public IIvyQuery createNamedQuery(String name) {
		throw new NotMockedException();
	}
	@Override public IIvyQuery createNativeQuery(String sqlString) {
		throw new NotMockedException();
	}

	@Override public IIvyQuery createNativeQuery(String sqlString, @SuppressWarnings("rawtypes") Class resultClass) {
		throw new NotMockedException();
	}

	@Override public IIvyQuery createNativeQuery(String sqlString, String resultSetMapping) {
		throw new NotMockedException();
	}
}
