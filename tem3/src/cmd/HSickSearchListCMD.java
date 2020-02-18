package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.SickSearchDAO;
import lastdto.sickSearchDTO;

public class HSickSearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path ="/aView/taeyoung/sick_search_list.jsp"; //회원정보 검색 리스트 페이지
		SickSearchDAO dao = new SickSearchDAO();
		List<sickSearchDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
		
	}

}
