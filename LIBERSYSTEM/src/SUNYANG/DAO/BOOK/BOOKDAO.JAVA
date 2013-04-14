package sunyang.dao.book;

import java.util.List;

import sunyang.domain.book.Book;

public interface BookDAO {
	public void save(Book transientInstance);

	public void delete(Book persistentInstance);

	public Book findById(java.lang.Integer id);

	public List<Book> findByProperty(String propertyName, Object value);

	public List<Book> findByVagueProperty(String propertyName, Object value);

	public List<Book> findByIntime(String begin, String end);

	public Book merge(Book detachedInstance);

}