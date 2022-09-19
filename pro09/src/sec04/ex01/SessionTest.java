package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
// 로그인 상태 확인을 누르면 session Id가 url에 함께 뜸
//@WebServlet("/login")
public class SessionTest extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	

	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		if(session.isNew()) {
			//첫 실행 시
			if(user_id !=null) {
				session.setAttribute("user_id", user_id);	//session에다가 user_id(ashram7) 셋팅 => 화면에 안보이는 부분 백 
				String url = response.encodeURL("login");
				out.println("<a href="+url+">로그인 상태 확인</a>");	// 화면에 보여지는 부분 => 로그인 상태 확인
			}else {
				out.print("<a href='login2.html'>다시 로그인 하세요!!</a>");
				session.invalidate();
			}
		} else {
			// 이미 세션이 있을때(새탭으로 html로 접속)
			user_id = (String) session.getAttribute("user_id");
			if(user_id !=null && user_id.length() !=0) {
				out.print("안녕하세요" + user_id + "님!!!");
			} else {
				//톰켓을 껐다가 키며 세션이 사라졌을 때 html 로그인 화면을 거치지 않고 바로 pro09/login으로 들어왔을 경우
				out.print("<a href='login2.html'>다시 로그인 하세요!!</a>");
				session.invalidate();		//세션 강제로 삭제
			}
		}
	}


	
}
