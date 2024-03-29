package sunyang.domain.barcode;

import java.util.HashSet;
import java.util.Set;

import sunyang.domain.book.Book;
import sunyang.domain.borrow.Borrow;

public class Barcode {

	private Integer id;//ͼ����id
	private Book bookT;//ͼ��
	private String barcode;//ͼ����
	private Set<Borrow> borrowTs = new HashSet<Borrow>(0);//ͼ�����

	public Barcode() {
	}

	public Barcode(Integer id) {
		this.id = id;
	}

	public Barcode(Integer id, Book bookT, String barcode, Set<Borrow> borrowTs) {
		this.id = id;
		this.bookT = bookT;
		this.barcode = barcode;
		this.borrowTs = borrowTs;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Book getBookT() {
		return this.bookT;
	}

	public void setBookT(Book bookT) {
		this.bookT = bookT;
	}

	public String getBarcode() {
		return this.barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public Set<Borrow> getBorrowTs() {
		return this.borrowTs;
	}

	public void setBorrowTs(Set<Borrow> borrowTs) {
		this.borrowTs = borrowTs;
	}

}