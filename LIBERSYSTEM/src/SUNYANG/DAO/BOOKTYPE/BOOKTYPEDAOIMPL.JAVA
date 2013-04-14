package sunyang.dao.bookType;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.bookType.BookType;

public class BookTypeDAOImpl extends HibernateDaoSupport implements BookTypeDAO {
	// ����ͼ������
	public void save(BookType transientInstance) {
		try {
			getSession().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ɾ��ͼ������
	public void delete(BookType persistentInstance) {
		try {
			BookType b = (BookType) getHibernateTemplate().load(BookType.class,
					persistentInstance.getId());
			getHibernateTemplate().delete(b);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����id����ͼ������
	public BookType findById(java.lang.Integer id) {
		try {
			BookType instance = (BookType) getHibernateTemplate().get(
					BookType.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����ͼ������
	public List<BookType> findAll() {
		try {
			String queryString = "from BookType";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����ͼ������
	public BookType merge(BookType detachedInstance) {
		try {
			BookType result = (BookType) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}