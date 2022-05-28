package court.controller;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.court.ConnectionManager;


@WebServlet("/checkavailablecourt")
public class checkavailablecourt extends HttpServlet {

	 private static final long serialVersionUID = -734503860925086969L;
	 static Connection currentCon = null;
	 String booking_date,starttime,endtime;
	 int courtid;
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        try {

	        	currentCon = ConnectionManager.getConnection();
	        	
	            String booking_date = request.getParameter("booking_date");
	            String starttime = request.getParameter("starttime");
	            String endtime = request.getParameter("endtime");
	      
	            int courtid = Integer.parseInt(request.getParameter("courtid"));
	            
	            PreparedStatement ps = currentCon.prepareStatement("select courtbooking.courtid,booking.booking_date,booking.starttime,booking.endtime  from booking  join courtbooking  on(courtbooking.book_id=booking.book_id) where courtbooking.courtid=? AND booking.booking_date=? AND booking.starttime=? AND booking.endtime=? ");
	            ps.setInt(1,courtid);
	            ps.setString(2,booking_date);
	            ps.setString(3,starttime);
	            ps.setString(4,endtime);
	 
	            ResultSet rs = ps.executeQuery();
	             
	            if (!rs.next()) {
	            	
	            	response.sendRedirect("checksuccess.jsp");
	            }
	            else{
	           
	        	
	        	response.sendRedirect("checkfail.jsp");
	            }
	            out.println();

	        } catch (Exception ex) {
	            out.println("Error ->" + ex.getMessage());
	        } finally {
	            out.close();
	            
	        }
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doPost(request, response);
	    }
	}

	


