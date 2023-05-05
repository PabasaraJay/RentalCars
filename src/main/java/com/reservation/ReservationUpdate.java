package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReservationUpdate")
public class ReservationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String resid = request.getParameter("resid");
	      String plocation = request.getParameter("plocation");
	      String dlocation = request.getParameter("dlocation");
	      String pdate = request.getParameter("pdate");
	      String ddate = request.getParameter("ddate");
	      String ptime = request.getParameter("ptime");
	      String vtype = request.getParameter("vtype");
	      String uid = request.getParameter("uid");
	      
	      boolean isTrue;
	      
	      isTrue = ReservationDBUtil.updateReservation(resid,plocation, dlocation, pdate, ddate, ptime, vtype, uid);
	      
	      if(isTrue == true) {
	    	  
	    	  List<Reservation> resDetails = ReservationDBUtil.getReservationDetails();
	    	  request.setAttribute("resDetails", resDetails);
	    	  
	    	  request.setAttribute("status", "recordupdated");
	    	  RequestDispatcher dis = request.getRequestDispatcher("reservationupdate.jsp");
	    	  dis.forward(request,  response);
	      }
	      else {
	    	  RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
	    	  dis.forward(request,  response);
	      }
	}


}
