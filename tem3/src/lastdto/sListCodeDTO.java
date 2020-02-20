package lastdto;

public class sListCodeDTO {
	String hosName;
	String areaCode;
	String cateCode[];
	String oderby;
	String diam;
	String filter;
	
	
	
	public sListCodeDTO() {
		super();
	}
	public sListCodeDTO(String hosName, String areaCode, String cateCode[], String oderby, String diam, String filter) {
		super();
		this.hosName = hosName;
		this.areaCode = areaCode;
		this.cateCode = cateCode;
		this.oderby = oderby;
		this.diam = diam;
		this.filter = filter;
	}
	public String getHosName() {
		return hosName;
	}
	public void setHosName(String hosName) {
		this.hosName = hosName;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String[] getCateCode() {
		return cateCode;
	}
	public void setCateCode(String[] cateCode) {
		this.cateCode = cateCode;
	}
	public String getOderby() {
		return oderby;
	}
	public void setOderby(String oderby) {
		this.oderby = oderby;
	}
	public String getDiam() {
		return diam;
	}
	public void setDiam(String diam) {
		this.diam = diam;
	}
	public String getFilter() {
		return filter;
	}
	public void setFilter(String filter) {
		this.filter = filter;
	}
	
	
	
	
}
