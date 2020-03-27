package cmd;

import java.io.File;
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
		
		String sicId = multi.getParameter("sic_id");
		String hosId = multi.getParameter("hos_id");
		int artrNo = Integer.parseInt(multi.getParameter("artr_no"));
		System.out.println("여기는 업로드~ "+sicId+artrNo+hosId);
		
		//파라미터 받아오기
		String fileType = multi.getParameter("file_type");
		//String fileName = multi.getParameter("file");
		String fileName = multi.getFilesystemName("file"); //업로드한 파일이름
		String originFileName = multi.getOriginalFileName("file"); //서버에 저장된 파일 이름
	//	String fileExtend = fileName.substring(fileName.lastIndexOf(".")+1); //파일 확장자
	//	File fileObj = multi.getFile("file");//파일 객체 받아오기
		
		
		// int artrNo = Integer.parseInt(multi.getParameter("artr_no"));
		String y = multi.getParameter("inputYear");
		String m =multi.getParameter("inputMonth");
		String d = multi.getParameter("inputDay");
		String dcryDttm = y+m+d;
		String dcryEtc = multi.getParameter("dcry_etc");
		String rqstNo = multi.getParameter("rqst_no");
		System.out.println("dcryEtc addCMD에서 "+dcryEtc);
		
//		System.out.println(fileName);
//		System.out.println(artrNo);
//		System.out.println(dcryDttm);
//		System.out.println(dcryEtc);
//		
		dto1.setFileType(fileType);
		dto1.setFileName(originFileName);
	
		dto2.setArtrNo(artrNo);
		dto2.setDcryDttm(dcryDttm);
		dto2.setDcryEtc(dcryEtc);
		dto2.setHosId(hosId);
		dto2.setSicId(sicId);
		
		System.out.println(dto1.toString());
		System.out.println(dto2.toString());
	
		int a = dao.insertFile(dto1, dto2);
		request.setAttribute("rqstNo", rqstNo);

		return "redirect:HMediDetail.do?rqstNo="+rqstNo;
	}

	private ServletContext getServletContext() {
		
		return null;
	}

}
