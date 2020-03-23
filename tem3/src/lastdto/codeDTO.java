package lastdto;

public class codeDTO {
	private String code; // 코드
	private String name; // 코드 내용(이름)
	private String type; // 유형(혈액형인지, 테마코드인지 등..)
	
	
	public codeDTO() {
		super();
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
