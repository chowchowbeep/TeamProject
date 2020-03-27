package cmd;

import java.io.IOException;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//파일 업로드를 수행할 수 있게 해주는 클래스
import com.oreilly.servlet.MultipartRequest;
// 이름이 똑같은 파일의 경우, 이름이 중복되지 않게 해주는 클래스 
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import lastdto.docuFileDTO;
import lastdto.docuInfoDTO;
import leedy.HosFileUploadDAO;

public class HHospitalUploadAddCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String directory =request.getSession()
				.getServletContext().
				getRealPath("/upload");
				//"C:/Users/Da yeon/git/TeamProject/tem3/WebContent/upload";
		System.out.println(directory);
		int maxsize = 1024 * 1024 * 100; // 첨부파일 최대 용량 설정(bite) 10MB
		String encoding = "UTF-8";
		MultipartRequest multi = new MultipartRequest(request, directory, maxsize, encoding, new DefaultFileRenamePolicy());

		ServletContext context = getServletContext(); //어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨
		
		
		docuFileDTO dto1 = new docuFileDTO(); //docuFile
		docuInfoDTO dto2 = new docuInfoDTO(); //docuInfo
		HosFileUploadDAO dao = new HosFileUploadDAO();
		

		//파라미터 받아오기
		String fileType = multi.getParameter("file_type");
		//String fileName = multi.getParameter("file");
		String fileName = multi.getFilesystemName("file"); //업로드한 파일
		String originFileName = multi.getOriginalFileName("file");
		String fileExtend = fileName.substring(fileName.lastIndexOf(".")+1); 
		
		int artrNo = Integer.parseInt(multi.getParameter("artr_no"));
		String dcryDttm = request.getParameter("inputYear")
				+request.getParameter("inputMonth")
				+request.getParameter("inputDay");
		String dcryEtc = request.getParameter("drcy_etc");
		
		System.out.println(fileType);
		System.out.println(fileName);
		System.out.println(artrNo);
		System.out.println(dcryDttm);
		System.out.println(dcryEtc);
		
		dto1.setFileType(fileType);
		dto1.setFileName(fileName);
		dto2.setDcryNo(artrNo);
		dto2.setDcryDttm(dcryDttm);
		dto2.setDcryEtc(dcryEtc);
	
		int a = dao.insertFile(dto1, dto2);
		
		
		return "redirect:HMediDetail.do";
	}

	private ServletContext getServletContext() {
		// TODO Auto-generated method stub
		return null;
	}

}
