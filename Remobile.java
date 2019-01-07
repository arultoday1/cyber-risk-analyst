package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Rmobile;
import com.imp.Impl;

/**
 * Servlet implementation class Remobile
 */
@WebServlet("/Remobile")
public class Remobile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Remobile() {
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
		
		String name=request.getParameter("mname");
		System.out.println("Enter Your Name :"+name);
		
		String email=request.getParameter("memail");
		System.out.println("Enter Your Email :"+email);
		
		String rsimt=request.getParameter("rsim");
		System.out.println("Enter Your Simtype :"+rsimt);
		
		String rnum=request.getParameter("rmob");
		System.out.println("Enter Your Recharge Number :"+rnum);
		
		String rsimna=request.getParameter("simname");
		System.out.println("Enter Your SimName :"+rsimna);
		
		String area=request.getParameter("rcircle");
		System.out.println("Enter Your area :"+area);
		
		String amou=request.getParameter("amount");
		System.out.println("Enter the Amount :"+amou);
		
		Rmobile rm=new Rmobile();
		rm.setMuname(name);
		rm.setMumail(email);
		rm.setRsimtype(rsimt);
		rm.setRsimename(rsimna);
		rm.setRmobilenu(rnum);
		rm.setRcircle(area);		
		rm.setAmount(amou);
		
		Inter re=new Impl();
		int rem=re.rmob(rm);
		if(rem==1)
		{
			response.sendRedirect("payment.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
