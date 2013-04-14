package sunyang.dao.bookType;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.bookType.BookType;

public class BookTypeDAOImpl extends HibernateDaoSupport implements BookTypeDAO {
	// 新增图书类型
	public void save(BookType transientInstance) {
		try {
			getSession().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 删除图书类型
	public void delete(BookType persistentInstance) {
		try {
			BookType b = (BookType) getHibernateTemplate().load(BookType.class,
					persistentInstance.getId());
			getHibernateTemplate().delete(b);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据id检索图书类型
	public BookType findById(java.lang.Integer id) {
		try {
			BookType instance = (BookType) getHibernateTemplate().get(
					BookType.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索图书类型
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

	// 更新图书类型
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