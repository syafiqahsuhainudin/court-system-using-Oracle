package court.dao;



import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.court.ConnectionManager;

import court.model.userbean;


public class userdao {
	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;

	static String contactnum,custnames,custic,email,custpassword,address;
	
	


    
public static userbean getUser(userbean bean)  {
    	
        email = bean.getEmail();
       
        custnames = bean.getCustnames();
        custic = bean.getCustic();
        address = bean.getAddress();
        contactnum = bean.getContactnum();
   
        
        String searchQuery = "select * from customers  where email='" + email + "'";
       

        try {
            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
           
            boolean more = rs.next();

            // if user exists set the isValid variable to true
            if (more) {
            	String email = rs.getString("email");
            	String custnames = rs.getString("custnames");
            	String custic = rs.getString("custic");
            	String address = rs.getString("address");
            	String contactnum = rs.getString("contactnum");
            	
            	
            	
            	
                bean.setEmail(email);
                bean.setCustnames(custnames);
                bean.setCustic(custic);
                bean.setContactnum(contactnum);
                bean.setAddress(address);
               
                bean.setValid(true);
           	}
           
            else if (!more) {
            	System.out.println("Sorry");
            	
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

//login
public static userbean login(userbean bean) throws NoSuchAlgorithmException {
	
  email = bean.getEmail();
  custpassword = bean.getCustpassword();
  custnames = bean.getCustnames();
  custic = bean.getCustic();
  address = bean.getAddress();
  contactnum = bean.getContactnum();
 


	
  String searchQuery = "select * from customers   where email='" + email + "' AND custpassword='" + custpassword + "'"; 
  

  System.out.println("Your email is " + email);
  System.out.println("Your password is " + custpassword);

  System.out.println("Query: " + searchQuery);

  try {
      currentCon = ConnectionManager.getConnection();
      stmt = currentCon.createStatement();
      rs = stmt.executeQuery(searchQuery);
    
      boolean more = rs.next();

      // if user exists set the isValid variable to true
      if (more) {
     
      	String email = rs.getString("email");
    	String custnames = rs.getString("custnames");
    	String custic = rs.getString("custic");
    	String address = rs.getString("address");
    	String contactnum = rs.getString("contactnum");
    	
   
     		System.out.println("Welcome " + email);
     		
     		
     		 bean.setEmail(email);
             bean.setCustnames(custnames);
             bean.setCustic(custic);
             bean.setContactnum(contactnum);
             bean.setAddress(address);
           
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

}

