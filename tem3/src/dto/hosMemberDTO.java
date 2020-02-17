package dto;

import java.sql.Timestamp;

public class hosMemberDTO {
	private String hosId; // 병원id
	private String hosBizno; // 사업자등록번호
	private String hosName; // 병원명
	private String hosPhone; // 전화번호
	private String hosPw; // 병원pw
	private String hosAddr; // 주소
	private int hosLat; // 위도
	private int hosLng; // 경도
	private String hosStart; // 영업시작시간
	private String hosLast; // 영업마감시간

	public hosMemberDTO() {
		super();
	}

	public hosMemberDTO(String hosId, String hosBizno, String hosName, String hosPhone, String hosPw, String hosAddr,
			int hosLat, int hosLng, String hosStart, String hosLast) {
		super();
		this.hosId = hosId;
		this.hosBizno = hosBizno;
		this.hosName = hosName;
		this.hosPhone = hosPhone;
		this.hosPw = hosPw;
		this.hosAddr = hosAddr;
		this.hosLat = hosLat;
		this.hosLng = hosLng;
		this.hosStart = hosStart;
		this.hosLast = hosLast;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public String getHosBizno() {
		return hosBizno;
	}

	public void setHosBizno(String hosBizno) {
		this.hosBizno = hosBizno;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}

	public String getHosPhone() {
		return hosPhone;
	}

	public void setHosPhone(String hosPhone) {
		this.hosPhone = hosPhone;
	}

	public String getHosPw() {
		return hosPw;
	}

	public void setHosPw(String hosPw) {
		this.hosPw = hosPw;
	}

	public String getHosAddr() {
		return hosAddr;
	}

	public void setHosAddr(String hosAddr) {
		this.hosAddr = hosAddr;
	}

	public int getHosLat() {
		return hosLat;
	}

	public void setHosLat(int hosLat) {
		this.hosLat = hosLat;
	}

	public int getHosLng() {
		return hosLng;
	}

	public void setHosLng(int hosLng) {
		this.hosLng = hosLng;
	}

	public String getHosStart() {
		return hosStart;
	}

	public void setHosStart(String hosStart) {
		this.hosStart = hosStart;
	}

	public String getHosLast() {
		return hosLast;
	}

	public void setHosLast(String hosLast) {
		this.hosLast = hosLast;
	}

}
