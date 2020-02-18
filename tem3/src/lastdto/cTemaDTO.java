package lastdto;

public class cTemaDTO {
	private String Code; // 테마코드
	private String wd; // 검색어

	// 생성자
	public cTemaDTO() {
		super();
	}

	public cTemaDTO(String Code, String wd) {
		super();
		this.Code = Code;
		this.wd = wd;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String temaCode) {
		this.Code = temaCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
