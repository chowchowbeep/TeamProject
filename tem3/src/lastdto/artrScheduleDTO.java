package lastdto;

import java.sql.Date;

public class artrScheduleDTO {
	private int hyNum; // 휴일번호
	private int artrNo; // 의사번호
	private String hosId; // 병원id
	private String artrHldy; // 휴일
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
	public String getArtrHldy() {
		return artrHldy;
	}
	public void setArtrHldy(String artrHldy) {
		this.artrHldy = artrHldy;
	}
	@Override
	public String toString() {
		return "artrScheduleDTO [hyNum=" + hyNum + ", artrNo=" + artrNo + ", hosId=" + hosId + ", artrHldy=" + artrHldy
				+ "]";
	}

	

}
