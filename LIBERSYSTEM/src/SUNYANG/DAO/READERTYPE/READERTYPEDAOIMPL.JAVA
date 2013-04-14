package sunyang.dao.readerType;

import java.util.List;


import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.readerType.ReaderType;

public class ReaderTypeDAOImpl extends HibernateDaoSupport implements
		ReaderTypeDAO {
	// 新增读者类型
	public void save(ReaderType transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 删除读者类型
	public void delete(ReaderType persistentInstance) {
		try {
			getHibernateTemplate().delete(persistentInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据id检索读者类型
	public ReaderType findById(java.lang.Integer id) {
		try {
			ReaderType instance = (ReaderType) getHibernateTemplate().get(
					ReaderType.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索所有读者类型
	public List<ReaderType> findAll() {
		try {
			String queryString = "from ReaderType";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 修改读者类型信息
	public ReaderType merge(ReaderType detachedInstance) {
		try {
			ReaderType result = (ReaderType) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}
}