package finaldto;

public class cApaDTO {
	private String apaCode; // 증상코드
	private String wd; // 검색어

	// 생성자
	public cApaDTO() {
		super();
	}

	public cApaDTO(String apaCode, String wd) {
		super();
		this.apaCode = apaCode;
		this.wd = wd;
	}

	public String getApaCode() {
		return apaCode;
	}

	public void setApaCode(String apaCode) {
		this.apaCode = apaCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
