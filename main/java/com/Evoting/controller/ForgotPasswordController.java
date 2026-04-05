package com.Evoting.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Evoting.dao.VoterDAO;
import com.Evoting.model.VoterPwdUpdate;


@WebServlet("/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ForgotPasswordController() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String voterID = request.getParameter("voterID");
		String pwd = request.getParameter("pwd");
		
		VoterPwdUpdate pu = new VoterPwdUpdate();
		pu.setVoterID(voterID);
		pu.setPwd(pwd);
		
		VoterDAO vd = new VoterDAO();
		boolean status = vd.update(pu);
		
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("ForgotPassword.jsp");
			rd.forward(request, response);
			
		}
	}

}
