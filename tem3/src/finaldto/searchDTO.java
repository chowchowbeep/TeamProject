package finaldto;

public class searchDTO {
	private int sechNo; // 검색번호
	private String hosId; // 병원ID
	private String subCode; // 과목코드
	private String apaCode; // 증상코드
	private String temaCode;// 테마코드
	private String locaCode;// 지역코드

	// 생성자
	public searchDTO() {
		super();
	}

	public searchDTO(int sechNo, String hosId, String subCode, String apaCode, String temaCode, String locaCode) {
		super();
		this.sechNo = sechNo;
		this.hosId = hosId;
		this.subCode = subCode;
		this.apaCode = apaCode;
		this.temaCode = temaCode;
		this.locaCode = locaCode;
	}

	public int getSechNo() {
		return sechNo;
	}

	public void setSechNo(int sechNo) {
		this.sechNo = sechNo;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public String getSubCode() {
		return subCode;
	}

	public void setSubCode(String subCode) {
		this.subCode = subCode;
	}

	public String getApaCode() {
		return apaCode;
	}

	public void setApaCode(String apaCode) {
		this.apaCode = apaCode;
	}

	public String getTemaCode() {
		return temaCode;
	}

	public void setTemaCode(String temaCode) {
		this.temaCode = temaCode;
	}

	public String getLocaCode() {
		return locaCode;
	}

	public void setLocaCode(String locaCode) {
		this.locaCode = locaCode;
	}

}
