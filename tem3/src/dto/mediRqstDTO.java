package dto;

import java.sql.Date;
import java.sql.Timestamp;

public class mediRqstDTO {
	// 진료신청 테이블
	private int rqstNo; // 진료신청번호
	private String sicId; // 회원id
	private Date rqstDttm; // 신청일시
	private String hosId; // 병원id
	private Date resDttm; // 예약일시
	private int artrNo; // 의사번호
	private String rqstTy; // 진료타입
	private String msg; // 한마디
	private int dcryNo; // 파일번호

	
	// 생성자
	public mediRqstDTO() {
		super();
	}

	public mediRqstDTO(int rqstNo, String sicId, Date rqstDttm, String hosId, Date resDttm, int artrNo, String rqstTy,
			String msg, int dcryNo) {
		super();
		this.rqstNo = rqstNo;
		this.sicId = sicId;
		this.rqstDttm = rqstDttm;
		this.hosId = hosId;
		this.resDttm = resDttm;
		this.artrNo = artrNo;
		this.rqstTy = rqstTy;
		this.msg = msg;
		this.dcryNo = dcryNo;
	}
	
	public mediRqstDTO(int rqstNo, String sicId, Date rqstDttm, String hosId) {
		super();
		this.rqstNo = rqstNo;
		this.sicId = sicId;
		this.rqstDttm = rqstDttm;
		this.hosId = hosId;
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

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public Date getResDttm() {
		return resDttm;
	}

	public void setResDttm(Date resDttm) {
		this.resDttm = resDttm;
	}

	public int getArtrNo() {
		return artrNo;
	}

	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}

	public String getRqstTy() {
		return rqstTy;
	}

	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getDcryNo() {
		return dcryNo;
	}

	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}

}
