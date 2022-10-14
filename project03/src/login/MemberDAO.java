package login;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import login.MemberVO;
/*import sec02.ex01.MemberBean;*/
			
public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	private Statement stmt;
	
	public MemberDAO() {	
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
		
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public List<MemberVO> listMembers() {
		List<MemberVO> membersList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from  t_member order by joinDate desc";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				MemberVO memberVO = new MemberVO(id, pwd, name, email, joinDate);
				membersList.add(memberVO);				
			}
			rs.close();
			pstmt.close();
			conn.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return membersList;
	}
	
	//멤버들 리스트 보는 모듈
		public List listMembers(MemberVO memberVO) {
			List membersList = new ArrayList();
			String _name=memberVO.getName();
			try {
				conn = dataFactory.getConnection();
				String query = "select * from t_member ";
				
				if((_name!=null && _name.length()!=0)){
					 query+=" where name=?";
					 pstmt = conn.prepareStatement(query);
					 pstmt.setString(1, _name);
				}else {
					pstmt = conn.prepareStatement(query);	
				}
				
				
				System.out.println("prepareStatememt: " + query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
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
					membersList.add(vo);
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return membersList;
		}	
	
	
	
	
	
	//멤버 추가 모듈

		public void addMember(MemberVO memberBean) {
			try {
				Connection con = dataFactory.getConnection();
				String id = memberBean.getId();
				String pwd = memberBean.getPwd();
				String name = memberBean.getName();
				String email = memberBean.getEmail();
				String query = "insert into t_member";
				query += " (id,pwd,name,email)";
				query += " values(?,?,?,?)";
				System.out.println("prepareStatememt: " + query);
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				pstmt.setString(3, name);
				pstmt.setString(4, email);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	
	
	
	//이거를 입력헀으니 db에 있는 정보를 입력해야 함
		public boolean isExisted(MemberVO memberVO) {
			boolean result = false;
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			try {
				//decode() 함수를 이용해 id와 pwd가 존재하면 true, 존재하지 않으면 false를 return
				conn = dataFactory.getConnection();
				String query = "select decode(count(*),1,'true','false') as result from t_member";
				query += " where id=? and pwd=?";
				System.out.println(query);
				// 파라메터로 전달된 id와 pwd를 이용해 데이터베이스에 있는지 조회 
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,  id);
				pstmt.setString(2,  pwd);
				ResultSet rs = pstmt.executeQuery();
				// 커서를 첫 번째 레코드로 위치시킵니다.
				rs.next();
				result = Boolean.parseBoolean(rs.getString("result"));
				System.out.println("result=" + result);
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
		

		
		
		
		
		
		
		
		public MemberVO findMember(String _id) {
			MemberVO memInfo = null;
			try {
				conn = dataFactory.getConnection();
				String query = "select * from  t_member where id=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, _id);
				System.out.println(query);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				memInfo = new MemberVO(id, pwd, name, email, joinDate);
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return memInfo;
		}

		public void modMember(MemberVO memberVO) {
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			try {
				conn = dataFactory.getConnection();
				String query = "update t_member set pwd=?,name=?,email=?  where id=?";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, pwd);
				pstmt.setString(2, name);
				pstmt.setString(3, email);
				pstmt.setString(4, id);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		public void delMember(String id) {
			try {
				conn = dataFactory.getConnection();
				String query = "delete from t_member where id=?";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,id);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
}