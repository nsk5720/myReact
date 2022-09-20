package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginSk")
public class LoginServlet5 extends HttpServlet{
	
@Override
	public void init() {
		System.out.println("init 메서드 호출");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		doHandle(request, response);
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		String address = request.getParameter("user_address");
		System.out.println("아이디:" + id);
		System.out.println("비밀번호:" + pwd);
		
		String data = "<html>";
			data += "<body>";
			data += "<br>";
			data += "아이디: " + id;
			data += "<br>";
			data += "비밀번호: " + pwd;
			data += "<br>";
			data += "주소: " + address;
			data += "</body>";
			data += "</html>";
		out.print(data);
	}
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("userId");
		String user_pwd = request.getParameter("userPwd");

		MemberVO memberVO = new MemberVO();
		memberVO.setId(user_id);
		memberVO.setPwd(user_pwd);
		MemberDAO dao = new MemberDAO();
		boolean result = dao.isExisted(memberVO);
		
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogon", true);
			session.setAttribute("login.id", user_id);
			session.setAttribute("login.pwd", user_pwd);
			
			out.print("<html><body>");
			out.print("안녕하세요" + user_id + "님!!!<br>");
			out.print("<a href='show'>회원정보보기</a>");
			out.print("</body></html>");
		} else {
			out.print("<html><body>회원 아이디가 틀립니다.");
			out.print("<a href='sub03/sub03.jsp'> 다시 로그인하기</a><br>");
			out.print("</body></html>");
		}	
	}
	
	
	
}
