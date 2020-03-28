package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.CodeDAO;
import kjr.HHospitalProfileDAO;
import lastdto.hosMemberDTO;
import lastdto.seachCodeJoinDTO;

public class HHospitalMymenuCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_mymenu.jsp"; //H11 마이메뉴 페이지  로 이동
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String hosId=sessionId; //hosid를 세션에서 넘겨받아와야함 
		System.out.println("병원회원 수정페이지 넘어갈때 hosid값:"+hosId);
		
		HHospitalProfileDAO hosDAO = new HHospitalProfileDAO();
		CodeDAO codeDao = new CodeDAO();
		hosMemberDTO list = new hosMemberDTO();
		list = hosDAO.select(hosId);//병원정보
		ArrayList<seachCodeJoinDTO> codeList = codeDao.selectAll(hosId);//검색코드정보
		
		request.setAttribute("list",list); //병원정보
		request.setAttribute("codeList",codeList);//검색코드정보
		return path;
	}

}
