package cmd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.HHospitalProfileDAO;
import lastdto.hosMemberDTO;

public class HHospitalProfileCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_profile.jsp"; //H12 병원회원 수정 페이지  로 이동
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String hosId=sessionId; //hosid를 세션에서 넘겨받아와야함 
		System.out.println("병원회원 수정페이지 넘어갈때 hosid값:"+hosId);
		HHospitalProfileDAO dao = new HHospitalProfileDAO();
		hosMemberDTO list = new hosMemberDTO();
		list = dao.select(hosId);
		request.setAttribute("list",list);
		return path;
	}

}
