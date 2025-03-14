package com.guri.dto;

public class MemberVO {
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private int admin;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	public void setAdmin(String admin) {
		this.admin = Integer.valueOf(admin);
	}
	
	public MemberVO(String name, String userid, String pwd, String email, String phone, int admin) {
		this.name = name;
		this.userid = userid;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", email=" + email + ", phone="
				+ phone + ", admin=" + admin + "]";
	}
	
	
	

}
