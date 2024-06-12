package mvcPrj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class CornflixDAO {
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:testdb";
	String user="scott";
	String password="tiger";
	
	public Connection dbcon() {		 
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
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

	public ArrayList<Cornflix> viewTbl() {
		Connection con = dbcon();
		String sql = "select * from movie_tbl";
		ArrayList<Cornflix> list = new ArrayList<>();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
		PreparedStatement pst =	con.prepareStatement(sql);
		ResultSet rs =	pst.executeQuery();
			while(rs.next()) {
				
				int movie_code = rs.getInt("movie_code");
	            String movie_title = rs.getString("movie_title");
	            String movie_nation = rs.getString("movie_nation");
	            String movie_img = rs.getString("movie_img");
	            String movie_genre = rs.getString("movie_genre");
	            String movie_age = rs.getString("movie_age");
	            String movie_story = rs.getString("movie_story");
	            String movie_director = rs.getString("movie_director");
	            String movie_cast = rs.getString("movie_cast");
	            Date movie_date = rs.getDate("movie_date");
	            String movie_date_str = format.format(movie_date);
	            int movie_views = rs.getInt("movie_views");
	            String movie_company = rs.getString("movie_company");

	            Cornflix cornflix = new Cornflix(movie_code, movie_title, movie_nation, movie_img,
	            		movie_genre, movie_age, movie_story, movie_director, movie_cast,
	                    movie_date_str, movie_views, movie_company);
	            list.add(cornflix);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<Cornflix> getHighViewsMovies() {
	    Connection con = dbcon();
	    String sql = "SELECT * FROM movie_tbl WHERE movie_nation = '대한민국' ORDER BY movie_views DESC";
	    ArrayList<Cornflix> movies = new ArrayList<>();

	    try {
	        PreparedStatement pst = con.prepareStatement(sql);
	        ResultSet rs = pst.executeQuery();
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        while (rs.next()) {
	        	
	        	int movie_code = rs.getInt("movie_code");
	            String movie_title = rs.getString("movie_title");
	            String movie_nation = rs.getString("movie_nation");
	            String movie_img = rs.getString("movie_img");
	            String movie_genre = rs.getString("movie_genre");
	            String movie_age = rs.getString("movie_age");
	            String movie_story = rs.getString("movie_story");
	            String movie_director = rs.getString("movie_director");
	            String movie_cast = rs.getString("movie_cast");
	            Date movie_date = rs.getDate("movie_date");
	            String movie_date_str = format.format(movie_date);
	            int movie_views = rs.getInt("movie_views");
	            String movie_company = rs.getString("movie_company");

	            Cornflix cornflix = new Cornflix(movie_code, movie_title, movie_nation, movie_img,
	            		movie_genre, movie_age, movie_story, movie_director, movie_cast,
	                    movie_date_str, movie_views, movie_company);
	            movies.add(cornflix);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return movies;
	}

	public ArrayList<Cornflix> getRecentMovies() {
	    Connection con = dbcon();
	    String sql = "SELECT * FROM movie_tbl WHERE movie_nation = '대한민국' ORDER BY movie_date DESC";
	    ArrayList<Cornflix> movies = new ArrayList<>();

	    try {
	        PreparedStatement pst = con.prepareStatement(sql);
	        ResultSet rs = pst.executeQuery();
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        while (rs.next()) {
	            int movie_code = rs.getInt("movie_code");
	            String movie_title = rs.getString("movie_title");
	            String movie_nation = rs.getString("movie_nation");
	            String movie_img = rs.getString("movie_img");
	            String movie_genre = rs.getString("movie_genre");
	            String movie_age = rs.getString("movie_age");
	            String movie_story = rs.getString("movie_story");
	            String movie_director = rs.getString("movie_director");
	            String movie_cast = rs.getString("movie_cast");
	            Date movie_date = rs.getDate("movie_date");
	            String movie_date_str = format.format(movie_date);
	            int movie_views = rs.getInt("movie_views");
	            String movie_company = rs.getString("movie_company");

	            Cornflix cornflix = new Cornflix(movie_code, movie_title, movie_nation, movie_img,
	            		movie_genre, movie_age, movie_story, movie_director, movie_cast,
	                    movie_date_str, movie_views, movie_company);
	            movies.add(cornflix);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return movies;
	}
	
	public ArrayList<Cornflix> getHighViewsMovies_해외() {
	    Connection con = dbcon();
	    String sql = "SELECT * FROM movie_tbl WHERE movie_nation != '대한민국' ORDER BY movie_views DESC";
	    ArrayList<Cornflix> movies = new ArrayList<>();

	    try {
	        PreparedStatement pst = con.prepareStatement(sql);
	        ResultSet rs = pst.executeQuery();
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        while (rs.next()) {
	            int movie_code = rs.getInt("movie_code");
	            String movie_title = rs.getString("movie_title");
	            String movie_nation = rs.getString("movie_nation");
	            String movie_img = rs.getString("movie_img");
	            String movie_genre = rs.getString("movie_genre");
	            String movie_age = rs.getString("movie_age");
	            String movie_story = rs.getString("movie_story");
	            String movie_director = rs.getString("movie_director");
	            String movie_cast = rs.getString("movie_cast");
	            Date movie_date = rs.getDate("movie_date");
	            String movie_date_str = format.format(movie_date);
	            int movie_views = rs.getInt("movie_views");
	            String movie_company = rs.getString("movie_company");

	            Cornflix cornflix = new Cornflix(movie_code, movie_title, movie_nation, movie_img,
	            		movie_genre, movie_age, movie_story, movie_director, movie_cast,
	                    movie_date_str, movie_views, movie_company);
	            movies.add(cornflix);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return movies;
	}
	
	public ArrayList<Cornflix> getRecentMovies_해외() {
	    Connection con = dbcon();
	    String sql = "SELECT * FROM movie_tbl WHERE movie_nation != '대한민국' ORDER BY movie_date DESC";
	    ArrayList<Cornflix> movies = new ArrayList<>();

	    try {
	        PreparedStatement pst = con.prepareStatement(sql);
	        ResultSet rs = pst.executeQuery();
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        while (rs.next()) {
	            int movie_code = rs.getInt("movie_code");
	            String movie_title = rs.getString("movie_title");
	            String movie_nation = rs.getString("movie_nation");
	            String movie_img = rs.getString("movie_img");
	            String movie_genre = rs.getString("movie_genre");
	            String movie_age = rs.getString("movie_age");
	            String movie_story = rs.getString("movie_story");
	            String movie_director = rs.getString("movie_director");
	            String movie_cast = rs.getString("movie_cast");
	            Date movie_date = rs.getDate("movie_date");
	            String movie_date_str = format.format(movie_date);
	            int movie_views = rs.getInt("movie_views");
	            String movie_company = rs.getString("movie_company");

	            Cornflix cornflix = new Cornflix(movie_code, movie_title, movie_nation, movie_img,
	            		movie_genre, movie_age, movie_story, movie_director, movie_cast,
	                    movie_date_str, movie_views, movie_company);
	            movies.add(cornflix);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return movies;
	}
	
	public static void main(String[] args) {
		
		CornflixDAO dao  = new CornflixDAO();
		 ArrayList<Cornflix> list = dao.viewTbl();
		 
		 for(  Cornflix  item: list) {
			 System.out.println( item);
		 }
		
	}
}

