package lastdto;

public class locaSechDTO {
	private String locaCode; // 지역코드
	private String wd; // 검색어
	private String pCode; // 부모코드
	private String cate; //지하철이면 s

	// 생성자
	public locaSechDTO() {
		super();
	}

	public locaSechDTO(String locaCode) {
		super();
		this.locaCode = locaCode;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getLocaCode() {
		return locaCode;
	}

	public void setLocaCode(String locaCode) {
		this.locaCode = locaCode;
	}

	public String getWd() {
		return wd;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

}
