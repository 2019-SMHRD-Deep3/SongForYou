package model;

public class MemberDTO {
private int idnum;
private String id;
private String pw;
private String name;
private int age;
private int sex;



public MemberDTO(String id, String name, int idnum,int age, int sex) {

	this.idnum = idnum;
	this.id = id;
	this.name = name;
	this.age = age;
	this.sex = sex;
}
public MemberDTO(String id, String pw) {
	this.id = id;
	this.pw = pw;
}
public MemberDTO(String id, String name, int age, int sex) {
	this.id = id;
	this.name = name;
	this.age = age;
	this.sex = sex;
}
public MemberDTO(String id, String pw, String name, int age, int sex) {
	this.id = id;
	this.pw = pw;
	this.name = name;
	this.age = age;
	this.sex = sex;
}
public int getIdnum() {
	return idnum;
}
public void setIdnum(int idnum) {
	this.idnum = idnum;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}


}
