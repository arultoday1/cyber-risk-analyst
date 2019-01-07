package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Int.Inter;
import com.bean.Bean;
import com.imp.Impl;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String cemail=request.getParameter("email");
		System.out.println("Select Your Email id :"+cemail);
		
		HttpSession session1=request.getSession();
		session1.setAttribute( "email",cemail);
		
		
		String pass=request.getParameter("pws");
		System.out.println("Select Your Password :"+pass);
		
		
		 Bean reg=new Bean();		
		 reg.setEmail(cemail);
		 reg.setPass(pass);
		 
		 Inter in=new Impl();		 
		 boolean i=in.num(reg);
		 if(i==true)
		 {
			 response.sendRedirect("problem.jsp");
		 }
		 else
		 {
			 response.sendRedirect("Error.jsp");
		 }
		
	}
}
