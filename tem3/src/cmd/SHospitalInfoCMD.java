package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.BookmarkDAO;
import kjr.CodeDAO;
import kjr.HosmemberDAO;
import kjr.SearchDAO;
import lastdto.codeDTO;
import lastdto.hosMemberDTO;
import lastdto.searchDTO;

public class SHospitalInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "aView/kjr/hospital_info.jsp"; //S8 병원정보 상세조회 페이지
		String sicId = "sic1";//세션에서 가져오기
		String hosId = "hos4"; //request.getParameter("hosId");
		System.out.println("shospital인포~~ "+hosId);
		//id로 병원정보 가져오기
		HosmemberDAO hosDao = new HosmemberDAO();
		ArrayList<hosMemberDTO> list = hosDao.selectId(hosId); 
		
		//id로 병원 검색코드 가져오기
		SearchDAO searchDao = new SearchDAO();
		ArrayList<searchDTO> wdDto = searchDao.selectAll(hosId); 
		
		//검색코드 상세내용 map에 넣기
		Map<String,codeDTO> codeList = new HashMap<>();
		
		for(searchDTO key : wdDto) {		
			CodeDAO dao = new CodeDAO();
			codeDTO value = new codeDTO();
			value = dao.select(key.getCode());	//검색코드를 순차대로 변수로 넣어서 name과 type을 value에 넣음.
			
			codeList.put(key.getCode(),value);
		}
		BookmarkDAO bookDAO = new BookmarkDAO();
		int cnt = bookDAO.select(sicId, hosId);
		System.out.println("hosInfo에서 cnt값"+cnt);
		
		request.setAttribute("cnt",cnt);//관심병원체크
		request.setAttribute("list",list);//병원정보
		request.setAttribute("wdList",wdDto);//검색코드
		request.setAttribute("codeList",codeList);//코드정보
		
		
		return path;
	}

}
