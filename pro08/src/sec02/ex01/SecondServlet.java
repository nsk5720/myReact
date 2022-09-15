package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법 _ 변수를 달아서 보내기
//@WebServlet("/second")
public class SecondServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		String name=request.getParameter("name");   //네임을 받아주는 변수 실제로 들어가는 값은 'lee'
		out.println("이름:"+name);
		out.println("<br>");
		out.println("</body></html>");
	}
	
}
