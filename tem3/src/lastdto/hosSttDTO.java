package lastdto;

import java.sql.Date;
import java.sql.Timestamp;

public class hosSttDTO {
	private String hosId; // 병원id
	private String bizStt; // 영업상태
	private Timestamp openTime; // 오픈시간
	private Timestamp lastTime; // 마감시간
	private String hosRank; // 병원등급

	// 생성자
	public hosSttDTO() {
		super();
	}

	public hosSttDTO(String hosId, String bizStt, Timestamp openTime, Timestamp lastTime, String hosRank) {
		super();
		this.hosId = hosId;
		this.bizStt = bizStt;

		this.openTime = openTime;
		this.lastTime = lastTime;
		this.hosRank = hosRank;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public String getBizStt() {
		return bizStt;
	}

	public void setBizStt(String bizStt) {
		this.bizStt = bizStt;
	}

	public Timestamp getOpenTime() {
		return openTime;
	}

	public void setOpenTime(Timestamp openTime) {
		this.openTime = openTime;
	}

	public Timestamp getLastTime() {
		return lastTime;
	}

	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}

	public String getHosRank() {
		return hosRank;
	}

	public void setHosRank(String hosRank) {
		this.hosRank = hosRank;
	}

}
