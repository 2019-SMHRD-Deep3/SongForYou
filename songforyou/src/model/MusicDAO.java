package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MusicDAO {
	
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

	public ArrayList<MusicDTO> MusicChk(String title) {
	
		ArrayList<MusicDTO> list = new ArrayList<MusicDTO>();
		MusicDTO info = null;
		
		String l_singer = null;
		String l_title = null;
		String l_img = null;
		
		try {
			getConnection();
			
			String sql = "select * from songtitle where title like '%'||?||'%'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, title);
			rs = psmt.executeQuery();

			while(rs.next()) {
				// rs.getString("id");
				l_title = rs.getString(2);
				l_singer = rs.getString(4);
				l_img = rs.getString(5);
			
			
				info = new MusicDTO(l_singer,l_title,l_img);  
				list.add(info);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();

		}
		
		return list;
	}
	
	public MusicDTO song() {
		MusicDTO dto = null;
		
		
		
		
		
		
		
		
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
