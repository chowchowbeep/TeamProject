package lastdto;

public class bookmarkDTO {
	private String sicId; // 회원ID
	private String hosId; // 병원ID
	private String name; //  병원이름

	// 생성자
	public bookmarkDTO() {
		super();
	}

	public bookmarkDTO(String sicId, String hosId) {
		super();
		this.sicId = sicId;
		this.hosId = hosId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
