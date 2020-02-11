package dto;

public class CApaDto {		//카테고리 증상 테이블
	private String apaCode;	//증상코드
	private String wd;		//검색어
	
	//생성자
	public CApaDto() {
		super();
	}


	public CApaDto(String apaCode, String wd) {
		super();
		this.apaCode = apaCode;
		this.wd = wd;
	}
	
	//get set
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
