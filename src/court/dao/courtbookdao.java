
	
	package court.dao;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import com.court.ConnectionManager;

	import court.model.courtbookingbean;

	public class courtbookdao {
		

		static Connection currentCon = null;
		static ResultSet rs = null; 
		static PreparedStatement ps=null;
		static Statement stmt=null;
		int courtid;
		
		
		String book_id,custic;
		
		
		
		public void add(courtbookingbean bean){
			custic = bean.getCustic();
			book_id = bean.getBook_id();
			courtid = bean.getCourtid();
			
			
			
			try {
				currentCon = ConnectionManager.getConnection();
				ps=currentCon.prepareStatement("insert into courtbooking(courtid,custic,book_id)values(?,?,?)");
				ps.setInt(1,courtid);
				ps.setString(2,custic);
				ps.setString(3,book_id);
				
			
			
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
		
		public void deletecourtBooking(String book_id) {
		    try {
		    	currentCon = ConnectionManager.getConnection();
		    	ps=currentCon.prepareStatement("delete from courtbooking where book_id=?");
		        ps.setString(1, book_id);
		        ps.executeUpdate();

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}
		
		
		
		public static List<courtbookingbean> getAllCourtBooking() {
		    List<courtbookingbean> courtbookings = new ArrayList<courtbookingbean>();
		    try {
		    	currentCon = ConnectionManager.getConnection();
		    	stmt = currentCon.createStatement();
		        ResultSet rs = stmt.executeQuery("select * from courtbooking");
		        
		        while (rs.next()) {
		        	courtbookingbean courtbooking = new courtbookingbean();
		        	courtbooking.setBook_id(rs.getString("book_id"));
		        	courtbooking.setCustic(rs.getString("custic"));
		        	courtbooking.setCourtid(rs.getInt("courtid"));
		           
		            courtbookings.add(courtbooking);
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return courtbookings;
		}
		
		public courtbookingbean getCourtBookingById(String book_id) {
			courtbookingbean courtbooking = new courtbookingbean();
		    try {
		    	currentCon = ConnectionManager.getConnection();
		        ps=currentCon.prepareStatement("select * from courtbooking where book_id=?");
		        
		        ps.setString(1, book_id);
		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {	            
		        	courtbooking.setBook_id(rs.getString("book_id"));
		        	courtbooking.setCustic(rs.getString("custic"));
		        	courtbooking.setCourtid(rs.getInt("courtid"));
		           
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return courtbooking;
		}
	}






