package lastdto;

public class cSubDTO {
	private String Code; // 과목코드
	private String wd; // 검색어

	// 생성자
	public cSubDTO() {
		super();
	}

	public cSubDTO(String Code, String wd) {
		super();
		this.Code = Code;
		this.wd = wd;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String subCode) {
		this.Code = subCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
