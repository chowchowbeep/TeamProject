package dto;

public class ReviewDto {	//리뷰테이블
	private int reviewNo; 		//글번호
	private String sicId; 		//회원id
	private String hosId; 		//병원id
	private int starPoint; 		//별점
	private String reviewCont; 	//리뷰내용
	
	//생성자
	public ReviewDto() {
		super();
	}

	public ReviewDto(int reviewNo, String sicId, String hosId, int starPoint, String reviewCont) {
		super();
		this.reviewNo = reviewNo;
		this.sicId = sicId;
		this.hosId = hosId;
		this.starPoint = starPoint;
		this.reviewCont = reviewCont;
	}

	//get set
	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public int getStarPoint() {
		return starPoint;
	}

	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}

	public String getReviewCont() {
		return reviewCont;
	}

	public void setReviewCont(String reviewCont) {
		this.reviewCont = reviewCont;
	}
	
	
	
	
}
