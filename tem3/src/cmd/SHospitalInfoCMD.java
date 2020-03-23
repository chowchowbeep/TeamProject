package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.HosmemberDAO;
import kjr.SearchDAO;
import lastdto.hosMemberDTO;
import lastdto.searchDTO;

public class SHospitalInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_info.jsp"; //S8 병원정보 상세조회 페이지
		String hosId = "hos1"; //request.getParameter("hosId");
		System.out.println("shospital인포~~ "+hosId);
		
		HosmemberDAO hosDao = new HosmemberDAO();
		ArrayList<hosMemberDTO> list = hosDao.selectId(hosId); //id로 병원정보 가져오기
		
		SearchDAO searchDao = new SearchDAO();
		ArrayList<searchDTO> wdDto = searchDao.selectAll(hosId); //id로 병원 검색코드 가져오기
		request.setAttribute("list",list);
		request.setAttribute("wd",wdDto);
		
		return path;
	}

}
