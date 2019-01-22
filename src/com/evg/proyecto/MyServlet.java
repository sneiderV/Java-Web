package com.evg.proyecto;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Ingresamos al m�todo GET de mi Servlet");
		System.out.println("var1 "+request.getParameter("var1"));
		System.out.println("var2 "+request.getParameter("var2"));
		System.out.println("var3 "+request.getParameter("var3"));
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Ingresamos al m�todo POST de mi Servlet");
		System.out.println("nombre: "+request.getParameter("nombre"));
		
		//doGet(request, response);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/presentacion.jsp");
		rd.forward(request, response);
	}

}
