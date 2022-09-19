package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*웹 페이지를 연동하는 방법은 다음과 같다.
3. 쿠키 : 클라이언트 PC의 Cookie 파일에 정보를 저장한 후 웹 페이지들이 공유*/
@WebServlet("/get")
public class GetCookieValue extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Cookie[] allValues=request.getCookies();
		for(int i=0; i<allValues.length; i++) {
			if(allValues[i].getName().equals("cookieTest")){
					out.println("<h2>Cookie 값 가져오기: "+URLDecoder.decode(allValues[i].getValue(),"utf-8"));
		}
		
		}
	}

}
