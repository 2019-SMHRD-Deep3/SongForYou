package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MusicResultDAO {

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

	public String searchR(MusicDTO dto) {
		
		MusicDTO info = dto;

		String l_result = null;
		System.out.println(info.gettitle());
		System.out.println(info.getSinger());
		try {
			getConnection();

			String sql = "select * from SONGRESULT where title = ? AND singer = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, info.gettitle());
			psmt.setString(2, info.getSinger());
			rs = psmt.executeQuery();
		
			if (rs.next()) { // rs.getString("id"); l_title = rs.getString(2); l_singer =
				l_result = rs.getString(3);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		 
		
		return l_result;
	}
	
	
	
}
