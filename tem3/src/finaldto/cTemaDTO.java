package finaldto;

public class cTemaDTO {
	private String temaCode; // 테마코드
	private String wd; // 검색어

	// 생성자
	public cTemaDTO() {
		super();
	}

	public cTemaDTO(String temaCode, String wd) {
		super();
		this.temaCode = temaCode;
		this.wd = wd;
	}

	public String getTemaCode() {
		return temaCode;
	}

	public void setTemaCode(String temaCode) {
		this.temaCode = temaCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
