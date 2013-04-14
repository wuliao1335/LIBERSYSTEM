package sunyang.dao.reader;

import java.util.List;

import sunyang.domain.reader.Reader;

public interface ReaderDAO {

	public void save(Reader transientInstance);

	public void delete(Reader persistentInstance);

	public Reader findById(java.lang.Integer id);

	public List<Reader> findByProperty(String propertyName, Object value);

	public List<Reader> findAll();

	public List<Reader> findAllPage(Integer first, Integer max);

	public Reader merge(Reader detachedInstance);

}