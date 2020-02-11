package kjr;

import java.util.ArrayList;

import dto.SickMemberDto;


public class sicMemberDAO  {
	DAO dao = new DAO();
	//전체리스트
	public ArrayList<SickMemberDto> select(int id){
		
		ArrayList<SickMemberDto> dto = null;
		
		return dto;
	}
	
	// 한개의 리스트 가져오기.
	
	String sql = "select * from member";
		
	//dto로 넘어오는 데이터를 DB에 추가(등록)하는 메소드
			
}