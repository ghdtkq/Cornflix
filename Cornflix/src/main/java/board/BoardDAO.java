package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {

    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:testdb";
    String user = "scott";
    String password = "tiger";

    public Connection dbcon() {

        Connection con = null;

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return con;
    }

    public ArrayList<Board> selectAll() {

        Connection con = dbcon();

        String sql = "SELECT member_num, member_category, member_id, member_device1, member_device2, member_device3, member_detail FROM board_tbl";
        ArrayList<Board> list = new ArrayList<>();

        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
            	
            	int member_num = rs.getInt("member_num");
                String member_category = rs.getString("member_category");
                String member_id = rs.getString("member_id");
                String member_device1 = rs.getString("member_device1");
                String member_device2 = rs.getString("member_device2");
                String member_device3 = rs.getString("member_device3");
                String member_detail = rs.getString("member_detail");

                Board board = new Board(member_num, member_category, member_id, member_device1, member_device2, member_device3, member_detail);
                list.add(board);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 연결을 닫습니다.
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public void insertMember2(Board board) {
        // db연결
        Connection con = dbcon();
        // sql작성
        String sql = "INSERT INTO board_tbl(member_num, member_category, member_id, member_device1, member_device2, member_device3, member_detail) VALUES(boardseq.nextval,?,?,?,?,?,?)";
        PreparedStatement pst = null;
        try {
            // sql실행
            pst = con.prepareStatement(sql);
         
            pst.setString(1, board.getMember_category());
            pst.setString(2, board.getMember_id());
            pst.setString(3, board.getMember_device1());
            pst.setString(4, board.getMember_device2());
            pst.setString(5, board.getMember_device3());
            pst.setString(6, board.getMember_detail());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 연결해제
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public Board selectOne( int board_num) {
		//db연결
		Connection con  =dbcon();
		//sql
		String sql =" select * from board_tbl where member_num= ? ";
		PreparedStatement pst=null;
		ResultSet rs = null;
		Board b =null;
		try {
			pst=con.prepareStatement(sql);
			pst.setInt(1, board_num);			
			//sq1실행
			//sql실행한 결과 Customer 객체로 만들기
			rs=pst.executeQuery();			
			if( rs.next() ) {
				int member_num = rs.getInt(1);
				String member_category = rs.getString(2);
				String member_id = rs.getString(3);
				String member_device1 = rs.getString(4);
				String member_device2 = rs.getString(5);
				String member_device3 = rs.getString(6);
				String member_detail = rs.getString(7);
				b = new Board(member_num, member_category, member_id, member_device1, member_device2, member_device3, member_detail);				 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//자원해제	
		
		return b;
	}	
    
    public static void main(String[] args) {
        BoardDAO dao = new BoardDAO();

    
    }
}
