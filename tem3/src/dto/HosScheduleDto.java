package dto;

import java.sql.Date;
import java.sql.Timestamp;

public class HosScheduleDto {	//병원스케쥴
	private String hosId;		//병원id
	private String bizStt;		//영업상태
	private Date   hosHidy;		//병원휴일
	private Timestamp openTime;	//오픈시간
	private Timestamp lastTime;	//마감시간
	private String hosRank;		//병원등급
	
	//생성자	
	public HosScheduleDto() {
		super();
	}
	public HosScheduleDto(String hosId, String bizStt, Date hosHidy, Timestamp openTime, Timestamp lastTime, String hosRank) {
		super();
		this.hosId = hosId;
		this.bizStt = bizStt;
		this.hosHidy = hosHidy;
		this.openTime = openTime;
		this.lastTime = lastTime;
		this.hosRank = hosRank;
	}
	
	//get set
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
	public Date getHosHidy() {
		return hosHidy;
	}
	public void setHosHidy(Date hosHidy) {
		this.hosHidy = hosHidy;
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
