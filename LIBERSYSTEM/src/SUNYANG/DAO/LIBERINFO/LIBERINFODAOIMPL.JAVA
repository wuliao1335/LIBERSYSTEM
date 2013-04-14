package sunyang.dao.liberInfo;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sunyang.domain.liberInfo.LiberInfo;

public class LiberInfoDAOImpl extends HibernateDaoSupport implements
		LiberInfoDAO {

	// 根据图书馆标识ID，查找图书馆信息
	public LiberInfo findById(Integer id) {
		return (LiberInfo) getHibernateTemplate().find(
				"from LiberInfo where id=" + id).get(0);
	}

	// 更新图书馆信息
	public boolean merge(LiberInfo liberInfo) {
		getHibernateTemplate().merge(liberInfo);
		return true;
	}

}