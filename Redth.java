package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Rdth;
import com.imp.Impl;

/**
 * Servlet implementation class Redth
 */
@WebServlet("/Redth")
public class Redth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Redth() {
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
		String name=request.getParameter("dname");
		System.out.println("Enter Your Name :"+name);
		
		String email=request.getParameter("demail");
		System.out.println("Enter You Email :"+email);
		
		String dthna=request.getParameter("dthname");
		System.out.println("Enter Your DTH Name :"+dthna);
		
		String cid=request.getParameter("id");
		System.out.println("Enter Your Customer Id :"+cid);
		
		String amou=request.getParameter("amount");
		System.out.println("Enter Your Amount :"+amou);
		
		Rdth rd=new Rdth();
		rd.setDuname(name);
		rd.setDuemail(email);
		rd.setRdthoper(dthna);
		rd.setRcustmerid(cid);
		rd.setAmount(amou);
		
		Inter de=new Impl();
		int dthre=de.rdth(rd);
		if(dthre==1)
		{
			response.sendRedirect("payment.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
