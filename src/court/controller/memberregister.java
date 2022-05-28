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


@WebServlet("/memberregister")

public class memberregister extends HttpServlet {

 private static final long serialVersionUID = -734503860925086969L;
 static Connection currentCon = null;
 String custic,custnames,email,custpassword,address;
 String contactnum;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        	currentCon = ConnectionManager.getConnection();
        	
            String custnames = request.getParameter("custnames");
            String custic = request.getParameter("custic");
            String address = request.getParameter("address");
            String contactnum = request.getParameter("contactnum");
            String  email = request.getParameter("email");
            String custpassword = request.getParameter("custpassword");
            int annual_fee = Integer.parseInt(request.getParameter("annual_fee"));
            int discount = Integer.parseInt(request.getParameter("discount"));
            
            PreparedStatement ps = currentCon.prepareStatement("insert into customers(custnames,custic,address,contactnum,email,custpassword)values(?,?,?,?,?,?)");
            ps.setString(1,custnames);
            ps.setString(2,custic);
            ps.setString(3,address);
            ps.setString(4,contactnum);
            ps.setString(5, email);
            ps.setString(6,custpassword);	
            ResultSet rs = ps.executeQuery();
             
          
            	ps=currentCon.prepareStatement("insert into court_members(custic,annual_fee,discount)values(?,?,?)");
            	
            	 ps.setString(1,custic);
            	   ps.setInt(2,annual_fee);
            	   ps.setInt(3,discount);
    			ps.executeUpdate();
    		      response.sendRedirect("login.jsp");
            
            

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