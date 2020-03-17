package model;

public class MusicBucketDTO {
	
	private int idnum;
	private int songid;
	private int bucketid;
	
	public MusicBucketDTO(int bucketid, int songid, int idnum) {
	
		this.bucketid = bucketid;
		this.songid = songid;
		this.idnum = idnum;
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
	public int getBucketid() {
		return bucketid;
	}
	public void setBucketid(int bucketid) {
		this.bucketid = bucketid;
	}
	
	
	
	
	
}
