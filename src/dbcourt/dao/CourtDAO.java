package dbcourt.dao;
import java.text.*;
import java.util.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

import dbcourt.connection.ConnectionManager;
import dbcourt.model.CourtBean;

public class CourtDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;  
   static PreparedStatement ps=null;
   static int courtid;
   static String courttype,courtequipment,courtroom;
   static int courtprice;
   static boolean availability;
   static Statement stmt=null;
	
	
   public void add(CourtBean bean) throws NoSuchAlgorithmException{
   	
       int courtid = bean.getCourtid();
	   courttype = bean.getCourttype();
	   courtprice = bean.getCourtprice();
	   courtequipment = bean.getCourtequipment();
       courtroom = bean.getCourtroom();
       
   	try {
   		currentCon = ConnectionManager.getConnection();
   		ps=currentCon.prepareStatement("insert into courts (courttype,courtprice,courtequipment,courtroom)values(?,?,?,?)");
   		ps.setString(1,courttype);
   		ps.setInt(2,courtprice);
   		ps.setString(3,courtequipment);
   		ps.setString(4,courtroom);
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
	        ps.setInt(1,courtid);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
   public void updateCourt(CourtBean bean) {

		courtid = bean.getCourtid();
		courttype = bean.getCourttype();
		courtprice = bean.getCourtprice();
		courtroom = bean.getCourtroom();
		
		String searchQuery = "UPDATE courts SET courttype= '" + courttype + "', courtprice= '" + courtprice + "', courtroom='" + courtroom + "' WHERE courtid= '" + courtid + "'";
		
		try {

	        currentCon = ConnectionManager.getConnection();
	        stmt = currentCon.createStatement();
	        stmt.executeUpdate(searchQuery);
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
   public static List<CourtBean> getAllCourt() {
	    List<CourtBean> courts = new ArrayList<CourtBean>();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	stmt = currentCon.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from courts");
	        
	        while (rs.next()) {
	            CourtBean court = new CourtBean();
	            court.setCourtid(rs.getInt("courtid"));
	            court.setCourttype(rs.getString("courttype"));
	            court.setCourtprice(rs.getInt("courtprice"));
	            court.setCourtequipment(rs.getString("courtequipment"));
	            court.setCourtroom(rs.getString("courtroom"));
	            courts.add(court);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return courts;
	}
   public CourtBean getCourtById(int courtid) {
		CourtBean court = new CourtBean();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	        ps=currentCon.prepareStatement("select * from courts where courtid=?");
	        
	        ps.setInt(1, courtid);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {	            
	        	court.setCourtid(rs.getInt("courtid"));
	        	court.setCourttype(rs.getString("courttype"));
	        	court.setCourtprice(rs.getInt("courtprice"));
	        	court.setCourtequipment(rs.getString("courtequipment"));
	        	court.setCourtroom(rs.getString("courtroom"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return court;
	}
}