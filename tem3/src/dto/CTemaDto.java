package dto;

public class CTemaDto { //카테고리 테마 테이블
	private String temaCode;	//테마코드
	private String wd;			//검색어
	
	//생성자
		public CTemaDto() {
			super();
		}
		public CTemaDto(String temaCode, String wd) {
			super();
			this.temaCode = temaCode;
			this.wd = wd;
		}
		
	
	//get set
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
