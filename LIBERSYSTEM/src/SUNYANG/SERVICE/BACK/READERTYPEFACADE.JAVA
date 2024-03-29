package sunyang.service.back;

import java.util.List;

import sunyang.domain.readerType.ReaderType;

public interface ReaderTypeFacade {
	public boolean newReaderType(ReaderType readerType);

	public boolean removeReaderType(ReaderType readerType);

	public List<ReaderType> findReaderType();

	public ReaderType showReaderType(ReaderType readerType);

	public boolean editReaderType(ReaderType readerType);
}
