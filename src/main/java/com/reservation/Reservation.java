package com.reservation;

public class Reservation {
	private int resid;
	private String plocation;
	private String dlocation;
	private String pdate;
	private String ddate;
	private String ptime;
	private String vtype;
	private String uid;
	
	public Reservation(int resid, String plocation, String dlocation, String pdate, String ddate, String ptime,
			String vtype, String uid) {
		
		this.resid = resid;
		this.plocation = plocation;
		this.dlocation = dlocation;
		this.pdate = pdate;
		this.ddate = ddate;
		this.ptime = ptime;
		this.vtype = vtype;
		this.uid = uid;
	}

	public int getResid() {
		return resid;
	}

	public String getPlocation() {
		return plocation;
	}

	public String getDlocation() {
		return dlocation;
	}

	public String getPdate() {
		return pdate;
	}

	public String getDdate() {
		return ddate;
	}

	public String getPtime() {
		return ptime;
	}

	public String getVtype() {
		return vtype;
	}

	public String getUid() {
		return uid;
	}

	public void setResid(int resid) {
		this.resid = resid;
	}

	public void setPlocation(String plocation) {
		this.plocation = plocation;
	}

	public void setDlocation(String dlocation) {
		this.dlocation = dlocation;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public void setDdate(String ddate) {
		this.ddate = ddate;
	}

	public void setPtime(String ptime) {
		this.ptime = ptime;
	}

	public void setVtype(String vtype) {
		this.vtype = vtype;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	
	
	
}
