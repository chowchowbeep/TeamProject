package tem3.ecc.ecc.app;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class CallRestWs {

	 public static void main(String[] args) {
	        BufferedReader br = null;
	        try{            
	            String urlstr = "http://openapi.airkorea.or.kr/"
	                    + "openapi/services/rest/ArpltnInforInqireSvc/getCtprvnMesureLIst"
	                    + "?serviceKey=TpJQ2lu26WZpqlPAaXLnQExKSw5ZDkqulBT7bbaXgVM8luyo6iNNYoxIulKj4CDBqAtxrq8lAD1s9qfNfaaKRA%3D%3D&numOfRows=10&pageNo=1&itemCode=PM10&dataGubun=HOUR&searchCondition=MONTH";
	            URL url = new URL(urlstr);
	            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
	            urlconnection.setRequestMethod("GET");
	            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
	            String result = "";
	            String line;
	            while((line = br.readLine()) != null) {
	                result = result + line + "\n";
	            }
	            System.out.println(result);
	        }catch(Exception e){
	            System.out.println(e.getMessage());
	        }
	    }


	
	
//	private String restClient() throws Exception {
//		
//		String addr="http://openapi.airkorea.or.kr/"
//		+"openapi/services/rest/ArpltnInforInqireSvc/getCtprvnMesureSidoLIst"
//		+"?serviceKey=";
//		String serviceKey = "TpJQ2lu26WZpqlPAaXLnQExKSw5ZDkqulBT7bbaXgVM8luyo6iNNYoxIulKj4CDBqAtxrq8lAD1s9qfNfaaKRA%3D%3D&numOfRows=10&pageNo=1&sidoName=서울&searchCondition=DAILY";
//		String parameter = "";
//		
//		serviceKey = URLEncoder.encode(serviceKey, "UTF-8");
//		
//		addr=addr+serviceKey+parameter;
//		
//		URL url = new URL(addr);
//		InputStream in = url.openStream();
//		CachedOutputStream bos = new CachedOutputStream();
//		
//		
//		return null;
//	}
	
	
}
