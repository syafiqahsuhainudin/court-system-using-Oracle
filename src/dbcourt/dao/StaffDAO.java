package dbcourt.dao;
import java.text.*;
import java.util.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

import dbcourt.connection.ConnectionManager;
import dbcourt.model.StaffBean;

public class StaffDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;
   static PreparedStatement ps=null;
   static int staffid;
   static String staffname,phoneno,email,password;
   static int managerid;
   static Statement stmt=null;
   
   public static StaffBean login(StaffBean bean) throws NoSuchAlgorithmException {
   	
       email = bean.getEmail();
       password = bean.getPassword();

       //convert the password to MD5
       MessageDigest md = MessageDigest.getInstance("MD5");
       md.update(password.getBytes());

       byte byteData[] = md.digest();

       //convert the byte to hex format
       StringBuffer sb = new StringBuffer();
       for (int i = 0; i < byteData.length; i++) {
        sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
       }
       
       String searchQuery = "select * from staff where email='" + email + "' AND password='" + sb.toString() + "'";

       System.out.println("Your email is " + email);
       System.out.println("Your password is " + password);
       System.out.println("Query: " + searchQuery);

       try {
           currentCon = ConnectionManager.getConnection();
           stmt = currentCon.createStatement();
           rs = stmt.executeQuery(searchQuery);
           boolean more = rs.next();

           // if user exists set the isValid variable to true
           if (more) {
           	String email = rs.getString("email");
          
          		System.out.println("Welcome " + email);
               bean.setEmail(email);
               bean.setValid(true);
          	}
          
           // if user does not exist set the isValid variable to false
           else if (!more) {
           	System.out.println("Sorry, you are not a registered user! Please sign up first");
           	bean.setValid(false);
           }
          
       }

       catch (Exception ex) {
           System.out.println("Log In failed: An Exception has occurred! " + ex);
       }

       finally {
           if (rs != null) {
               try {
                   rs.close();
               } catch (Exception e) {
               }
               rs = null;
           }

           if (stmt != null) {
               try {
                   stmt.close();
               } catch (Exception e) {
               }
               stmt = null;
           }

           if (currentCon != null) {
               try {
                   currentCon.close();
               } catch (Exception e) {
               }

               currentCon = null;
           }
       }

       return bean;
   }
   
   public void add(StaffBean bean) throws NoSuchAlgorithmException{
   	
       int staffid = bean.getStaffid();
	   staffname = bean.getStaffname();
       phoneno = bean.getPhoneno();
       managerid = bean.getManagerid();
       email = bean.getEmail();
       password = bean.getPassword();
       int u = bean.getManagerid();

       MessageDigest md = MessageDigest.getInstance("MD5");
       md.update(password.getBytes());

       byte byteData[] = md.digest();

       //convert the byte to hex format
       StringBuffer sb = new StringBuffer();
       for (int i = 0; i < byteData.length; i++) {
        sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
       }
       
       String pass = sb.toString();
      
   	try {
   		currentCon = ConnectionManager.getConnection();
   		ps=currentCon.prepareStatement("insert into staff (staffname,phoneno,managerid,email,password)values(?,?,?,?,?)");
   		ps.setString(1,staffname);
   		ps.setString(2,phoneno);
   		
   		if( u < 1) {
   			ps.setNull(3, 0);
   		}
   		else {ps.setInt(3,managerid);}
   		//ps.setInt(3,managerid);
   		ps.setString(4,email);
   		ps.setString(5,pass);
   		ps.executeUpdate();
   	
   		System.out.println("Your email is " + email);
   		System.out.println("Your password is " + pass);
           
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
   public void deleteStaff(int staffid) {
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	ps=currentCon.prepareStatement("delete from staff where staffid=?");
	        ps.setInt(1, staffid);
	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
   public void updateStaff(StaffBean bean) {

		staffid = bean.getStaffid();
		managerid = bean.getManagerid();
		staffname = bean.getStaffname();
		phoneno = bean.getPhoneno();
		email = bean.getEmail();
		int u = bean.getManagerid();
		
		
		String searchQuery = "UPDATE staff SET managerid= ? , staffname= ?, phoneno=?, email=?  WHERE staffid=? ";
		try {
			currentCon = ConnectionManager.getConnection();
			java.sql.PreparedStatement stmt = currentCon.prepareStatement(searchQuery);
			if ( u < 1) stmt.setNull(1,0); 
			else stmt.setInt(1, managerid);
			stmt.setString(2, staffname);
			stmt.setString(3, phoneno);
			stmt.setString(4, email);
			stmt.setInt(5, staffid);
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
   public static List<StaffBean> getAllStaff() {
	    List<StaffBean> staffs = new ArrayList<StaffBean>();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	    	stmt = currentCon.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from staff");
	        
	        while (rs.next()) {
	            StaffBean staff = new StaffBean();
	            staff.setStaffid(rs.getInt("staffid"));
	            staff.setManagerid(rs.getInt("managerid"));
	            staff.setStaffname(rs.getString("staffname"));
	            staff.setPhoneno(rs.getString("phoneno"));
	            staff.setEmail(rs.getString("email"));
	            staff.setPassword(rs.getString("password"));
	            staffs.add(staff);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return staffs;
	}
   public StaffBean getStaffById(int staffid) {
		StaffBean staff = new StaffBean();
	    try {
	    	currentCon = ConnectionManager.getConnection();
	        ps=currentCon.prepareStatement("select * from staff where staffid=?");
	        
	        ps.setInt(1, staffid);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {	            
	        	staff.setStaffid(rs.getInt("staffid"));
	        	staff.setManagerid(rs.getInt("managerid"));
	        	staff.setStaffname(rs.getString("staffname"));
	        	staff.setPhoneno(rs.getString("phoneno"));
	        	staff.setEmail(rs.getString("email"));
	        	staff.setPassword(rs.getString("password"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return staff;
	}
}