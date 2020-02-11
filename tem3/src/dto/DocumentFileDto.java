package dto;

public class DocumentFileDto {
	private int dcryNo; 	//파일번호
	private byte[] dcryFile;//파일(blob객체)
	private String dcryTy;	//파일타입
	
	public DocumentFileDto() {
		super();
	}
	public DocumentFileDto(int dcryNo, byte[] dcryFile, String dcryTy) {
		super();
		this.dcryNo = dcryNo;
		this.dcryFile = dcryFile;
		this.dcryTy = dcryTy;
	}
	
	
	public int getDcryNo() {
		return dcryNo;
	}
	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}
	public byte[] getDcryFile() {
		return dcryFile;
	}
	public void setDcryFile(byte[] dcryFile) {
		this.dcryFile = dcryFile;
	}
	public String getDcryTy() {
		return dcryTy;
	}
	public void setDcryTy(String dcryTy) {
		this.dcryTy = dcryTy;
	}

	
}
