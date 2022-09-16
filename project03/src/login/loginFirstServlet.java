 package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//A링크 거는 방법_4번쨰 _ 주소에 null값 없애줌
@WebServlet("/loginFirst")
public class loginFirstServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		//한글로 받아!

		RequestDispatcher dispatch = request.getRequestDispatcher("/loginSk");
		dispatch.forward(request, response);
	}
	
}
