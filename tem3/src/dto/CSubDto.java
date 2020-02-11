package dto;

public class CSubDto {	//카테고리 진료과목 테이블
	private String subCode;	//과목코드
	private String wd;		//검색어
	
	
	//생성자
	public CSubDto() {
		super();
	}


	public CSubDto(String subCode, String wd) {
		super();
		this.subCode = subCode;
		this.wd = wd;
	}
	
	//get set
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
