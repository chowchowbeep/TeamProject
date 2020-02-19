package lastdto;

import java.sql.Date;

public class sickJoinMemberDTO {
	private String sicId;		// 회원ID
	private String sicName;		// 이름
	private String sicPhone;	// 전화번호
	private String sicStt;		// 회원 상태
	private int rvNo; // 리뷰 글 번호
	private int starPoint; // 별점
	private Date startDttm;	  // 패널티
	
	
	public sickJoinMemberDTO() {
		super();
	}


	public sickJoinMemberDTO(String sicId, String sicName, String sicPhone, String sicStt, int rvNo, int starPoint,
			Date startDttm) {
		super();
		this.sicId = sicId;
		this.sicName = sicName;
		this.sicPhone = sicPhone;
		this.sicStt = sicStt;
		this.rvNo = rvNo;
		this.starPoint = starPoint;
		this.startDttm = startDttm;
	}


	public String getSicId() {
		return sicId;
	}


	public void setSicId(String sicId) {
		this.sicId = sicId;
	}


	public String getSicName() {
		return sicName;
	}


	public void setSicName(String sicName) {
		this.sicName = sicName;
	}


	public String getSicPhone() {
		return sicPhone;
	}


	public void setSicPhone(String sicPhone) {
		this.sicPhone = sicPhone;
	}


	public String getSicStt() {
		return sicStt;
	}


	public void setSicStt(String sicStt) {
		this.sicStt = sicStt;
	}


	public int getRvNo() {
		return rvNo;
	}


	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}


	public int getStarPoint() {
		return starPoint;
	}


	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}


	public Date getStartDttm() {
		return startDttm;
	}


	public void setStartDttm(Date startDttm) {
		this.startDttm = startDttm;
	}
	
	
	
}
