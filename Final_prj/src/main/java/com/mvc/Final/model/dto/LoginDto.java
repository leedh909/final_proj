package com.mvc.Final.model.dto;

public class LoginDto {
	
	private int seq;
	private String id;
	private String pw;
	private String name;
	private String gender;
	private int age;
	private String email;
	private String phone;
	private String profile;
	private String role;
	
	public LoginDto() {
		super();
	}

	public LoginDto(int seq, String id, String pw, String name, String gender, int age, String email, String phone,
			String profile, String role) {
		super();
		this.seq = seq;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.email = email;
		this.phone = phone;
		this.profile = profile;
		this.role = role;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "LoginDto [seq=" + seq + ", id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + ", age="
				+ age + ", email=" + email + ", phone=" + phone + ", profile=" + profile + ", role=" + role + "]";
	}

	
	
	
	
	
	



	
	
}
