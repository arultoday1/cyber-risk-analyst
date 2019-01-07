package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Int.Inter;
import com.bean.Bmobile;
import com.imp.Impl;

/**
 * Servlet implementation class Mobile
 */
@WebServlet("/Mobile")
public class Mobile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mobile() {
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
		
		
		String umname=request.getParameter("mname");
		System.out.println("Enter Your Name: "+umname);
		
		String umemail=request.getParameter("memail");
		System.out.println("Enter Your Email: "+umemail);
		
		String simtype=request.getParameter("sim");
		System.out.println("Enter Your Sim Type:" +simtype);
		
		String mobile=request.getParameter("mob");
		System.out.println("Enter Your Mobile Number: "+mobile);
		
		String simn=request.getParameter("simname");
		System.out.println("Enter Your SimName: "+simn);
		
		String area=request.getParameter("circle");
		System.out.println("Enter Your Area: "+area);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem: "+prob);
		
		
		Bmobile mobi=new Bmobile();
		mobi.setMuname(umname);
		mobi.setMumail(umemail);
		mobi.setSimtype(simtype);
		mobi.setMobilenu(mobile);
		mobi.setSimename(simn);
		mobi.setCircle(area);
		mobi.setProblem(prob);
		
		Inter m=new Impl();
		int n=m.mobile(mobi);
		if(n==1)
		{
			
			JOptionPane.showMessageDialog(null, "Your Query Send To Admin Successfully");
						
			response.sendRedirect("problem.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
