package finaldto;

import java.sql.Date;

public class artrScheduleDTO {
	private int hyNum; // 휴일번호
	private int artrNo; // 의사번호
	private String hosId; // 병원id
	private Date artrHldy; // 휴일

	// 생성자
	public artrScheduleDTO() {
		super();
	}

	public artrScheduleDTO(int hyNum, int artrNo, String hosId, Date artrHldy) {
		super();
		this.hyNum = hyNum;
		this.artrNo = artrNo;
		this.hosId = hosId;
		this.artrHldy = artrHldy;
	}

	public int getHyNum() {
		return hyNum;
	}

	public void setHyNum(int hyNum) {
		this.hyNum = hyNum;
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

	public Date getArtrHldy() {
		return artrHldy;
	}

	public void setArtrHldy(Date artrHldy) {
		this.artrHldy = artrHldy;
	}

}
