package com.Evoting.model;

public class Voter {
	
	private String voterID;
	private String name;
	private String aadhaar;
	private String dob;
	private String pwd;
	
	public Voter() {
		
	}
	
	public Voter(String voterID, String name, String aadhaar, String dob, String pwd) {
		this.voterID = voterID;
		this.name = name;
		this.aadhaar = aadhaar;
		this.dob = dob;
		this.pwd = pwd;
	}

	public String getVoterID() {
		return voterID;
	}

	public void setVoterID(String voterID) {
		this.voterID = voterID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAadhaar() {
		return aadhaar;
	}

	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
