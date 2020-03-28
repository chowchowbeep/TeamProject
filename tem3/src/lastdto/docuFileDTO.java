package lastdto;

public class docuFileDTO {
	private int dcryNo; // 파일번호
	private String fileName; //파일 이름
	private String fileType; //파일 타입
	
	public docuFileDTO() {
		super();
		
	}
	
	public docuFileDTO(int dcryNo, String fileName, String fileType) {
		super();
		this.dcryNo = dcryNo;
		this.fileName = fileName;
		this.fileType = fileType;
	}
	
	@Override
	public String toString() {
		return "docuFileDTO [dcryNo=" + dcryNo + ", fileName=" + fileName + ", fileType=" + fileType + "]";
	}

	public int getDcryNo() {
		return dcryNo;
	}
	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}
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
	



}
