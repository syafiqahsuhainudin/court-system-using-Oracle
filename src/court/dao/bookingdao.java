
package court.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.court.ConnectionManager;

import court.model.bookingbean;

public class bookingdao {
	

	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;
	
	
	
	String  custic,book_id,booking_date,starttime,endtime;
	
	
	
	public void add(bookingbean bean){
		custic = bean.getCustic();
		book_id = bean.getBook_id();
		booking_date = bean.getBooking_date();
		starttime = bean.getStarttime();
		endtime = bean.getEndtime();
		
		
		
		try {
			currentCon = ConnectionManager.getConnection();
			ps=currentCon.prepareStatement("insert into booking(custic,booking_date,starttime,endtime)values(?,?,?,?)");
			ps.setString(1,custic);
			ps.setString(2,booking_date);
			ps.setString(3,starttime);
			ps.setString(4,endtime);
		
			ps.executeUpdate();
		}
		catch (Exception ex) {
			System.out.println("failed: An Exception has occurred! " + ex);
		}
		finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
				}
				ps = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}
				currentCon = null;
			}
		}
		}
	
	public void deleteBooking(String book_id) {
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	ps=currentCon.prepareStatement("delete from booking where book_id=?");
	        ps.setString(1, book_id);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public void updateBooking(bookingbean bean) {

		book_id = bean.getBook_id();
		custic = bean.getCustic();
		booking_date = bean.getBooking_date();
		starttime = bean.getStarttime();
		endtime = bean.getEndtime();
		
		
		String searchQuery = "UPDATE booking SET custic = '" +custic + "', booking_date='" + booking_date+ "', starttime='" +starttime + "', endtime='" +endtime + "' WHERE book_id= '" + book_id + "'";
		
		try {

	        currentCon = ConnectionManager.getConnection();
	        stmt = currentCon.createStatement();
	        stmt.executeUpdate(searchQuery);
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public static List<bookingbean> getAllBooking() {
	    List<bookingbean> bookings = new ArrayList<bookingbean>();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	stmt = currentCon.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from booking");
	        
	        while (rs.next()) {
	        	bookingbean booking = new bookingbean();
	        	booking.setBook_id(rs.getString("book_id"));
	        	booking.setCustic(rs.getString("custic"));
	        	booking.setBooking_date(rs.getString("booking_date"));
	        	booking.setStarttime(rs.getString("Starttime"));
	        	booking.setEndtime(rs.getString("Endtime"));
	           
	            bookings.add(booking);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return bookings;
	}
	
	public bookingbean getBookingById(String book_id) {
		bookingbean booking = new bookingbean();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	        ps=currentCon.prepareStatement("select * from booking where book_id=?");
	        
	        ps.setString(1, book_id);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {	            
	        	booking.setBook_id(rs.getString("book_id"));
	        	booking.setCustic(rs.getString("custic"));
	        	booking.setBooking_date(rs.getString("booking_date"));
	        	booking.setStarttime(rs.getString("Starttime"));
	        	booking.setEndtime(rs.getString("Endtime"));
	           
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return booking;
	}
}



