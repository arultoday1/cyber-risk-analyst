package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Int.Inter;
import com.bean.Bdth;
import com.imp.Impl;

/**
 * Servlet implementation class Dth
 */
@WebServlet("/Dth")
public class Dth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dth() {
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
		
		String duname=request.getParameter("dname");
		System.out.println("Enter Your Name :"+duname);
		
		String duemail=request.getParameter("demail");
		System.out.println("Enter Your Email :"+duemail);
		
		String service =request.getParameter("dthname");
		System.out.println("Enter Your Service :"+service);
		
		String cusid=request.getParameter("id");
		System.out.println("Enter Your Customerid :"+cusid);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem :"+prob);
		
		Bdth th=new Bdth();
		th.setDuname(duname);
		th.setDuemail(duemail);		
		th.setDthoper(service);
		th.setCustmerid(cusid);
		th.setProblem(prob);
		
				
		Inter d=new Impl();
		int e=d.dth(th);
		if(e==1)
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
