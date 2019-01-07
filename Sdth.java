package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Pdth;
import com.imp.Impl;

/**
 * Servlet implementation class Sdth
 */
@WebServlet("/Sdth")
public class Sdth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sdth() {
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
		
		String umname=request.getParameter("cname");
		System.out.println("Enter Your Name: "+umname);
		
		String umemail=request.getParameter("cemail");
		System.out.println("Enter Your Email: "+umemail);
		
		String serv=request.getParameter("ser");
		System.out.println("Enter Your Service Provider: "+serv);
		
		String custid=request.getParameter("cid");
		System.out.println("Enter Your CustomerId :"+custid);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem: "+prob);
		
		String ad=request.getParameter("aproblem");
		System.out.println("Admin Problem: "+ad);
		
		Pdth dt=new Pdth();
		dt.setDuname(umname);
		dt.setDuemail(umemail);
		dt.setDthoper(serv);
		dt.setCustmerid(custid);
		dt.setProblem(prob);
		dt.setAdmin(ad);
		
		Inter pd=new Impl();
		int dp=pd.tdh(dt);
		if(dp==1)
		{
			response.sendRedirect("success.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
