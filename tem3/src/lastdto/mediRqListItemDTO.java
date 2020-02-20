package lastdto;

import java.sql.Date;

public class mediRqListItemDTO {
	//medi_rqst
	private int rqstNo; // 진료신청번호
	private String sicId; // 회원id
	private Date rqstDttm; // 신청일시
	private String rqstTy; // 진료타입
	
	
	//hos_member
	private String hosName; // 병원명


	public mediRqListItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getRqstNo() {
		return rqstNo;
	}


	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}


	public String getSicId() {
		return sicId;
	}


	public void setSicId(String sicId) {
		this.sicId = sicId;
	}


	public Date getRqstDttm() {
		return rqstDttm;
	}


	public void setRqstDttm(Date rqstDttm) {
		this.rqstDttm = rqstDttm;
	}


	public String getRqstTy() {
		return rqstTy;
	}


	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}


	public String getHosName() {
		return hosName;
	}


	public void setHosName(String hosName) {
		this.hosName = hosName;
	}


	@Override
	public String toString() {
		return "mediRqListItemDTO [rqstNo=" + rqstNo + ", sicId=" + sicId + ", rqstDttm=" + rqstDttm + ", rqstTy="
				+ rqstTy + ", hosName=" + hosName + "]";
	}

	
	

}
