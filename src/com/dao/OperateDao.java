package com.dao;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class OperateDao {
	private static Configuration configuration = new Configuration()
			.configure();
	private static org.hibernate.SessionFactory sessionFactory;
	
	public static void ExecuteBySql(String sql) {
		Session session = null;
		try {
			session = getSession();
			Transaction transaction = session.getTransaction();
			transaction.begin();
			Query query = session.createQuery(sql);
			query.executeUpdate();
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	@SuppressWarnings("unchecked")
	public static <T> List<T> getList(String hql)
	{
		Session session = null;
		List<T> list = new ArrayList<T>();
		Query query;
		
		try {
			session = getSession();
			query = session.createQuery(hql);
			
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static <T> List<T> getList(String hql, HashMap<?, ?> hashmap) {
		Session session = null;
		List<T> list = new ArrayList<T>();
		Query query;

		try {
			session = getSession();
			query = session.createQuery(hql);
			if (hashmap != null) {

				Iterator<?> it = hashmap.entrySet().iterator();
				int i = 0;
				while (it.hasNext()) {
					java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
					if (entry.getValue() instanceof String) {
						query.setParameter(i, (String) entry.getValue());
					} else if (entry.getValue() instanceof Integer) {
						query.setParameter(i, (Integer) entry.getValue());
					} else if (entry.getValue() instanceof Long) {
						query.setParameter(i, (Long) entry.getValue());
					}else if(entry.getValue() instanceof List)
						query.setParameterList("id", (List) entry.getValue());
					i += 1;
				}
			}
			list = query.list();

		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	@SuppressWarnings("finally")
	public static Object merge(Object object) {
		Session session = null;
		Object merge = null;
		try {
			session = getSession();
			Transaction transaction = session.getTransaction();
			transaction.begin();
			merge = session.merge(object);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
			return merge;
		}
	}

	public static void saveOrUpdate(Object object) {
		Session session = null;
		try {
			session = getSession();
			Transaction transaction = session.getTransaction();
			transaction.begin();
			session.saveOrUpdate(object);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	public static Object getObject(String hql, HashMap hashmap)
	{
		Session session = null;
		Query query;
		try {
			session = getSession();
			query = session.createQuery(hql);
			if (hashmap != null) {
				Iterator<?> it = hashmap.entrySet().iterator();
				int i = 0;
				while (it.hasNext()) {
					java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
					if (entry.getValue() instanceof String) {
						query.setParameter(i, (String) entry.getValue());
					} else if (entry.getValue() instanceof Integer) {
						query.setParameter(i, (Integer) entry.getValue());
					} else if (entry.getValue() instanceof Long) {
						query.setParameter(i, (Long) entry.getValue());
					}
					i += 1;
				}
			}
			return query.uniqueResult();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return null;
	}
	public static void deleteByKey(Object object)
	{
		Session session = null;
		try {
			session = getSession();
			Transaction transaction = session.getTransaction();
			transaction.begin();
			session.delete(getObject(object));
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	private static Session getSession() {
		if (sessionFactory == null) {
			sessionFactory = configuration.buildSessionFactory();
		}
		Session session = (sessionFactory != null) ? sessionFactory
				.openSession() : null;
		return session;

	}
	private static Object getObject(Class clazz, Serializable id) {
		Session session = null;
		try {
			session = getSession();
			return session.get(clazz, id);
		}catch (HibernateException e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return null;
	}
	private static Object getObject(Object object) {
		return getObject(object.getClass(), getKeyValue(object));
	}
	/**
	 * 得到主键的名字
	 * 
	 * @param object
	 * @return
	 */
	private static String getKeyName(Object object) {
		if (sessionFactory == null) {
			sessionFactory = configuration.buildSessionFactory();
		}
		String name = sessionFactory.getClassMetadata(object.getClass())
				.getIdentifierPropertyName();
		return name;
	}
	private static Serializable getKeyValue(Object object) {
		try {
			Serializable id = (Serializable) PropertyUtils.getProperty(object,
					getKeyName(object));
			return id;
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		return null;
	}
}
