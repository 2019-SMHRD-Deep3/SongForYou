package model;

import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MusicBucketDAO {
	private PreparedStatement psmt;
	private Connection conn;
	private ResultSet rs;
	
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public MusicDTO bucketlistjoin(int idnum) {
		
		System.out.println(idnum);
		
		
		return null;
	}
	
	
	  public int bucketlist(int idnum, String titlename){
	  
	  int cnt = 0; 
	 
	  
		try {
			getConnection();

			String sql = "insert into songbucket select t.songid, s.idnum " + "from songmember s, songtitle t\n"
					+ "where s.idnum=? and t.title=?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idnum);
			psmt.setString(2, titlename);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	  
		  return cnt;
		 
	  
	  }
	 
		
	}
	

