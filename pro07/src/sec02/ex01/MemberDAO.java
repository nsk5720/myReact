package sec02.ex01;
//비즈니스로직(무슨일 한거야?) = > DB를 연결하고 회원정보를 꺼내서 화면에 뿌리는~ 
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
			//이 클래스는 DB를 연결하고 멤버(회원정보)를 리스트화 시킴
public class MemberDAO {
	/*private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String user = "scott";
	private static final String pwd = "tiger";*/
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
						
	public MemberDAO() {	//생성자로서 클래스 안에 생성된 변수(필드)를 초기화함 (여기서는 dataFactory / ctx, envContext는 필드를 위한 변수)
		try {
			//JNDI에 접근하기 위해 기본 경로(java:/comp/env)를 지정
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			/*톰켓 context.xml에 설정한 name 값인 jdbc/oracle을 이용해 톰캣이 미리 연결한 DataSource를 받아온다*/
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			//connDB();	대신에 dataFactory 사용
			// DataSource를 이용해 데이터베이스에 연결
			con = dataFactory.getConnection();
			String query = "select * from t_member ";	
			System.out.println("prepareStatement: " + query);
			pstmt = con.prepareStatement(query);	
			ResultSet rs = pstmt.executeQuery();			
			while (rs.next()) {							
				// 조회한 레코드의 각 컬럼 값을 받아 온다	(each문 같이 3바퀴 돔)
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);				
			}
			rs.close();		
			pstmt.close();
			con.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/*private void connDB() {		
		try {
			Class.forName(driver);	
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 생성 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}*/
}