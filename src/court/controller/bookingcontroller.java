package court.controller;
import java.text.ParseException;  

import java.util.Date;  
import java.util.Locale;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import court.dao.bookingdao;
import court.model.bookingbean;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/bookingcontroller")

public class bookingcontroller extends HttpServlet {
	 /**
     * @see HttpServlet#HttpServlet()
     */
	private static final long serialVersionUID = 1L;
	 private static String ADD = "/booking.jsp";
	    private static String UPDATE = "/";
	   
	    private static String LIST_ALL = "/";
	    private bookingdao dao;
    
    public bookingcontroller() {
        super();
        dao = new bookingdao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
        	    String book_id = request.getParameter("book_id");
	            dao.deleteBooking(book_id);
	            forward = LIST_ALL;
	            request.setAttribute("bookings", dao.getAllBooking());    
        } else if (action.equalsIgnoreCase("update")){
        	    forward = UPDATE;
        	      
        	    String book_id = request.getParameter("book_id");
	            bookingbean booking = dao.getBookingById(book_id);
	            request.setAttribute("booking", booking);
        } else if (action.equalsIgnoreCase("listAll")){
        	forward = LIST_ALL;
        	request.setAttribute("bookings", dao.getAllBooking());
        }else {
            forward = ADD;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bookingbean booking = new bookingbean();
		booking.setCustic(request.getParameter("custic"));
		booking.setBooking_date (request.getParameter("booking_date"));
		booking.setStarttime(request.getParameter("starttime"));
		booking.setEndtime(request.getParameter("endtime"));
		
		String book_id = request.getParameter("book_id");
		if(book_id == null || book_id.isEmpty()){
	        dao.add(booking);
	    }
	    else{
	        booking.setBook_id(book_id);
	         dao.updateBooking(booking);
	   }
	        response.sendRedirect("booking.jsp");
	}

}
