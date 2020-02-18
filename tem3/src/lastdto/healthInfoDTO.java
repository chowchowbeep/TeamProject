package lastdto;

public class healthInfoDTO {
	private String sicId; // 회원id
	private String chrdis; // 지병
	private String hstcs; // 병력
	private String medi; // 복용약물
	private String bdp; // 혈액형
	private String allrgy; // 알레르기
	private String htEtc; // 비고

	// 생성자
	public healthInfoDTO() {
		super();
	}

	public healthInfoDTO(String sicId, String chrdis, String hstcs, String medi, String bdp, String allrgy,
			String htEtc) {
		super();
		this.sicId = sicId;
		this.chrdis = chrdis;
		this.hstcs = hstcs;
		this.medi = medi;
		this.bdp = bdp;
		this.allrgy = allrgy;
		this.htEtc = htEtc;
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public String getChrdis() {
		return chrdis;
	}

	public void setChrdis(String chrdis) {
		this.chrdis = chrdis;
	}

	public String getHstcs() {
		return hstcs;
	}

	public void setHstcs(String hstcs) {
		this.hstcs = hstcs;
	}

	public String getMedi() {
		return medi;
	}

	public void setMedi(String medi) {
		this.medi = medi;
	}

	public String getBdp() {
		return bdp;
	}

	public void setBdp(String bdp) {
		this.bdp = bdp;
	}

	public String getAllrgy() {
		return allrgy;
	}

	public void setAllrgy(String allrgy) {
		this.allrgy = allrgy;
	}

	public String getHtEtc() {
		return htEtc;
	}

	public void setHtEtc(String htEtc) {
		this.htEtc = htEtc;
	}

}
