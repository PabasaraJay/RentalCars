package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReservationDelete")
public class ReservationDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resid = request.getParameter("resid");
		boolean isTrue;
		
		isTrue = ReservationDBUtil.deletereservation(resid);
		
		if(isTrue == true) {
			List<Reservation> resDelete = ReservationDBUtil.getReservationDetails();
			
			request.setAttribute("resDelete", resDelete);
			
			request.setAttribute("status", "recorddeleted");
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminhome.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
