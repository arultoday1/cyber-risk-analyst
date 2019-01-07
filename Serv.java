package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Bean;
import com.imp.Impl;

/**
 * Servlet implementation class Serv
 */
@WebServlet("/Serv")
public class Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serv() {
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
		
		String name=request.getParameter("fname");
		System.out.println("Enter Your Fullname: "+name);
		
		String email=request.getParameter("cemail");
		System.out.println("Enter Your Email: "+email);
		
		String pass=request.getParameter("pass");
		System.out.println("Enter Your Password: "+pass);
		
		String mobile=request.getParameter("mob");
		System.out.println("Enter Your Mobile Number: "+mobile);
		
		 Bean reg=new Bean();
		 reg.setName(name);
		 reg.setEmail(email);
		 reg.setPass(pass);
		 reg.setMobi(mobile);
		 
		 Inter i=new Impl();
		 int j=i.regis(reg);
		 if(j==1)
		 {
			 response.sendRedirect("login.jsp");
		 }
		 else
		 {
			 response.sendRedirect("Error");
		 }
	}

}
