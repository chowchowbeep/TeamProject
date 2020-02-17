package dto;

import java.sql.Date;

public class docuInfoDTO {
	private int dcryNo; // 파일번호
	private String sicId; // 회원id
	private Date dcryDttm; // 발급일자
	private String dcryEtc; // 비고
	private int artrNo; // 의사번호
	private String hosId; // 병원id

	// 생성자
	public docuInfoDTO() {
		super();
	}

	public docuInfoDTO(int dcryNo, String sicId, Date dcryDttm, String dcryEtc, int artrNo, String hosId) {
		super();
		this.dcryNo = dcryNo;
		this.sicId = sicId;
		this.dcryDttm = dcryDttm;
		this.dcryEtc = dcryEtc;
		this.artrNo = artrNo;
		this.hosId = hosId;
	}

	public int getDcryNo() {
		return dcryNo;
	}

	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public Date getDcryDttm() {
		return dcryDttm;
	}

	public void setDcryDttm(Date dcryDttm) {
		this.dcryDttm = dcryDttm;
	}

	public String getDcryEtc() {
		return dcryEtc;
	}

	public void setDcryEtc(String dcryEtc) {
		this.dcryEtc = dcryEtc;
	}

	public int getArtrNo() {
		return artrNo;
	}

	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

}
