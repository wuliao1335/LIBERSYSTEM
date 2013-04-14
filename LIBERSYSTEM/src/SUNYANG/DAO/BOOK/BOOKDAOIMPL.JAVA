package sunyang.dao.book;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.book.Book;

public class BookDAOImpl extends HibernateDaoSupport implements BookDAO {
	// 新增图书
	public void save(Book transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 删除图书
	public void delete(Book persistentInstance) {
		try {
			Book b = (Book) this.getHibernateTemplate().load(Book.class,
					persistentInstance.getId());
			getHibernateTemplate().delete(b);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据id检索图书
	public Book findById(java.lang.Integer id) {
		try {
			Book instance = (Book) getHibernateTemplate().get(Book.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据属性检索图书
	public List<Book> findByProperty(String propertyName, Object value) {
		try {
			String queryString = "from Book as model where model."
					+ propertyName + "= ?";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 模糊查询
	public List<Book> findByVagueProperty(String propertyName, Object value) {
		try {
			String queryString = "from Book as model where model."
					+ propertyName + " like '%" + value + "%' and model."
					+ propertyName + " !='" + value + "'";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}

	}

	// 根据入馆时间检索图书信息
	public List<Book> findByIntime(String begin, String end) {
		try {

			String queryString = "from Book as model where model.inTime between '"
					+ begin + "' and '" + end + "'";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 更新图书信息
	public Book merge(Book detachedInstance) {
		try {
			Book result = (Book) getHibernateTemplate().merge(detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}
}