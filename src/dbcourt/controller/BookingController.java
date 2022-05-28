package dbcourt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dbcourt.model.BookingBean;
import dbcourt.dao.BookingDAO;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookingDAO dao;
	private static String LIST_ALL = "/bookingdetails.jsp";
	String forward="";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        dao = new BookingDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("insert")){
			forward = LIST_ALL;
			} 
		else if (action.equalsIgnoreCase("delete")){
			String custic = request.getParameter("custic");
			dao.deleteBooking(custic);
			forward = LIST_ALL;
			request.setAttribute("staffs", dao.getAllBooking());
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
