package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.TestForRqDAO;
import lastdto.hosMemberDTO;

public class ShospitalInfoForTestCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//병원상세페이지 테스트용 으로 이동
		
		String hosId  = "hos1"; // 이전 페이지에서 값 받아와야 함. 수정필요. 
		
		hosMemberDTO dto = new hosMemberDTO();
		TestForRqDAO dao = new TestForRqDAO();
		
		dto = dao.getHosInfo(hosId);
		
		request.setAttribute("dto", dto);
		
		String path ="aView/chorong/hospital_info_for_test.jsp"; 
		return path;
	}

}
