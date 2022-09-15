package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법_4번쨰 _ 주소가 null값이 나옴
//@WebServlet("/second")
public class SecondServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		PrintWriter out = response.getWriter();
		
		String address = (String) request.getAttribute("address");
		out.println("<html><body>");
		out.println("주소:"+address);
		out.println("<br>");
		out.println("redirect를 이용한 바인딩실습입니다.");
		out.println("</body></html>");
	}
	
}
