package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법
//@WebServlet("/first")
public class FirstServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		PrintWriter out = response.getWriter();
		//response.sendRedirect("second");
		response.addHeader("Refresh", "5;url=second");		//5초 지연 후 홈페이지 넘어감
	}
	
}
