package lastdto;

import java.sql.Date;

public class docuInfoDTO {
	private int dcryNo; // 파일번호
	private String sicId; // 회원id
	private String dcryDttm; // 발급일자
	private String dcryEtc; // 비고
	private int artrNo; // 의사번호
	private String hosId; // 병원id

	// 생성자
	public docuInfoDTO() {
		super();
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

	public String getDcryDttm() {
		return dcryDttm;
	}

	public void setDcryDttm(String dcryDttm) {
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
