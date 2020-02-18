package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.wjqtnwmdDAO;
import lastdto.tmrFileDTO;

public class SSickWjqtnwmdCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/taeyoung/sick_wjqtnwmd.jsp"; //S4 접수증 페이지(QR)
		wjqtnwmdDAO dao = new wjqtnwmdDAO();
		List<tmrFileDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}

}
