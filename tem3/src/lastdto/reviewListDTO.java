package lastdto;

public class reviewListDTO {
	private int rvNo; // 글번호
	private String sicId; // 회원id
	private String hosId; // 병원id
	private int starPoint; // 별점
	private String rvCont; // 리뷰내용
	private String hosName;
	
	public reviewListDTO() {
		super();
	}
	public reviewListDTO(String hosId, int starPoint, String rvCont, String hosName) {
		super();
		this.hosId = hosId;
		this.starPoint = starPoint;
		this.rvCont = rvCont;
		this.hosName = hosName;
	}
	public int getRvNo() {
		return rvNo;
	}
	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
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
	public int getStarPoint() {
		return starPoint;
	}
	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}
	public String getRvCont() {
		return rvCont;
	}
	public void setRvCont(String rvCont) {
		this.rvCont = rvCont;
	}
	public String getHosName() {
		return hosName;
	}
	public void setHosName(String hosName) {
		this.hosName = hosName;
	}
	
}
