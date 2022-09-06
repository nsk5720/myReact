package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/third")	//**에너테이션 (매핑)		클래스 전에 결정되지 않았다가 클래스 이후에 결정되며 변수의 역할도 하는?? 여기서는 매핑의 역할(WebServlet)을 해줌
//프로그램의 소스코드 안에 다른 프로그램을 위한 정보를 미리 약속된 형식으로 포함시킨 것이 바로 에너테이션
public class ThirdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("thirdServlet init 메서드 호출");
	}

	
	public void destroy() {
		System.out.println("thirdServlet distroy 메서드 호출");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("thirdServlet doGet 메서드 호출");
	}

}
