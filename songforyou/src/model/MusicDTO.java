package model;

public class MusicDTO {

	private int num;
	private String singer;
	private String title;
	private String chord;
	private String img;
	
	public MusicDTO(String singer, String title) {
	
		this.singer = singer;
		this.title = title;
	}
	
	
	public MusicDTO(int num, String singer, String title, String chord) {
		this.num = num;
		this.singer = singer;
		this.title = title;
		this.chord = chord;
	}
	
	
	public MusicDTO(String singer, String title, String img) {
		this.singer = singer;
		this.title = title;
		this.img = img;
	}


	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String gettitle() {
		return title;
	}
	public void setSongtitle(String title) {
		this.title = title;
	}
	public String getChord() {
		return chord;
	}
	public void setChord(String chord) {
		this.chord = chord;
	}
	
	public String getimg() {
		return img;
	}
	
	public void setimg(String img) {
		this.img = img;
		
	}
	
	
	
}
