package sunyang.dao.liberInfo;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.liberInfo.LiberInfo;

public class LiberInfoDAOImpl extends HibernateDaoSupport implements
		LiberInfoDAO {

	// ����ͼ��ݱ�ʶID������ͼ�����Ϣ
	public LiberInfo findById(Integer id) {
		return (LiberInfo) getHibernateTemplate().find(
				"from LiberInfo where id=" + id).get(0);
	}

	// ����ͼ�����Ϣ
	public boolean merge(LiberInfo liberInfo) {
		getHibernateTemplate().merge(liberInfo);
		return true;
	}

}