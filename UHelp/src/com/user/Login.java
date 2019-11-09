package com.user;

public class Login {
	private int id;
	private String uname;
	private String pwd;
	
	public Login() {
	}
	
	public Login(String uname, String pwd) {
		
		this.uname = uname;
		this.pwd = pwd;
	}

	public Login(int id, String uname, String pwd) {
		
		this.id= id;
		this.uname = uname;
		this.pwd = pwd;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
