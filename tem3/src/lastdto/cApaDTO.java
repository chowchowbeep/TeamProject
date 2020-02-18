package lastdto;

public class cApaDTO {
	private String Code; // 증상코드
	private String wd; // 검색어

	// 생성자
	public cApaDTO() {
		super();
	}

	public cApaDTO(String Code, String wd) {
		super();
		this.Code = Code;
		this.wd = wd;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String apaCode) {
		this.Code = apaCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
