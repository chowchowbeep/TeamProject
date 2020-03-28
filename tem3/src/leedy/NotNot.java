package leedy;

import oracle.sql.*;

import java.io.FileOutputStream;
import java.io.InputStream;

import oracle.jdbc.driver.*;


public class NotNot {
	
	 public String searchNEvalInfoListExtListFile(String[] criteria) throws JEJBException
	 {
	
	  String filePath = "/data2/CJPartner/www_pdf/upload/qc/"; //절대경로
	  String fileName = criteria[0]+"001_"+criteria[1];
	  try {
	   //디비커넥션 얻기..
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	   conn = DriverManager.getConnection("jdbc:oracle:thin:@139.1.3.82:1521:CJHPI", "PARTRUN", "vkxmsj82");
	//   conn = DBConnManager.getConnection("paPool");  
	   //blob 타입은 디비링크에서 select할수 없다.. table생성
	    
	    if(rs.next()){

	     //오라클 blob을 이용한 경우
	     oracle.sql.BLOB blob = ((oracle.jdbc.OracleResultSet)rs).getBLOB(1);
//	     oracle.sql.BLOB blob = rs.getBLOB(1);

	     System.out.println("filePath+fileName:"+filePath+fileName); 
	     InputStream is = blob.getBinaryStream();      
	     FileOutputStream fos = new FileOutputStream(filePath+fileName);
	     int i = 0;
	     while((i = is.read()) != -1) {
	         fos.write(i);
	     } 

	     fos.close();
	     is.close();
	  

	  }
	 }

}
