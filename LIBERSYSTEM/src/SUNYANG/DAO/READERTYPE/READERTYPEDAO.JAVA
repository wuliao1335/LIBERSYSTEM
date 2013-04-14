package sunyang.dao.readerType;

import java.util.List;

import sunyang.domain.readerType.ReaderType;

public interface ReaderTypeDAO {

	public void save(ReaderType transientInstance);

	public void delete(ReaderType persistentInstance);

	public ReaderType findById(java.lang.Integer id);

	public List<ReaderType> findAll();

	public ReaderType merge(ReaderType detachedInstance);

}