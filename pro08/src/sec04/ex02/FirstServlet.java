 package sec04.ex02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법_4번쨰 _ 주소에 null값 없애줌
//@WebServlet("/first")
public class FirstServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!
		
		request.setAttribute("address", "서울시 성북구");
		//response.sendRedirect("second");
		RequestDispatcher dispatch = request.getRequestDispatcher("second");
		dispatch.forward(request, response);
		//포워드 방식으로 넘겨줘야 서버에서 바로 넘기면서 주소가 정상적 전달 가능
	}
	
}
