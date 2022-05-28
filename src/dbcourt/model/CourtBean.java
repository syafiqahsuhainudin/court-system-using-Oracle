package dbcourt.model;

import java.io.Serializable;


public class CourtBean implements Serializable{
	
	private int courtid;
	private String courttype;
	private int courtprice;
	private String courtequipment;
	private String courtroom;
	
	public int getCourtid() {
		return courtid;
	}
	public void setCourtid(int courtid) {
		this.courtid = courtid;
	}
	public String getCourttype() {
		return courttype;
	}
	public void setCourttype(String courttype) {
		this.courttype = courttype;
	}
	public int getCourtprice() {
		return courtprice;
	}
	public void setCourtprice(int courtprice) {
		this.courtprice = courtprice;
	}
	public String getCourtequipment() {
		return courtequipment;
	}
	public void setCourtequipment(String courtequipment) {
		this.courtequipment = courtequipment;
	}
	public String getCourtroom() {
		return courtroom;
	}
	public void setCourtroom(String courtroom) {
		this.courtroom = courtroom;
	}
}
