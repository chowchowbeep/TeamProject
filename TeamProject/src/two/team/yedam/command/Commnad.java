package two.team.yedam.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Commnad {
	public String execute(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException;
}
