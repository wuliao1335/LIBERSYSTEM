package sunyang.dao.operator;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.operator.Operator;

public class OperatorDAOImpl extends HibernateDaoSupport implements OperatorDAO {
	// �����ݿ�����һ������Ա
	public void save(Operator transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ʹ��id����һ������Ա����Ϣ
	public Operator findById(java.lang.Integer id) {
		try {
			Operator instance = (Operator) getHibernateTemplate().get(
					Operator.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ʹ�ö�������Խ��м�����
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

	// �������й���Ա��Ϣ
	public List<Operator> findAll() {
		try {
			String queryString = "from Operator";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ���¹���Ա��Ϣ
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