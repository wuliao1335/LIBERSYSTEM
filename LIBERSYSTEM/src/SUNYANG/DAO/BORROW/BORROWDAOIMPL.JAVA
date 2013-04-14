package sunyang.dao.borrow;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.borrow.Borrow;

public class BorrowDAOImpl extends HibernateDaoSupport implements BorrowDAO {

	// 新增借阅历史记录
	public void save(Borrow transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据id检索借书记录
	public Borrow findById(java.lang.Integer id) {
		try {
			Borrow instance = (Borrow) getHibernateTemplate().get(Borrow.class,
					id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索读者是否有借阅图书历史记录
	public List<Borrow> findByProperty(String propertyName, Object value) {
		try {
			String queryString = "from Borrow as model where model."
					+ propertyName + "= ?";
			List<Borrow> result = getHibernateTemplate().find(queryString,
					value);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索指定读者的借书量是否已经达到其最大借书量
	public List<Borrow> findByTwoProperties(String propertyName1,
			Object value1, String propertyName2, Object value2) {
		try {
			String queryString = "from Borrow as model where model."
					+ propertyName1 + "= " + value1 + " and " + "model."
					+ propertyName2 + "= " + value2;

			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索那些借书日期已到期但尚未归还的记录。
	public List<Borrow> findWarnings(Short s, Date date) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
			String queryString = "from Borrow as model where model.giveback = "
					+ s + " and model.forceBackTime < '"
					+ sdf.format(date).toString()
					+ "' order by model.forceBackTime";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索所有的借书和还书记录
	public List<Borrow> findAll() {
		try {
			String queryString = "from Borrow";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 根据页数检索借书和还书记录。
	public List<Borrow> findAllPage(Integer first, Integer max) {
		try {
			String queryString = "from Borrow order by borrowTime desc";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setFirstResult(first);
			queryObject.setMaxResults(max);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 图书续借。
	public Borrow merge(Borrow detachedInstance) {
		try {
			Borrow result = (Borrow) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}