package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.Int.Inter;
import com.bean.Pmobile;
import com.imp.Impl;

/**
 * Servlet implementation class Smobile
 */
@WebServlet("/Smobile")
public class Smobile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Smobile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String umname=request.getParameter("cname");
		System.out.println("Enter Your Name: "+umname);
		
		String umemail=request.getParameter("cemail");
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
		
		String ad=request.getParameter("aproblem");
		System.out.println("Admin Problem: "+ad);
		
	Pmobile me=new Pmobile();
	me.setMuname(umname);
	me.setMumail(umemail);
	me.setSimtype(simtype);
	me.setMobilenu(mobile);
	me.setSimename(simn);
	me.setCircle(area);
	me.setProblem(prob);
	me.setAdmin(ad);
	
	Inter pm=new Impl();
	int mp=pm.mob(me);
	if(mp==1)
	{
		response.sendRedirect("success.jsp");
	}
	else
	{
		response.sendRedirect("error.jsp");
	}
	
	}
	
	}

