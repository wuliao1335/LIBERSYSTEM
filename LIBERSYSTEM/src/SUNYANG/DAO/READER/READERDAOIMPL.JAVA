package sunyang.dao.reader;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.reader.Reader;

public class ReaderDAOImpl extends HibernateDaoSupport implements ReaderDAO {
	// ��������
	public void save(Reader transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ɾ������
	public void delete(Reader persistentInstance) {
		try {

			getHibernateTemplate().delete(persistentInstance);
			// getSession().delete(persistentInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����id����������Ϣ��¼
	public Reader findById(java.lang.Integer id) {
		try {
			Reader instance = (Reader) getHibernateTemplate().get(Reader.class,
					id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ���ݶ�������Լ���������Ϣ��¼
	public List<Reader> findByProperty(String propertyName, Object value) {
		try {
			String queryString = "from Reader as model where model."
					+ propertyName + "= ?";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// �������ж�����Ϣ��¼
	public List<Reader> findAll() {
		try {
			String queryString = "from Reader";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����ҳ������������Ϣ��¼
	public List<Reader> findAllPage(Integer first, Integer max) {
		try {
			String queryString = "from Reader order by registTime desc";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setFirstResult(first);
			queryObject.setMaxResults(max);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	public Reader merge(Reader detachedInstance) {
		try {
			Reader result = (Reader) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}