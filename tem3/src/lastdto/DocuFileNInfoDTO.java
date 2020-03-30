package lastdto;

public class DocuFileNInfoDTO {
	private String fileName; //파일 이름
	private String fileType; //파일 타입
	
	private int dcryNo; // 기록물번호
	private String sicId; // 회원id
	private int artrNo; // 의사번호
	private String hosId; // 병원id
	private String dcryDttm; // 발급일자
	private String dcryEtc; // 비고
	private String artrName; // 의사이름
	private String hosName; // 병원이름
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
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
	public String getArtrName() {
		return artrName;
	}
	public void setArtrName(String artrName) {
		this.artrName = artrName;
	}
	public String getHosName() {
		return hosName;
	}
	public void setHosName(String hosName) {
		this.hosName = hosName;
	}
	@Override
	public String toString() {
		return "DocuFileNInfoDTO [fileName=" + fileName + ", fileType=" + fileType + ", dcryNo=" + dcryNo + ", sicId="
				+ sicId + ", artrNo=" + artrNo + ", hosId=" + hosId + ", dcryDttm=" + dcryDttm + ", dcryEtc=" + dcryEtc
				+ ", artrName=" + artrName + ", hosName=" + hosName + "]";
	}
	
}
