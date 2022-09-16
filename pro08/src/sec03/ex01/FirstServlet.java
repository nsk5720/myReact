package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법_4번쨰
//@WebServlet("/first")
public class FirstServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		
		//이 방법을 실행해도 url이 first라서 second를 보안유지할 수 있는 장점이 있음
		RequestDispatcher dispatch = request.getRequestDispatcher("second?name=lee");
		dispatch.forward(request, response);
		// 단점은 255자 이상 사용 못함(겟방식은)
	}
	
}
