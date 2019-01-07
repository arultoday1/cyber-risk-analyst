package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Int.Inter;
import com.bean.Rlandline;
import com.imp.Impl;

/**
 * Servlet implementation class Blindline
 */
@WebServlet("/Blindline")
public class Blindline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Blindline() {
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
		
		String name=request.getParameter("luname");
		System.out.println("Enter Your Name :"+name);
		
		String email=request.getParameter("luemail");
		System.out.println("Enter Your Email :"+email);
		
		String llname=request.getParameter("blandline");
		System.out.println("Enter Your LandLine Name :"+llname);
		
		String llnum=request.getParameter("blandnum");
		System.out.println("Enter Your LandLine Number :"+llnum);
		
		String bill=request.getParameter("amount");
		System.out.println("Enter Your Bil Amount :"+bill);
		
		Rlandline rll=new Rlandline();
		rll.setLuname(name);
		rll.setLuemail(email);
		rll.setBllname(llname);
		rll.setBllnumber(llnum);
		rll.setBill(bill);
		
		Inter bll=new  Impl();
		int llb=bll.blali(rll);
		if(llb==1)
		{
			response.sendRedirect("payment.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
