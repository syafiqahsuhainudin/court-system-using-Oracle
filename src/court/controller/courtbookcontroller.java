
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
import court.dao.courtbookdao;
import court.model.courtbookingbean;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/courtbookcontroller")

public class courtbookcontroller extends HttpServlet {
	 /**
     * @see HttpServlet#HttpServlet()
     */
	private static final long serialVersionUID = 1L;
	 private static String ADD = "/court.jsp";
	  
	   
	    private static String LIST_ALL = "/";
	    private courtbookdao dao;
    
    public courtbookcontroller() {
        super();
        dao = new courtbookdao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
        	    String book_id = request.getParameter("book_id");
	            dao.deletecourtBooking(book_id);
	            forward = LIST_ALL;
	            request.setAttribute("courtbookings", dao.getAllCourtBooking());    
        }  else if (action.equalsIgnoreCase("listAll")){
        	forward = LIST_ALL;
        	request.setAttribute("courtbookings", dao.getAllCourtBooking());
        }else {
            forward = ADD;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		courtbookingbean courtbooking = new courtbookingbean();
		courtbooking.setCourtid(Integer.parseInt(request.getParameter("courtid")));
		courtbooking.setCustic(request.getParameter("custic"));
		
		
		
		String book_id = request.getParameter("book_id");
		if(book_id == null || book_id.isEmpty()){
	        dao.add(courtbooking);
	    }
	    else{
	        courtbooking.setBook_id(book_id);
	         
	   }
	        response.sendRedirect("court.jsp");
	}

}