package sec01.ex02;
//비즈니스로직(무슨일 한거야?) = > DB를 연결하고 회원정보를 꺼내서 화면에 뿌리는~ 
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
			//이 클래스는 DB를 연결하고 멤버(회원정보)를 리스트화 시킴
public class MemberDAO {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String user = "scott";
	private static final String pwd = "tiger";
	private Connection con;
	//private Statement stmt; 밑에랑 비교하라우
	private PreparedStatement pstmt;
						//db를 list에 넣음
	public List listMembers() {
		List list = new ArrayList();
		try {
			connDB();	//여는 동작 (open[x])
			String query = "select * from t_member ";	//단순 문자열(String)
			//System.out.println(query);
			System.out.println("prepareStatement: " + query);
			// SQL 문으로 회원 정보를 조회 while 문을 돌리기 위해서...
			//ResultSet rs = stmt.executeQuery(query);	//실행
			pstmt = con.prepareStatement(query);	//파라메타만 전달
			ResultSet rs = pstmt.executeQuery();			
			while (rs.next()) {							//rs는 레코드 개념이고 next는 다음 레코드  //rs.next=마지막 줄이면 실행문X
				// 조회한 레코드의 각 컬럼 값을 받아 온다	(each문 같이 3바퀴 돔)
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				// 각 컬럼 값을 다시 MemberVO 객체의 속성에 설정
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				// 설정된 MemberVO 객체를 다시 ArrayList에 저장
				list.add(vo);				
			}
			rs.close();		//데이터베이스는 꼭 닫아줘야 데이터손상X
			pstmt.close();
			con.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 조회한 레코드의 개수만큼 MemberVO 객체를 저장한 ArrayList에 반환
		return list;
	}
	
	private void connDB() {		//실행요소를 가지는 클래스(변수)
		try {
			Class.forName(driver);	//WebContent.WEB-INF.lib에 들어간 2개의 jar파일이 드라이버파일임
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 생성 성공");
			//stmt = con.createStatement();
			//System.out.println("Statement 생성 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
}