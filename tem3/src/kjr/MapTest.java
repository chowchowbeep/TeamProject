package kjr;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class MapTest  implements Command  {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*
		String APIKey = "발급받은 API 키";    

		HashMap<String, Object> map = new HashMap<>(); //결과를 담을 map
		String address ="주소가져오기";
		try {
		    String apiURL = "https://dapi.kakao.com/v2/local/search/address.json?query=" 
		                    + URLEncoder.encode(address, "UTF-8");
		    
		    HttpResponse<JsonNode> response = Unirest.get(apiURL)
		            .header("Authorization", APIKey)
		            .asJson();
	}

		
		return null;
	}
	*/
}