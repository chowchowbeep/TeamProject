package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.HosInfoDAO;
import lastdto.hosInfoForRqDTO;

public class SResRequestCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		// 병원 상세정보 페이지에서 파라미터로 가져올 수 있는 값 
//		// (추후아래 메소드 수정_ 파라미터값 그대로 가져다 쓰면 더 효율적.)
//		// 병원명, 진료가능시간, 주소, 사업자등록번호, 검색코드, 영업상태,전화번호
//		// 위도 경도도 가져 와서 지도 api사용 가능
//		
//		HosInfoDAO dao = new HosInfoDAO();
//		hosInfoForRqDTO dto = new hosInfoForRqDTO();
//		
//		String sidId = request.getParameter("id");
//		String hosId = request.getParameter("hosId");
//		// 병원id(공통), 병원명(공통), 주소(공통), 진료시간(예약)  
//		// 병원휴일(예약) 
//		// 의사번호(공통), 의사이름(공통), 진료과목(공통) 
//		// 의사휴일 (예약) 
//		// 병원  상태정보 hos_stt.biz_stt(접수) 
//		
//		dto = dao.neededWhenRq(hosId);
//		
//		request.setAttribute("dto", dto);
//		request.setAttribute("id", sidId);
		
		String path ="aView/chorong/res_request.jsp"; //S24 예약신청 페이지
		
		return path;
	}

}
