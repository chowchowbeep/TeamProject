package dto;

public class LocaSechDto { //지역검색
	private String locaCode; //지역코드
	private String wd;		 //검색어
	private String pCode;	 //부모코드
	
	
	
	//생성자
	public LocaSechDto() {
		super();
	}


	public LocaSechDto(String locaCode) {
		super();
		this.locaCode = locaCode;
	}


	public LocaSechDto(String locaCode, String wd) {
		super();
		this.locaCode = locaCode;
		this.wd = wd;
	}


	public LocaSechDto(String locaCode, String wd, String pCode) {
		super();
		this.locaCode = locaCode;
		this.wd = wd;
		this.pCode = pCode;
	}
	
	//get set
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
