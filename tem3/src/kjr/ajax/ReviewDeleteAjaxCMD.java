package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.ReviewDAO;
import net.sf.json.JSONArray;

public class ReviewDeleteAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rvNoString = request.getParameter("rvNo");
		System.out.println("넘어왔니?"+rvNoString);
		int rvNo = Integer.parseInt(rvNoString);
		ReviewDAO dao = new ReviewDAO();
		System.out.println(rvNo);
		//insert작업 
		boolean checkDelete = dao.Delete(rvNo);
		
		return "ajax:"+ JSONArray.fromObject(checkDelete);
	}

}
