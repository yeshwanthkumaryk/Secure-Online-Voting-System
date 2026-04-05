package com.Evoting.model;

public class VoterLogin {
	
	private String voterID;
	private String pwd;
	
	public VoterLogin() {
		
	}
	
	public VoterLogin(String voterID, String pwd) {
		this.voterID = voterID;
		this.pwd = pwd;
	}
	
	public void setVoterID(String voterID) {
		this.voterID = voterID;
	}
	
	public String getVoterID() {
		return voterID;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	

}
