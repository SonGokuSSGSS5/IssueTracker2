package com.cts.model;

import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;

@Component
public class RegisterBean {
	
	@NotBlank
	private String fName;
	@NotBlank
	private String lName;
	private String dob;
	private String gender;
	@NotBlank
	private String contactNumber;
	@NotBlank
	private String userId;
	@NotBlank
	private String password;
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public RegisterBean(String fName, String lName, String dob, String gender, String contactNumber, String userId,
			String password) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.dob = dob;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.userId = userId;
		this.password = password;
	}
	
	public RegisterBean() {
		// TODO Auto-generated constructor stub
	}
	
}
