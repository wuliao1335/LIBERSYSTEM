package sunyang.service.back;

import java.util.List;

import sunyang.domain.borrow.Borrow;
import sunyang.domain.operator.Operator;

public interface BorrowFacade {
	public String borrowBook(String barcode, String identiCode,
			Operator operator);

	public String giveBackBook(String barcode, Operator operator);

	public List<Borrow> warningBack();

	public Object[] historyBorrowed(Integer first, Integer max);
}
