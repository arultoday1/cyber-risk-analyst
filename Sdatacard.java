package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Pdatacard;
import com.imp.Impl;

/**
 * Servlet implementation class Sdatacard
 */
@WebServlet("/Sdatacard")
public class Sdatacard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sdatacard() {
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
		
		String dadum=request.getParameter("ddnu");
		System.out.println("Enter Your DataCard Number: "+dadum);
		
		String ser=request.getParameter("serpr");
		System.out.println("Enter Your DataCard Name :"+ser);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem: "+prob);
		
		String ad=request.getParameter("aproblem");
		System.out.println("Admin Problem: "+ad);
		
		Pdatacard dd=new Pdatacard();
		dd.setDcuname(umname);
		dd.setDcuemail(umemail);
		dd.setDcnumber(dadum);
		dd.setDcname(ser);
		dd.setProblem(prob);
		dd.setAdmin(ad);
		
		Inter da=new Impl();
		int dada=da.dad(dd);
		if(dada==1)
		{
			response.sendRedirect("success.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
