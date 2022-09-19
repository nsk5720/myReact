package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*웹 페이지를 연동하는 방법은 다음과 같다.
2. URL Rewriting :  GET 방식으로 URL 뒤에 정보를 붙여서 다른 페이지로 전송
웹 페이지가 많아지면 일일이 로그인 정보를 전송해야 함// GET 방식으로 전송하므로 보안에 취약함*/
@WebServlet("/second")	//바로 pro09/second로 들어가면 로그인 하라고 뜨는 것도 확인
public class SecondServlet extends HttpServlet{
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}
	
	@Override		//doGet인 이유는 LoginServlet에서 46~50번째 줄이 get방식으로 전달하기 때문에
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_address = request.getParameter("user_address");
		
		out.println("<html><body>");
		if(user_id !=null && user_id.length() !=0) {
			out.println("이미 로그인 상태입니다!<br><br>");
			out.println("첫 번째 서블릿에서 넘겨준 아이디:" + user_id + "<br>");
			out.println("첫 번째 서블릿에서 넘겨준 비밀번호:" + user_pw + "<br>");
			out.println("첫 번째 서블릿에서 넘겨준 주소:" + user_address + "<br>");
			out.println("</body></html>");
		} else {
			out.println("로그인 하지 않았습니다. <br><br>");
			out.println("다시 로그인하세요!!<br>");
			out.println("<a href='/pro09/login.html'>로그인 창으로 이동하기</a>");
		}
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
}
