package com.reservation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReservationDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;

	
	public static boolean insertreservation(String plocation,String dlocation,String pdate,String ddate,String ptime,String vtype,String uid) {
		
		 isSuccess= false;
		
	
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into reservation values(0,'"+plocation+"','"+dlocation+"','"+pdate+"','"+ddate+"','"+ptime+"','"+vtype+"','"+uid+"' )";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<Reservation> getReservationDetails(){
		
		ArrayList<Reservation> res = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from reservation";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int resid = rs.getInt(1);
				String plocation = rs.getString(2);
				String dlocation = rs.getString(3);
				String pdate = rs.getString(4);
				String ddate = rs.getString(5);
				String ptime = rs.getString(6);
				String vtype = rs.getString(7);
				String uid = rs.getString(8);
				
				Reservation re = new Reservation(resid,plocation,dlocation,pdate,ddate,ptime,vtype,uid);
				res.add(re);	
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Database connection error...");
		}
		return res;
	}
	//update 
		public static boolean updateReservation(String resid, String plocation, String dlocation, String pdate, String ddate, String ptime, String vtype,String uid) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update reservation set plocation = '"+plocation+"', dlocation = '"+dlocation+"', pdate = '"+pdate+"', ddate = '"+ddate+"', ptime = '"+ptime+"', vtype = '"+vtype+"',uid = '"+uid+"'"
				+ "where resid = '"+resid+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		
		public static List<Reservation> showdetails(String reserveid){
			
			int convertedID = Integer.parseInt(reserveid);
			
			ArrayList<Reservation> res = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from reservation where resid='"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int resid = rs.getInt(1);
					String plocation = rs.getString(2);
					String dlocation = rs.getString(3);
					String pdate = rs.getString(4);
					String ddate = rs.getString(5);
					String ptime = rs.getString(6);
					String vtype = rs.getString(7);
					String uid = rs.getString(8);
					
					Reservation re = new Reservation(resid,plocation,dlocation,pdate,ddate,ptime,vtype,uid);
					res.add(re);	
				}
			}
			catch(Exception e) {
				e.printStackTrace();
				System.out.println("Database connection error...");
			}
			return res;
		}
//delete
		
		public static boolean deletereservation(String reservationID) {
			int convId = Integer.parseInt(reservationID); //integer is wraps class
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from reservation where resid ='"+convId+"'";
				int r = stmt.executeUpdate(sql);
				
				if(r>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
}

