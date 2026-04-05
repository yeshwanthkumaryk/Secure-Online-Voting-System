package com.Evoting.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Evoting.dao.VoterDAO;
import com.Evoting.model.Voter;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	boolean status = false;
       

    public RegisterController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("method started");
		
		String voterID = request.getParameter("voterID");
		String name = request.getParameter("name");
		String aadhaar = request.getParameter("aadhaar");
		String dob = request.getParameter("dob");
		String pwd = request.getParameter("pwd");
		
		Voter v = new Voter();
		v.setVoterID(voterID);
		v.setName(name);
		v.setAadhaar(aadhaar);
		v.setDob(dob);
		v.setPwd(pwd);
		
		VoterDAO vd = new VoterDAO();
		status = vd.insertVoter(v);
			
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);
		}
		
		System.out.println("method ended");
	}

}
