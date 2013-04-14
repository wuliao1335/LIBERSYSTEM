package sunyang.dao.liberInfo;

import sunyang.domain.liberInfo.LiberInfo;

public interface LiberInfoDAO {
	// 根据图书馆标识ID，查找图书馆信息
	public LiberInfo findById(java.lang.Integer id);

	// 更新图书馆信息
	public boolean merge(LiberInfo liberInfo);
}