package lastdto;

public class searchDTO {
	private int sechNo; // 검색번호
	private String hosId; // 병원ID
	private String code; // 코드
	
	// 생성자
	public searchDTO() {
		super();
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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "searchDTO [sechNo=" + sechNo + ", hosId=" + hosId + ", code=" + code + "]";
	}

	
	
}
