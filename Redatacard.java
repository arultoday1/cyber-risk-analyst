package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Rdatacard;
import com.imp.Impl;

/**
 * Servlet implementation class Redatacard
 */
@WebServlet("/Redatacard")
public class Redatacard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Redatacard() {
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
		
		String name=request.getParameter("dcuname");
		System.out.println("Enter Your Name :"+name);
		
		String email=request.getParameter("dcuemail");
		System.out.println("Enter Your Email :"+email);
		
		String rdcardnu=request.getParameter("rdcard");
		System.out.println("Enter Your DataCard Number :"+rdcardnu);
		
		String rdcname=request.getParameter("rdcname");
		System.out.println("Enter Your DataCard Name :"+rdcname);
		
		String amou=request.getParameter("amount");
		System.out.println("Enter Your Amount :"+amou);
		
		Rdatacard rdc=new Rdatacard();
		rdc.setRdcname(name);
		rdc.setDcuemail(email);		
		rdc.setRdcnumber(rdcardnu);
		rdc.setDcuname(rdcname);
		rdc.setAmount(amou);
		
		Inter rd=new Impl();
		int dr=rd.rdaca(rdc);
		if(dr==1)
		{
			response.sendRedirect("payment.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
