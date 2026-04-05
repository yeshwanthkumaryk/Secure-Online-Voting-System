package com.Evoting.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.Evoting.dao.VoterDAO;
import com.Evoting.model.VoterLogin;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String voterID = request.getParameter("voterID");
		String pwd = request.getParameter("pwd");
		
		VoterLogin vl = new VoterLogin();
		vl.setVoterID(voterID);
		vl.setPwd(pwd);
		
		VoterDAO vd = new VoterDAO();
		boolean status = vd.select(vl);
		
		if(status) {
			if(voterID.equals("admin") && pwd.equals("admin")) {
				RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
				rd.forward(request, response);
				return;
			}
			else {
			HttpSession s = request.getSession();
			s.setAttribute("voterID", voterID);
			
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		
	}

}
