package court.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import pizza.dao.OrderDAO;
import court.dao.userdao;
import court.model.userbean;


	@WebServlet("/logincontroller")

	public class logincontroller extends HttpServlet {
		private static final long serialVersionUID = 1L;
	    private userdao dao;
	    HttpServletRequest request;
	    HttpServletResponse response;
	    String forward="";
	    String action="";
	    
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public logincontroller() {
	        super();
	        dao = new userdao();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
			action = request.getParameter("action");
	        
			
	        	try {
	    			
	    			userbean user = new userbean();
	    			user.setEmail(request.getParameter("email"));
	    			user.setCustpassword(request.getParameter("custpassword"));
	    	
	    			user = userdao.login(user);

	    			if(user.isValid())
	    			{
	    				HttpSession session = request.getSession(true);
	    				session.setAttribute("currentSessionUser", user.getEmail());
	    				session.setAttribute("currentSessionUsers",user.getCustnames());
	    				session.setAttribute("currentSessionUserrr",user.getCustic());
	    				
	    				session.setAttribute("cis",user.getContactnum());
	    			
	    				session.setAttribute("a", user.getAddress());
	    		

	    			
	    				response.sendRedirect("index.jsp"); // logged-in page
	    			}
	    			else
	    			{
	    				response.sendRedirect("login.jsp");
	    			}
	    			
	    		}

	    		catch (Throwable ex) {
	    			System.out.println(ex);
	    		}
	 
		}

	}

