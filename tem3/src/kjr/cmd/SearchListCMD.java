package kjr.cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.hosMemberDTO;
import lastdto.searchDTO;
import kjr.HosmemberDAO;
import kjr.SearchDAO;

public class SearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/search_list.jsp"; //S7 검색 결과 리스트 페이지
			////////////////////////////////////////////////////////////////////////////병원이름검색
		ArrayList<hosMemberDTO> hosList = new ArrayList<>();
		HosmemberDAO dao = new HosmemberDAO();
		String hosName = null; 	//검색한 병원이름 
		hosName=request.getParameter("hosName"); //검색창에서 hosName을 name으로가진 병원명을 hosName에 저장
		if(hosName!=null) {
			hosList = dao.select(hosName); //병원명으로 검색한 병원리스트 db에서 가져옴
			
		}else {
			///////////////////////////////////////////////////////////////////////////키워드로검색
		
			String[] cateCode= request.getParameterValues("cateCode");
			String areaCode= request.getParameter("areaCode");
			SearchDAO sDao = new SearchDAO();
			hosList = sDao.select(cateCode,areaCode);
		}
		request.setAttribute("hosList",hosList);
		return path;
	}

}
