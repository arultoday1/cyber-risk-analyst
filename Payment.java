package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Bpayment;
import com.imp.Impl;

/**
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
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
		String nacar=request.getParameter("card");
		System.out.println("Enter Your Card Name :"+nacar);
		
		String cnum=request.getParameter("cnumber");
		System.out.println("Enter Your Card Number :"+cnum);
		
		String cvv=request.getParameter("cvv");
		System.out.println("Enter Your CVV :"+cvv);
		
		String exdate=request.getParameter("expdate");
		System.out.println("Enter Your Expiration Date :"+exdate);
		
		Bpayment pay=new Bpayment();
		pay.setNameca(nacar);
		pay.setCardnumb(cnum);
		pay.setCvv(cvv);
		pay.setExpidate(exdate);
		
		Inter pa=new Impl();
		int p=pa.payment(pay);
		if(p==1)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
