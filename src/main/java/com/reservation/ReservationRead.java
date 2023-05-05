package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/ReservationRead")
public class ReservationRead extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Reservation> resDetails = ReservationDBUtil.getReservationDetails();	//pass to the DBUtil from the jsp
		request.setAttribute("resDetails", resDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("reservation.jsp");
		dis.forward(request, response);
		
	}

}
