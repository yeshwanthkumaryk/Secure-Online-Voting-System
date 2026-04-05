package com.Evoting.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Evoting.model.Voter;
import com.Evoting.model.VoterLogin;
import com.Evoting.model.VoterPwdUpdate;
import com.Evoting.utility.DBConnection;

public class VoterDAO {
	
	Connection con = null;
	boolean status = false;
	
	public boolean insertVoter(Voter v) {
		try {
		DBConnection db = new DBConnection();
		con = db.getConnection();
		
		PreparedStatement ps = con.prepareStatement
				("insert into voters(voter_id, name, aadhaar_number, dob, password)values(?, ?, ?, ?, ?)");
		
		ps.setString(1, v.getVoterID());
		ps.setString(2, v.getName());
		ps.setString(3, v.getAadhaar());
		ps.setString(4, v.getDob());
		ps.setString(5, v.getPwd());
		
		int n = ps.executeUpdate();
		
		if(n > 0) {
			status = true;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean select(VoterLogin vl) {
		
		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from voters where voter_id = ? and password = ?");
			ps.setString(1, vl.getVoterID());
			ps.setString(2, vl.getPwd());
			
			int n = 0;
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				n++;
			}
			
			if(n > 0) {
				status = true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean update(VoterPwdUpdate pu) {
		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();
			
			PreparedStatement ps = con.prepareStatement("update voters set password = ? where voter_id = ?");
			ps.setString(1, pu.getPwd());
			ps.setString(2, pu.getVoterID());
			
			int n = ps.executeUpdate();
			
			if(n > 0) {
				status = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	

}
