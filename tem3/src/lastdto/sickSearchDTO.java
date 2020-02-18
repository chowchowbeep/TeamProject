package lastdto;

public class sickSearchDTO {
	private String Code;// 과목코드
	private String name; // 이름
	private String ihidno; // 주민등록번호
	private String phone; // 전화번호
	
	// 생성자
	public sickSearchDTO() {
		super();
	}
	

	public sickSearchDTO(String code, String name, String ihidno, String phone) {
		super();
		this.Code = code;
		this.name = name;
		this.ihidno = ihidno;
		this.phone = phone;
	}


	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		Code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIhidno() {
		return ihidno;
	}

	public void setIhidno(String ihidno) {
		this.ihidno = ihidno;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
