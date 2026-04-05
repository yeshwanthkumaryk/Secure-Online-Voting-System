package com.Evoting.model;

public class VoterPwdUpdate {
	
	private String voterID;
	private String pwd;
	
	public VoterPwdUpdate() {
		
	}

	public VoterPwdUpdate(String voterID, String pwd) {
		super();
		this.voterID = voterID;
		this.pwd = pwd;
	}

	public String getVoterID() {
		return voterID;
	}

	public void setVoterID(String voterID) {
		this.voterID = voterID;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
