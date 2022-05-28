package dbcourt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcourt.dao.StaffDAO;
import dbcourt.model.StaffBean;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{	    

		     StaffBean staff = new StaffBean();
		     staff.setEmail(request.getParameter("email"));
		     staff.setPassword(request.getParameter("password"));

		     staff = StaffDAO.login(staff);
			   		    
		     if (staff.isValid())
		     {
			        
		          HttpSession session = request.getSession(true);	    
		          session.setAttribute("currentSessionUser",staff); 
		          response.sendRedirect("adminindex.jsp"); //logged-in page      		
		     }
			        
		     else 
		          response.sendRedirect("loginadmin2.jsp"); //error page
		} 
				
				
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
	}


}
