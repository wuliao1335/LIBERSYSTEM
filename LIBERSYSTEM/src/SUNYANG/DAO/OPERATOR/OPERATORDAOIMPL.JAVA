package sunyang.dao.operator;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.operator.Operator;

public class OperatorDAOImpl extends HibernateDaoSupport implements OperatorDAO {
	// 向数据库新增一个管理员
	public void save(Operator transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 使用id检索一个管理员的信息
	public Operator findById(java.lang.Integer id) {
		try {
			Operator instance = (Operator) getHibernateTemplate().get(
					Operator.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 使用对象的属性进行检索。
	public List<Operator> findByProperty(String propertyName, Object value) {
		try {
			String queryString = "from Operator as model where model."
					+ propertyName + "= ?";
			List<Operator> result = getHibernateTemplate().find(queryString,
					value);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 检索所有管理员信息
	public List<Operator> findAll() {
		try {
			String queryString = "from Operator";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// 更新管理员信息
	public Operator merge(Operator detachedInstance) {
		try {
			Operator result = (Operator) getHibernateTemplate().merge(
					detachedInstance);
			return result;
		} catch (RuntimeException re) {
			throw re;
		}
	}

}