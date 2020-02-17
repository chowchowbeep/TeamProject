package dto;

public class DocumentPdfFileDto {
	private int dcryNo; 	//파일번호
	private byte[] pdfFile;//파일(blob객체)
	
	public DocumentPdfFileDto() {
		super();
	}
	public DocumentPdfFileDto(int dcryNo, byte[] pdfFile) {
		super();
		this.dcryNo = dcryNo;
		this.pdfFile = pdfFile;
	
	}
	
	
	public int getDcryNo() {
		return dcryNo;
	}
	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}
	public byte[] getPdfFile() {
		return pdfFile;
	}
	public void setPdfFile(byte[] pdfFile) {
		this.pdfFile = pdfFile;
	}
	

	
}
