package court.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.court.ConnectionManager;

import court.model.courtbean;

public class courtdao {
	

	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;
	int courtid;
	int courtprice;
	
	String courttype,courtequipment,courtroom;
	
	
	
	public void add(courtbean bean){
		courtid = bean.getCourtid();
		courttype = bean.getCourttype();
		courtequipment = bean.getCourtequipment();
		courtroom = bean.getCourtroom();
		courtprice = bean.getCourtprice();
		
		
		
		try {
			currentCon = ConnectionManager.getConnection();
			ps=currentCon.prepareStatement("insert into courts(courttype,courtequipment,courtroom,courtprice)values(?,?,?,?)");
			ps.setString(1,courttype);
			ps.setString(2,courtequipment);
			ps.setString(3,courtroom);
			ps.setInt(4,courtprice);
		
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
	
	public void deleteCourt(int courtid) {
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	ps=currentCon.prepareStatement("delete from courts where courtid=?");
	        ps.setInt(1, courtid);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public void updateCourt(courtbean bean) {

		courtid = bean.getCourtid();
		courttype = bean.getCourttype();
		courtequipment = bean.getCourtequipment();
		courtroom = bean.getCourtroom();
		courtprice = bean.getCourtprice();
		
		
		String searchQuery = "UPDATE courts SET courttype = '" + courttype + "', courtequipment='" + courtequipment+ "', courtroom='" +courtroom + "', courtprice='" + courtprice + "' WHERE courtid= '" + courtid + "'";
		
		try {

	        currentCon = ConnectionManager.getConnection();
	        stmt = currentCon.createStatement();
	        stmt.executeUpdate(searchQuery);
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public static List<courtbean> getAllCourt() {
	    List<courtbean> courts = new ArrayList<courtbean>();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	stmt = currentCon.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from courts");
	        
	        while (rs.next()) {
	        	courtbean court = new courtbean();
	           court.setCourtid(rs.getInt("courtid"));
	           court.setCourttype(rs.getString("courttype"));
	            court.setCourtequipment(rs.getString("courtequipment"));
	            court.setCourtroom(rs.getString("courtroom"));
	           court.setCourtprice(rs.getInt("courtprice"));
	           
	            courts.add(court);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return courts;
	}
	
	public courtbean getCourtById(int courtid) {
		courtbean court = new courtbean();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	        ps=currentCon.prepareStatement("select * from courts where courtid=?");
	        
	        ps.setInt(1, courtid);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {	            
	        	 court.setCourtid(rs.getInt("courtid"));
		           court.setCourttype(rs.getString("courttype"));
		            court.setCourtequipment(rs.getString("courtequipment"));
		            court.setCourtroom(rs.getString("courtroom"));
		           court.setCourtprice(rs.getInt("courtprice"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return court;
	}
}



