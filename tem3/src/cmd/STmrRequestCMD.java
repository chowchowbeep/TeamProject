package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.HosInfoDAO;
import lastdto.hosInfoForRqDTO;

public class STmrRequestCMD implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 병원 상세정보 페이지에서 파라미터로 가져올 수 있는 값 
		// (추후아래 메소드 수정_ 파라미터값 그대로 가져다 쓰면 더 효율적.)
		// 병원명, 진료가능시간, 주소, 사업자등록번호, 검색코드, 영업상태,전화번호
		// 위도 경도도 가져 와서 지도 api사용 가능
		
		String sidId = request.getParameter("id");
		String hosId = request.getParameter("hosId");
		System.out.println("환자id: " + sidId +", 병원id: "+hosId);
		
		// 접수, 예약신청시 필요한 값 __ hosInfoForRqDTO
		// 병원id(공통), 병원명(공통), 주소(공통), 진료시간(예약)  
		// 병원휴일(예약) 
		// 의사번호(공통), 의사이름(공통), 진료과목(공통) 
		// 의사휴일(예약) 
		// 병원  상태정보 hos_stt.biz_stt(접수) 
		
		
		HosInfoDAO dao = new HosInfoDAO();
		hosInfoForRqDTO dto = new hosInfoForRqDTO();		
				
		dto = dao.neededWhenRq(hosId);
		
		
	
		// 영업중 상태에서만 hos_state bizstate_y) 접수가능
		// 1차 제어. (c:if로 신청폼 표시 제어__
		// n일 경우 폼 표시 하지않고 모달창("현재는 접수가능한 시간이 아닙니다.") 
		// 띄워서 뒤로가기 할 수 있도록)
		// 2차 제어. 접수버튼 눌렀을 떄 ajax로 영업상태값 가져와서 가능한지 체크
		// 가능하면 값 넘기고 불가능시 위의 모달창 
		
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("id", sidId);
		
		
		
		// ajax로 수정필요.
		String path ="aView/chorong/tmr_request.jsp"; //S28 당일접수 신청 페이지
		return path;
	}

}
