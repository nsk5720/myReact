package sec04.ex01;

import java.io.IOException;

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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		//Redirect를 이용했기 때문에 address 밸류값이 안넘어감
		request.setAttribute("address", "서울시 성북구");
		response.sendRedirect("second");
	}
	
}
