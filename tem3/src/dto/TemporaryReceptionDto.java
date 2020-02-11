package dto;

public class TemporaryReceptionDto { //접수증테이블
	private String tmrNo;	//접수증번호
	private String sicId;	//회원id
	private String name;	//이름
	private int	ihidnum;	//주민등록번호
	private String addr;	//주소
	private String phone;	//전화번호
	private String htstt;	//건강상태
	
	
	//생성자
	public TemporaryReceptionDto() {
		super();
	}
	
	public TemporaryReceptionDto(String tmrNo, String sicId, String name, int ihidnum, String addr, String phone,
			String htstt) {
		super();
		this.tmrNo = tmrNo;
		this.sicId = sicId;
		this.name = name;
		this.ihidnum = ihidnum;
		this.addr = addr;
		this.phone = phone;
		this.htstt = htstt;
	}
	//get set
	public String getTmrNo() {
		return tmrNo;
	}
	public void setTmrNo(String tmrNo) {
		this.tmrNo = tmrNo;
	}
	public String getSicId() {
		return sicId;
	}
	public void setSicId(String sicId) {
		this.sicId = sicId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIhidnum() {
		return ihidnum;
	}
	public void setIhidnum(int ihidnum) {
		this.ihidnum = ihidnum;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHtstt() {
		return htstt;
	}
	public void setHtstt(String htstt) {
		this.htstt = htstt;
	}
	
	
}
