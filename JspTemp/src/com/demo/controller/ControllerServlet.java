package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.model.LoginBean;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("login.jsp").forward(request, response);
		doGet(request, response);
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String name = "-", password = "-";
        name = request.getParameter("name");
        password = request.getParameter("password");
        
        if(name.equalsIgnoreCase("-"))
        {
        	name= "admin";
        }
        
        if(password.equalsIgnoreCase("-"))
        {
        	password = "admin";
        }
        
        
        
        LoginBean bean = new LoginBean();
        bean.setName(name);
        bean.setPassword(password);
        request.setAttribute("bean", bean);	//	set bean to the bean attribute
        
        boolean status = bean.validate();
        
        if(status)
        {
        	RequestDispatcher rd = request.getRequestDispatcher("login-success.jsp");
        	rd.forward(request, response);
        			
        }
        else
        {
        	RequestDispatcher rd = request.getRequestDispatcher("login-error.jsp");
        	rd.forward(request, response);
        }
	}

}
