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

	public int bucketlist(int idnum, String titlename) {

		int cnt = 0;
		
		System.out.println(idnum);
		System.out.println(titlename);
		
		try {
			getConnection();

			String sql = "insert into songbucket values (bucketid_seq.nextval, (select songid from songtitle where title=?),(select idnum from songmember where idnum=?))";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, titlename);
			psmt.setInt(2, idnum);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		

		return cnt;

	}

	public ArrayList<MusicBucketDTO> songid(int f) {
		ArrayList<MusicBucketDTO> songid = new ArrayList<>();
		System.out.println(f);
		MusicBucketDTO dto = null;

		int l_songid = 0;
		int l_idnum = f;
		int l_bucketid = 0;

		try {
			getConnection();
			String sql = "select bucketid, songid from songbucket where idnum= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, f);
			rs = psmt.executeQuery();

			while (rs.next()) {
				l_bucketid = rs.getInt(1);
				l_songid = rs.getInt(2);

				dto = new MusicBucketDTO(l_bucketid, l_songid, l_idnum);
				songid.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		System.out.println(l_bucketid+"fff");
		System.out.println(l_songid+"hi");
	

		/*
		 * System.out.println(songid.get(0).getSongid());
		 * System.out.println(songid.get(1).getSongid());
		 * System.out.println(songid.get(2).getSongid());
		 */

		return songid;
	}

	public ArrayList<MusicDTO> alltitle(ArrayList<MusicBucketDTO> songid) {

		/* System.out.println(songid.get(0).getSongid()); */

		ArrayList<MusicDTO> list = new ArrayList<MusicDTO>();
		MusicDTO dto = null;

		String l_title = null;
		String l_singer = null;
		String l_img = null;

		try {
			getConnection();
			String sql = "select title,singer,img from songtitle where songid= ?";
			psmt = conn.prepareStatement(sql);

			for (int i = 0; i < songid.size(); i++) {
				psmt.setInt(1, songid.get(i).getSongid());
				rs = psmt.executeQuery();
				if (rs.next()) {
					System.out.println("�ڡڡڡڡ�");
					l_title = rs.getString(1);
					l_singer = rs.getString(2);
					l_img = rs.getString(3);

					dto = new MusicDTO(l_singer, l_title, l_img);
					list.add(dto);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	/*
	 * public void delete() {
	 * 
	 * try { getConnection(); String sql =
	 * "delete from songbucket where songid = ?"; psmt = conn.prepareStatement(sql);
	 * psmt.setString(1, ); psmt.executeUpdate(); } catch (SQLException e) {
	 * e.printStackTrace(); } finally { close(); }
	 * 
	 * }
	 */

	/*
	 * public MusicDTO mylist(MusicBucketDTO dto) { MusicDTO music = null;
	 * 
	 * try { getConnection(); String sql =
	 * "select t.singer, t.title, t.img from songbucket b, songtitle t where b.songid=t.songid and b.songid=?"
	 * ; psmt = conn.prepareStatement(sql); psmt.setString(1, 1); rs =
	 * psmt.executeQuery();
	 * 
	 * if (rs.next()) { String singer = rs.getString(4); String title =
	 * rs.getString(2); String img = rs.getString(5);
	 * 
	 * music = new MusicDTO(singer, title, img); } } catch (SQLException e) {
	 * e.printStackTrace(); } finally { close(); }
	 * 
	 * return music; }
	 */

}
