package sunyang.domain.liberInfo;

import java.util.Date;

public class LiberInfo {

	private Integer id;// ͼ���id
	private String liberName;// ͼ�������
	private String curator;// ͼ��ݹݳ�
	private String tel;// ͼ��ݵ绰
	private String address;// ͼ��ݵ�ַ
	private String email;// ͼ��ݵ����ʼ�
	private String url;// ͼ�����ַ
	private Date buildDate;// ͼ��ݽ���ʱ��
	private String introduce;// ͼ��ݵļ��

	public LiberInfo() {
	}


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLiberName() {
		return this.liberName;
	}

	public void setLiberName(String liberName) {
		this.liberName = liberName;
	}

	public String getCurator() {
		return this.curator;
	}

	public void setCurator(String curator) {
		this.curator = curator;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getBuildDate() {
		return this.buildDate;
	}

	public void setBuildDate(Date buildDate) {
		this.buildDate = buildDate;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

}