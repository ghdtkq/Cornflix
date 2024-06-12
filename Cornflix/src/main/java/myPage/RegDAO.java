package myPage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RegDAO {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:testdb";
	String user="scott";
	String password="tiger";
	
	public Connection dbcon() {		 
		Connection con = null;
		try {
			Class.forName(driver);
			con =DriverManager.getConnection(url, user, password);
			if( con != null) System.out.println( "ok");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;		 	
	}
	
	
	public ArrayList<Member> selectAll() {
		RegDAO dao = new RegDAO();
		Connection con =  dbcon();
		ArrayList<Member> list = new ArrayList<>();
		String sql ="select * from member_tbl";
		 try {
			 PreparedStatement pst = con.prepareStatement(sql);
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String name = rs.getString(5);
				String birthdate = rs.getString(6);
				String subscription_info = rs.getString(7);
				String rank = rs.getString(8);
				
				Member member = new Member(id,pw,email,phone,name,birthdate,subscription_info,rank);
				list.add(member);
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return list;
	}
	
	public void reginsrt(Member m) {
		
		
		System.out.println( m);
		
		RegDAO dao = new RegDAO();
		Connection con =  dbcon();
		String sql ="insert into member_tbl values(?,?,?,?,?,?, null, null)";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, m.getId());
			pst.setString(2, m.getPw());
			pst.setString(3, m.getEmail());
			pst.setString(4, m.getPhone());
			pst.setString(5, m.getName());
			pst.setString(6, m.getBirth_date());
			
			
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String loginCheck(String id){
		RegDAO dao = new RegDAO();
		Connection con = dao.dbcon();
		String pw = null;
		
		String sql =" select PASSWORD from member_tbl where member_id= ? ";
				
		 try {
			 PreparedStatement pst = con.prepareStatement(sql);
			 pst.setString(1, id);
			 ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
				 
				 pw = rs.getString("PASSWORD");
			 } 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pw;
	}
		
	public void updatePay(String subscription_info, String rating, String member_id) {
		//연결
		//변경 sql 작성
		//실행
		//자원반납		
		Connection con = dbcon();
		PreparedStatement pst=null;
		String sql=" UPDATE member_tbl SET subscription_info = ?, rating = ? WHERE member_id = ? " ;
		try {
			pst= con.prepareStatement(sql);
			pst.setString(1, subscription_info);
			pst.setString(2, rating);
			pst.setString(3, member_id);			
			
			pst.executeUpdate();			
			
		} catch (SQLException e) {			 
			e.printStackTrace();
		}
		
	}

	public Member oneSelect(String id) {
		
		Connection con = dbcon();
		String sql =" SELECT * FROM member_tbl WHERE MEMBER_ID = ? ";
		Member m = null;
		 try {
			 PreparedStatement pst = con.prepareStatement(sql);
			 pst.setString(1, id);
			 ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
				 String id_ = rs.getString("MEMBER_ID");
				 String pw = rs.getString("PASSWORD");
				 String email = rs.getString("EMAIL");
				 String phone = rs.getString("PHONE_NUMBER");
				 String name = rs.getString("NAME");
				 String birth_date = rs.getString("BIRTH_DATE");
				 String subscription_info = rs.getString("SUBSCRIPTION_INFO");
				 String rating = rs.getString("RATING");
				 
				m = new Member(id_,pw,name,phone,birth_date,email,subscription_info,rating);
			 }
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m;
	}
	
	public void updatePassword(String id , String pw) {
		Connection con = dbcon();
		String sql =" update member_tbl set PASSWORD =? where MEMBER_ID = ? ";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pw);
			pst.setString(2, id);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
		RegDAO dao = new RegDAO();
		
		
		
		Member m = dao.oneSelect("wkatlaksdy1");	
		
		System.out.println(m);
		
	}
	
}
