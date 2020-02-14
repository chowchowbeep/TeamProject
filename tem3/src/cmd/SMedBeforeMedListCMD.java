package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SMedBeforeMedListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S20 진료신청현황 리스트 페이지
		String path ="aView/chorong/med_beforeMedList.jsp"; //
		
		return path;
	}

}
