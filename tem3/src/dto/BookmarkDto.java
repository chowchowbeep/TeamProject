package dto;

public class BookmarkDto { //즐겨찾기 테이블
	private String sicId;  //회원ID
	private String hosId;  //병원ID
	
	
	//생성자
	public BookmarkDto() {
		super();
	}

	public BookmarkDto(String sicId, String hosId) {
		super();
		this.sicId = sicId;
		this.hosId = hosId;
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	
	
}
