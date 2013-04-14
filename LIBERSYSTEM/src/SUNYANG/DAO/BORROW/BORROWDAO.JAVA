package sunyang.dao.borrow;

import java.util.Date;
import java.util.List;

import sunyang.domain.borrow.Borrow;

public interface BorrowDAO {
	public void save(Borrow transientInstance);

	public Borrow findById(java.lang.Integer id);

	public List<Borrow> findByProperty(String propertyName, Object value);

	public List<Borrow> findByTwoProperties(String propertyName1,
			Object value1, String propertyName2, Object value2);

	public List<Borrow> findWarnings(Short s, Date date);

	public List<Borrow> findAll();

	public List<Borrow> findAllPage(Integer first, Integer max);

	public Borrow merge(Borrow detachedInstance);

}