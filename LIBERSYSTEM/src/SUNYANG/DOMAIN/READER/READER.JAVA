package sunyang.domain.reader;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import sunyang.domain.borrow.Borrow;
import sunyang.domain.operator.Operator;
import sunyang.domain.readerType.ReaderType;

public class Reader {

	private Integer id;// ����id
	private ReaderType readerTypeT;// ��������
	private Operator operatorT;// ������
	private String name;// ���ߵ�¼�ʺ�
	private String password;// ���ߵ�¼����
	private String identiCode;// ���߽���֤��
	private String realName;// ������ʵ����
	private Short sex;// �Ա�
	private String papertype;// ע��֤������
	private String paperNo;// ע��֤������
	private String tel;// ��ϵ�绰
	private String email;// Email��ַ
	private Date registTime;// ע��ʱ��
	private String description;// ��ע
	private Set<Borrow> borrowTs = new HashSet<Borrow>(0);// �����Ľ軹����

	public Reader() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ReaderType getReaderTypeT() {
		return this.readerTypeT;
	}

	public void setReaderTypeT(ReaderType readerTypeT) {
		this.readerTypeT = readerTypeT;
	}

	public Operator getOperatorT() {
		return this.operatorT;
	}

	public void setOperatorT(Operator operatorT) {
		this.operatorT = operatorT;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdentiCode() {
		return this.identiCode;
	}

	public void setIdentiCode(String identiCode) {
		this.identiCode = identiCode;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Short getSex() {
		return this.sex;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public String getPapertype() {
		return this.papertype;
	}

	public void setPapertype(String papertype) {
		this.papertype = papertype;
	}

	public String getPaperNo() {
		return this.paperNo;
	}

	public void setPaperNo(String paperNo) {
		this.paperNo = paperNo;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public Date getRegistTime() {
		return registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Borrow> getBorrowTs() {
		return this.borrowTs;
	}

	public void setBorrowTs(Set<Borrow> borrowTs) {
		this.borrowTs = borrowTs;
	}

}