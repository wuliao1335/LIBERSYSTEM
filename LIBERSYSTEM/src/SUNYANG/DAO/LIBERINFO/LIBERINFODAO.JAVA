package sunyang.dao.liberInfo;

import sunyang.domain.liberInfo.LiberInfo;

public interface LiberInfoDAO {
	// ����ͼ��ݱ�ʶID������ͼ�����Ϣ
	public LiberInfo findById(java.lang.Integer id);

	// ����ͼ�����Ϣ
	public boolean merge(LiberInfo liberInfo);
}