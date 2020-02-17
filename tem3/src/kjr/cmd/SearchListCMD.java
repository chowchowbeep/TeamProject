package kjr.cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.HosMemberDto;
import kjr.HosmemberDAO;

public class SearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/search_list.jsp"; //S7 검색 결과 리스트 페이지
		String hosName; 	//검색한 병원이름 
		hosName=request.getParameter("hosName");
		System.out.println("병원명 = "+hosName);
		
		HosmemberDAO dao = new HosmemberDAO();
		ArrayList<HosMemberDto> hosList = new ArrayList<>();
		hosList = dao.select(hosName); //병원명으로 검색한 병원리스트 db에서 가져옴
		
		request.setAttribute("hosList",hosList);
		return path;
	}

}
