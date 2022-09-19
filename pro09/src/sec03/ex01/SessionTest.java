package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/*웹 페이지를 연동하는 방법은 다음과 같다.
4. 세션 : 서버 메모리에 정보를 저장한 후 웹 페이지들이 공유*/

@WebServlet("/sess")
public class SessionTest extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	
		HttpSession session = request.getSession();
		out.println("세션 아이디: " + session.getId() + "<br>");
		out.println("최초 세션 생성 시각: " + new Date(session.getCreationTime()) + "<br>");
		out.println("최근 세션 접근 시각: " + new Date(session.getLastAccessedTime()) + "<br>");
		out.println("세션 유효 시간: " + session.getMaxInactiveInterval() + "<br>");
		if(session.isNew()) {
			out.print("새 세션이 만들어졌습니다.");
		}
	
	}
	
}
