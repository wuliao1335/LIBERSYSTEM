package sunyang.service.back;

import java.util.List;

import sunyang.dao.reader.ReaderDAO;
import sunyang.dao.readerType.ReaderTypeDAO;
import sunyang.domain.readerType.ReaderType;

public class ReaderTypeFacadeImpl implements ReaderTypeFacade {

	private ReaderTypeDAO readerTypeDAO;
	private ReaderDAO readerDAO;

	public ReaderTypeDAO getReaderTypeDAO() {
		return readerTypeDAO;
	}

	public void setReaderTypeDAO(ReaderTypeDAO readerTypeDAO) {
		this.readerTypeDAO = readerTypeDAO;
	}

	public ReaderDAO getReaderDAO() {
		return readerDAO;
	}

	public void setReaderDAO(ReaderDAO readerDAO) {
		this.readerDAO = readerDAO;
	}

	// 修改读者类型
	public boolean editReaderType(ReaderType readerType) {

		try {
			readerTypeDAO.findById(readerType.getId());
			readerTypeDAO.merge(readerType);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// 检索所有读者类型
	public List<ReaderType> findReaderType() {

		return readerTypeDAO.findAll();
	}

	// 新增读者类型
	public boolean newReaderType(ReaderType readerType) {

		try {
			readerTypeDAO.save(readerType);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// 删除读者类型
	public boolean removeReaderType(ReaderType readerType) {

		if (readerDAO.findByProperty("readerTypeT", readerType).size() > 0) {
			return false;
		} else {
			readerTypeDAO.delete(readerType);
			return true;
		}
	}

	// 检索指定的读者类型
	public ReaderType showReaderType(ReaderType readerType) {

		return readerTypeDAO.findById(readerType.getId());
	}

}
