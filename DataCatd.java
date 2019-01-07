package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Int.Inter;
import com.bean.Bdatacard;
import com.imp.Impl;

/**
 * Servlet implementation class DataCatd
 */
@WebServlet("/DataCatd")
public class DataCatd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataCatd() {
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
		
		String duname=request.getParameter("dcuname");
		System.out.println("Enter Your Name :"+duname);
		
		String duemail=request.getParameter("dcuemail");
		System.out.println("Enter Your Email :"+duemail);
		
		String dcnumber=request.getParameter("dcard");
		System.out.println("Enter Your DataCard Number :"+dcnumber);
		
		String dcname=request.getParameter("dcname");
		System.out.println("Enter Your DataCard Name :"+dcname);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem :"+prob);
		
		Bdatacard dc=new Bdatacard();
		dc.setDcuname(duname);
		dc.setDcuemail(duemail);
		dc.setDcnumber(dcnumber);
		dc.setDcname(dcname);
		dc.setProblem(prob);
		
		Inter cd = new Impl();
		int c=cd.datacard(dc);
		if(c==1)
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
