package kjr.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.ReviewDAO;
import lastdto.reviewDTO;
import net.sf.json.JSONArray;

public class ReviewInsrtAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="";
		//값 받아오기
				String hosId ="hos2"; //request.getParameter("hosId"); hosid받아오는거 추가
				String sicId ="sic3"; //request.getParameter("sicId"); 유저id 받아우는 거 추가
				String contents = request.getParameter("contents");
				
				String st = request.getParameter("star");
				System.out.println(st);
				int star = Integer.parseInt(st);
				ReviewDAO dao = new ReviewDAO();
				
				reviewDTO dto = new reviewDTO(sicId,hosId,star,contents);
				//insert작업 
				boolean checkInsert = dao.insert(dto);
				

		
				return "ajax:" + JSONArray.fromObject(checkInsert);
	}

}
