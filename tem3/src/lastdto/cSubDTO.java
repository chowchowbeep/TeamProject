package lastdto;

public class cSubDTO {
	private String subCode; // 과목코드
	private String wd; // 검색어

	// 생성자
	public cSubDTO() {
		super();
	}

	public cSubDTO(String subCode, String wd) {
		super();
		this.subCode = subCode;
		this.wd = wd;
	}

	public String getSubCode() {
		return subCode;
	}

	public void setSubCode(String subCode) {
		this.subCode = subCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

}
