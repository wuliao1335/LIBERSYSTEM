package sunyang.dao.barcode;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.barcode.Barcode;

public class BarcodeDAOImpl extends HibernateDaoSupport implements BarcodeDAO {
	// ����ͼ����
	public void save(Barcode transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ɾ��ͼ����
	public void delete(Barcode persistentInstance) {
		try {
			Barcode b = (Barcode) this.getHibernateTemplate().load(
					Barcode.class, persistentInstance.getId());
			getHibernateTemplate().delete(b);
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����id����ͼ����
	public Barcode findById(java.lang.Integer id) {
		try {
			Barcode instance = (Barcode) getHibernateTemplate().get(
					Barcode.class, id);
			return instance;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ���ݱ��ֵ���������Ϣ
	public List<Barcode> findByProperty(String propertyName, Object value) {
		try {
			String queryString = "from Barcode as model where model."
					+ propertyName + "= ?";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ��������ͼ����
	public List<Barcode> findAll() {
		try {
			String queryString = "from Barcode";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

	// ����ҳ������ͼ����
	public List<Barcode> findAllPage(Integer first, Integer max) {
		try {
			String queryString = "from Barcode order By bookT desc";
			Query queryObject = getHibernateTemplate().getSessionFactory()
					.openSession().createQuery(queryString);
			queryObject.setFirstResult(first);
			queryObject.setMaxResults(max);
			return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}

}