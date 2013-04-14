package sunyang.dao.bookType;

import java.util.List;

import sunyang.domain.bookType.BookType;

public interface BookTypeDAO {

	public void save(BookType transientInstance);

	public void delete(BookType persistentInstance);

	public BookType findById(java.lang.Integer id);

	public List<BookType> findAll();

	public BookType merge(BookType detachedInstance);

}