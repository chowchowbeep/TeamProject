package finaldto;

import java.sql.Date;

public class hosScheduleDTO {
	private int hyNum; // 휴일번호
	private String hosId; // 병원id
	private Date hosHidy; // 병원휴일

	// 생성자
	public hosScheduleDTO() {
		super();
	}

	public hosScheduleDTO(int hyNum, String hosId, Date hosHidy) {
		super();
		this.hyNum = hyNum;
		this.hosId = hosId;
		this.hosHidy = hosHidy;
	}

	public int getHyNum() {
		return hyNum;
	}

	public void setHyNum(int hyNum) {
		this.hyNum = hyNum;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public Date getHosHidy() {
		return hosHidy;
	}

	public void setHosHidy(Date hosHidy) {
		this.hosHidy = hosHidy;
	}

}
