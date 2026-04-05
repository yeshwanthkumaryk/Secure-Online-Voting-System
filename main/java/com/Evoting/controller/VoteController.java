package com.Evoting.controller;

//import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

import com.Evoting.utility.DBConnection;


@WebServlet("/VoteController")
public class VoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public VoteController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			String voterID = (String) session.getAttribute("voterID");
			
			String symbol = request.getParameter("symbol");
			
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			
//			PreparedStatement ps = con.prepareStatement("select has_voted from voters where voter_id = ?");
//			ps.setString(1, voterID);
//			ResultSet rs = ps.executeQuery();
//			if(rs.next() && rs.getBoolean("has_voted")) {
//				response.sendRedirect("Duplicate.jsp");
//				return;
//			}
			
			PreparedStatement ps1 = con.prepareStatement("insert into votes(voter_id, symbol) values(?, ?)");
			
			ps1.setString(1, voterID);
			ps1.setString(2, symbol);
			ps1.executeUpdate();
			
			PreparedStatement ps2 = con.prepareStatement("update candidates set votes = votes + 1 where symbol = ?");
			ps2.setString(1, symbol);
			ps2.executeUpdate();
			
			PreparedStatement ps3 = con.prepareStatement("update voters set has_voted = true where voter_id = ?");
			ps3.setString(1, voterID);
			ps3.executeUpdate();
			
			session.invalidate();
			
			response.sendRedirect("Success.jsp");
			
		}
		catch(java.sql.SQLIntegrityConstraintViolationException e) {
			response.sendRedirect("Duplicate.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
	}

}
