package dbcourt.dao;
import java.text.*;
import java.util.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

import dbcourt.connection.ConnectionManager;
import dbcourt.model.BookingBean;

public class BookingDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;  
   static PreparedStatement ps=null;
   static String custic,book_id,booking_date,starttime,endtime;
   static int staffid;
   static Statement stmt=null;
	
	
   
   public void deleteBooking(String custic) {
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	ps=currentCon.prepareStatement("delete from booking join courtbooking on(booking.custic=courtbooking.custic) where custic=?");
	        ps.setString(1,custic);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
   
   public static List<BookingBean> getAllBooking() {
	    List<BookingBean> bookings = new ArrayList<BookingBean>();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	stmt = currentCon.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from booking join courtbooking on(booking.custic = courtbooking.custic)order by booking.book_id");
	        
	        while (rs.next()) {
	            BookingBean booking = new BookingBean();
	            booking.setCustic(rs.getString("custic"));
	            booking.setBook_id(rs.getString("book_id"));
	            booking.setBooking_date(rs.getString("booking_date"));
	            booking.setStarttime(rs.getString("starttime"));
	            booking.setEndtime(rs.getString("endtime"));
	            booking.setStaffid(rs.getInt("staffid"));
	            booking.setCourtid(rs.getInt("courtid"));
	            bookings.add(booking);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return bookings;
	}
   public BookingBean getBookingById(String custic) {
		BookingBean booking = new BookingBean();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	        ps=currentCon.prepareStatement("select * from booking join courtbooking on(booking.custic = courtbooking) where custic=?");
	        
	        ps.setString(1, custic);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {	            
	        	booking.setCustic(rs.getString("custic"));
	            booking.setBook_id(rs.getString("book_id"));
	            booking.setBooking_date(rs.getString("booking_date"));
	            booking.setStarttime(rs.getString("starttime"));
	            booking.setEndtime(rs.getString("endtime"));
	            booking.setStaffid(rs.getInt("staffid"));
	            booking.setCourtid(rs.getInt("courtid"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return booking;
	}
}