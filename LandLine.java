package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.Int.Inter;
import com.bean.Blandline;
import com.imp.Impl;

/**
 * Servlet implementation class LandLine
 */
@WebServlet("/LandLine")
public class LandLine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LandLine() {
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
		
		String lname=request.getParameter("luname");
		System.out.println("Enter Your Name :"+lname);
		
		String lemail=request.getParameter("luemail");
		System.out.println("Enter Your Email :"+lemail);
		
		String llname=request.getParameter("landline");
		System.out.println("Enter Your LandLine Name :"+llname);
		
		String llnumber=request.getParameter("landnum");
		System.out.println("Enter your LandLine Number :"+llnumber);
		
		String prob=request.getParameter("problem");
		System.out.println("Enter Your Problem :"+prob);
		
		Blandline ll=new Blandline();
		ll.setLuname(lname);
		ll.setLuemail(lemail);
		ll.setLlname(llname);
		ll.setLlnumber(llnumber);
		ll.setProblem(prob);
		
		Inter l=new Impl();
		int a=l.landline(ll);
		if(a==1)
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
