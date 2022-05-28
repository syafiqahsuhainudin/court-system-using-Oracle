package dbcourt.model;

public class BookingBean {
	String custic;
	String book_id;
	String booking_date;
	String starttime,endtime;
	int staffid,courtid;
	

	public int getCourtid() {
		return courtid;
	}
	public void setCourtid(int courtid) {
		this.courtid = courtid;
	}
	public String getCustic() {
		return custic;
	}
	public void setCustic(String custic) {
		this.custic = custic;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public int getStaffid() {
		return staffid;
	}
	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}
}
