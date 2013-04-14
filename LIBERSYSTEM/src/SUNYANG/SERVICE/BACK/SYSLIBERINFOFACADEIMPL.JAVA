package sunyang.service.back;

import sunyang.dao.liberInfo.LiberInfoDAO;
import sunyang.domain.liberInfo.LiberInfo;

public class SysLiberInfoFacadeImpl implements SysLiberInfoFacade {
	private LiberInfoDAO liberInfoDAO;

	public LiberInfoDAO getLiberInfoDAO() {
		return liberInfoDAO;
	}

	public void setLiberInfoDAO(LiberInfoDAO liberInfoDAO) {
		this.liberInfoDAO = liberInfoDAO;
	}
	// ����ͼ�����Ϣ
	public LiberInfo showLiberInfo() {
		return liberInfoDAO.findById(1);
	}
	//�޸�ͼ�����Ϣ
	public boolean editLiberInfo(LiberInfo liberInfo) {

		try {
			liberInfoDAO.merge(liberInfo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}