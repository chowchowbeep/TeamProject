package lastdto;

import java.sql.Date;

public class hosJoinMemberDTO {
	private String hosId;	// 병원 ID
	private String hosBizno;	// 사업자 등록번호
	private String hosName;    // 병원명
	private String hosPhone;	// 전화번호
	private String hosAddr;    // 주소
	private String hosStart;	// 영업 시작 시간
	private String hosLast;    // 영업 마감 시간
	private String hosRank;    // 병원 등급
	private int decNo;	 // 신고 번호
	private String decStt;	  // 신고 처리 상태
	private Date decDttm;	// 신고일시
	private int rvCount;	// 리뷰 개수
	private int starPoint;	  // 리뷰 별점
	
		
	public hosJoinMemberDTO() {
		super();
	}

	

	public hosJoinMemberDTO(String hosId, String hosBizno, String hosName, String hosPhone, String hosAddr,
			String hosStart, String hosLast, String hosRank, int decNo, String decStt, Date decDttm, int rvCount,
			int starPoint) {
		super();
		this.hosId = hosId;
		this.hosBizno = hosBizno;
		this.hosName = hosName;
		this.hosPhone = hosPhone;
		this.hosAddr = hosAddr;
		this.hosStart = hosStart;
		this.hosLast = hosLast;
		this.hosRank = hosRank;
		this.decNo = decNo;
		this.decStt = decStt;
		this.decDttm = decDttm;
		this.rvCount = rvCount;
		this.starPoint = starPoint;
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

	public String getHosAddr() {
		return hosAddr;
	}

	public void setHosAddr(String hosAddr) {
		this.hosAddr = hosAddr;
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

	public String getHosRank() {
		return hosRank;
	}

	public void setHosRank(String hosRank) {
		this.hosRank = hosRank;
	}



	public int getDecNo() {
		return decNo;
	}



	public void setDecNo(int decNo) {
		this.decNo = decNo;
	}



	public String getDecStt() {
		return decStt;
	}



	public void setDecStt(String decStt) {
		this.decStt = decStt;
	}



	public Date getDecDttm() {
		return decDttm;
	}



	public void setDecDttm(Date decDttm) {
		this.decDttm = decDttm;
	}



	public int getRvCount() {
		return rvCount;
	}



	public void setRvNo(int rvCount) {
		this.rvCount = rvCount;
	}



	public int getStarPoint() {
		return starPoint;
	}



	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}



	@Override
	public String toString() {
		return "hosJoinMemberDTO [hosId=" + hosId + ", hosBizno=" + hosBizno + ", hosName=" + hosName + ", hosPhone="
				+ hosPhone + ", hosAddr=" + hosAddr + ", hosStart=" + hosStart + ", hosLast=" + hosLast + ", hosRank="
				+ hosRank + ", decNo=" + decNo + ", decStt=" + decStt + ", decDttm=" + decDttm + ", rvCount=" + rvCount
				+ ", starPoint=" + starPoint + "]";
	}
	
	
	
}
