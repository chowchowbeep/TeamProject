package lastdto;

public class seachCodeJoinDTO {
	private String code; // 코드
	private String name; // 코드 내용(이름)
	private String hosId;// hosId
	private String type;// 타입
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getHosId() {
		return hosId;
	}
	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	public seachCodeJoinDTO() {
		super();
	}
	
	
}
