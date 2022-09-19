package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*웹 페이지를 연동하는 방법은 다음과 같다.
3. 쿠키 : 클라이언트 PC의 Cookie 파일에 정보를 저장한 후 웹 페이지들이 공유*/
@WebServlet("/set")
public class SetCookieValue extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Date d = new Date(); //쿠키의 이름=cookieTest
		Cookie c =new Cookie("cookieTest", URLEncoder.encode("JSP프로그래밍입니다.","utf-8"));
		c.setMaxAge(24* 60* 60);	//1일			3. 내컴퓨터에 쿠키에 저장
		//c.setMaxAge(-1); //위에 주석을 달고 여기로 실행하면 '"세션 쿠키"를 생성합니다.'(서버저장)	4. 서버에 쿠키 저장(세션+쿠키)
		response.addCookie(c);
		out.println("현재시간: " + d);
		out.println("<br> 문자열을 Cookie에 저장합니다.");
	}

}
