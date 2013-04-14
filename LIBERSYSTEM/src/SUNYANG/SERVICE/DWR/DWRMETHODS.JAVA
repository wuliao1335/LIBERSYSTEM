package sunyang.service.dwr;

import java.util.HashMap;
import java.util.Map;

import sunyang.dao.bookType.BookTypeDAO;
import sunyang.dao.liberInfo.LiberInfoDAO;
import sunyang.dao.operator.OperatorDAO;
import sunyang.dao.reader.ReaderDAO;
import sunyang.dao.readerType.ReaderTypeDAO;
import sunyang.domain.bookType.BookType;
import sunyang.domain.operator.Operator;
import sunyang.domain.readerType.ReaderType;

public class DWRMethods {
	private BookTypeDAO bookTypeDAO;
	private ReaderTypeDAO readerTypeDAO;
	private LiberInfoDAO liberInfoDAO;
	private OperatorDAO operatorDAO;
	private ReaderDAO readerDAO;

	public ReaderDAO getReaderDAO() {
		return readerDAO;
	}

	public void setReaderDAO(ReaderDAO readerDAO) {
		this.readerDAO = readerDAO;
	}

	public OperatorDAO getOperatorDAO() {
		return operatorDAO;
	}

	public void setOperatorDAO(OperatorDAO operatorDAO) {
		this.operatorDAO = operatorDAO;
	}

	public ReaderTypeDAO getReaderTypeDAO() {
		return readerTypeDAO;
	}

	public void setReaderTypeDAO(ReaderTypeDAO readerTypeDAO) {
		this.readerTypeDAO = readerTypeDAO;
	}

	public BookTypeDAO getBookTypeDAO() {
		return bookTypeDAO;
	}

	public void setBookTypeDAO(BookTypeDAO bookTypeDAO) {
		this.bookTypeDAO = bookTypeDAO;
	}

	public LiberInfoDAO getLiberInfoDAO() {
		return liberInfoDAO;
	}

	public void setLiberInfoDAO(LiberInfoDAO liberInfoDAO) {
		this.liberInfoDAO = liberInfoDAO;
	}

	public Map<String, String> getBookTypes() {

		Map<String, String> m = new HashMap<String, String>();
		for (BookType bt : bookTypeDAO.findAll()) {
			m.put(bt.getId().toString(), bt.getName());
		}
		return m;
	}

	public Map<String, String> getReaderTypes() {

		Map<String, String> m = new HashMap<String, String>();
		for (ReaderType rt : readerTypeDAO.findAll()) {
			m.put(rt.getId().toString(), rt.getName());
		}
		return m;
	}

	public Map<String, String> getOperators() {

		Map<String, String> m = new HashMap<String, String>();
		for (Operator o : operatorDAO.findAll()) {
			m.put(o.getId().toString(), o.getName());
		}
		return m;
	}

	public String getBegin() {
		String begin = liberInfoDAO.findById(1).getBuildDate().toString()
				.substring(0, 4);
		return begin;
	}

	public boolean checkReaderName(String readerName) {
		if (readerDAO.findByProperty("name", readerName).size() == 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean checkOperatorName(String operatorName) {
		if (operatorDAO.findByProperty("name", operatorName).size() == 0) {
			return true;
		} else {
			return false;
		}
	}
}
