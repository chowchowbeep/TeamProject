package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.HHospitalProfileDAO;
import lastdto.hosMemberDTO;

public class HHospitalMymenuCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_mymenu.jsp"; //H11 마이메뉴 페이지  로 이동
		String hosId="hos3"; //hosid를 세션에서 넘겨받아와야함 
		System.out.println("병원회원 수정페이지 넘어갈때 hosid값:"+hosId);
		HHospitalProfileDAO dao = new HHospitalProfileDAO();
		hosMemberDTO list = new hosMemberDTO();
		list = dao.select(hosId);
		request.setAttribute("list",list);
		return path;
	}

}
