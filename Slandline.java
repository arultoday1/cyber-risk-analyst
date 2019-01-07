package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Plandline;
import com.imp.Impl;

/**
 * Servlet implementation class Slandline
 */
@WebServlet("/Slandline")
public class Slandline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Slandline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String umname=request.getParameter("uname");
		System.out.println("Enter Your Name: "+umname);
		
		String umemail=request.getParameter("umemail");
		System.out.println("Enter Your Email: "+umemail);
		
		String llnum=request.getParameter("llum");
		System.out.println("Enter Your LandLine Number :"+llnum);
		
		String ser=request.getParameter("serv");
		System.out.println("Enter Your Service Provider: "+ser);		
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem: "+prob);
		
		String ad=request.getParameter("aproblem");
		System.out.println("Admin Problem: "+ad);
		
		Plandline lli=new Plandline();
		lli.setLuname(umname);
		lli.setLuemail(umemail);
		lli.setLlnumber(llnum);
		lli.setLlname(ser);
		lli.setProblem(prob);
		lli.setAdmin(ad);
		
		Inter ill=new Impl();
		int l=ill.lali(lli);
		if(l==1)
		{
			response.sendRedirect("success.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
