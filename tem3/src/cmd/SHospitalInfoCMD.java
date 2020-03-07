package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.HosmemberDAO;
import lastdto.hosMemberDTO;

public class SHospitalInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_info.jsp"; //S8 병원정보 상세조회 페이지
		String hosId = "hos3"; //request.getParameter("hosId");
		System.out.println("shospital인포~~ "+hosId);
		
		HosmemberDAO dao = new HosmemberDAO();
		ArrayList<hosMemberDTO> list = dao.selectId(hosId);
		request.setAttribute("list",list);
		
		return path;
	}

}
