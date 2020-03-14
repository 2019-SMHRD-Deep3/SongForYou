package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private String id;
	private String pw;
	private int sex;
	private int age;
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

	public int Join(MemberDTO dto) {
		int cnt = 0;


		try {
			getConnection();

			String sql = "insert into songmember values(id_seq.nextval,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setInt(4, dto.getAge());
			psmt.setInt(5, dto.getSex());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		try {
			getConnection();
			String sql = "select * from songmember where id=? and pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			if (rs.next()) {
				String id1 = rs.getString(2);
				String name1 = rs.getString(4);
				int idnum1 = rs.getInt(1);
				int age1 = rs.getInt(5);
				int sex1 = rs.getInt(6);

				info = new MemberDTO(id1, name1, idnum1, age1, sex1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return info;
	}

	public int update(MemberDTO dto) {
		int cnt= 0;
		try {
			getConnection();
			String sql = "update songmember set pw = ?,age=?,sex=? where id=? ";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, dto.getPw());
			psmt.setInt(2, dto.getAge());
			psmt.setInt(3, dto.getSex());
			psmt.setString(4, dto.getId());
			cnt=psmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public int checkId(String id2) {
		
		int cnt = 0;
		
		try {
			getConnection();
			String sql = "select * from songmember where id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id2);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				cnt = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		
		
		return cnt;
		
	}
}
