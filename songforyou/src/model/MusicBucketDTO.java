package model;

public class MusicBucketDTO {
	
	private int idnum;
	private int songid;
	
	public MusicBucketDTO(int songid, int idnum) {
		this.idnum = idnum;
		this.songid = songid;
	}

	public int getIdnum() {
		return idnum;
	}

	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}

	public int getSongid() {
		return songid;
	}

	public void setSongid(int songid) {
		this.songid = songid;
	}
	
	
}
