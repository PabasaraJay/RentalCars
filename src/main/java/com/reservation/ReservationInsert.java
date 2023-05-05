package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReservationInsert")
public class ReservationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String plocation = request.getParameter("plocation");
		String dlocation = request.getParameter("dlocation");
		String pdate = request.getParameter("pdate");
		String ddate = request.getParameter("ddate");
		String ptime = request.getParameter("ptime");
		String vtype = request.getParameter("vtype");
		String uid = request.getParameter("uid");
		
		RequestDispatcher dispatcher = null;
		
		if(plocation == null || plocation.equals("")) {
			request.setAttribute("status", "InvalidLocation");
			dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
			
			return;
		}
		
		if(dlocation == null || dlocation.equals("")) {
			request.setAttribute("status", "InvalidLocation");
			dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
			
			return;
		}
		
		boolean isTrue;
		
		isTrue = ReservationDBUtil.insertreservation(plocation, dlocation, pdate, ddate, ptime, vtype, uid);
		
		if(isTrue == true) {
			request.setAttribute("status", "success");
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
			
		}else {
			request.setAttribute("status", "failed");
			RequestDispatcher dis2 = request.getRequestDispatcher("home.jsp");
			dis2.forward(request, response);
		}
	}

}
