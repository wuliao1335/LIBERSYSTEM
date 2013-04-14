package sunyang.service.front;

import java.util.List;

import sunyang.domain.reader.Reader;

public interface FrontFacade {
	public Object searchBook(String searchType, String[] bookProperties);

	public Reader readerLogin(String name, String password);

	public List<Object> findBorrowedBooks(Integer readerId);

	public Object showReaderInformation(Integer readerId);

	public boolean updateReaderInformation(Reader reader);

	public boolean renew(Integer borrowId);
}
