	package dbcourt.controller;
	
	import java.io.IOException;
	import java.security.NoSuchAlgorithmException;
	
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import dbcourt.model.StaffBean;
	import dbcourt.dao.StaffDAO;
	/**
	 * Servlet implementation class StaffController
	 */
	@WebServlet("/StaffController")
	public class StaffController extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private StaffDAO dao;
		private static String INSERT = "/addstaff.jsp";
		private static String LIST_ALL = "/staff.jsp";
		private static String EDIT = "/editstaff.jsp";
		String forward="";
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public StaffController() {
	        super();
	        dao = new StaffDAO();
	        // TODO Auto-generated constructor stub
	    }
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
	String action = request.getParameter("action");
	
		if (action.equalsIgnoreCase("insert")){
			forward = INSERT;
			} 
		
		else if (action.equalsIgnoreCase("delete")){
			int staffid = Integer.parseInt(request.getParameter("staffid"));
			dao.deleteStaff(staffid);
			forward = LIST_ALL;
			request.setAttribute("staffs", dao.getAllStaff());
			}
		else if (action.equalsIgnoreCase("edit")){
		    forward = EDIT;
		    int staffid = Integer.parseInt(request.getParameter("staffid"));
	        StaffBean staff = dao.getStaffById(staffid);
	        request.setAttribute("staff", staff);
			}
		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	    }
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			StaffBean staff = new StaffBean();
			staff.setStaffname(request.getParameter("staffname"));
			staff.setPhoneno(request.getParameter("phoneno"));
			String u = request.getParameter("managerid");
			if(!u.equalsIgnoreCase("")) {
				
				staff.setManagerid(Integer.parseInt(request.getParameter("managerid")));
			}
			else {
			
			}
			
			
			staff.setEmail(request.getParameter("email"));
			staff.setPassword(request.getParameter("password"));
			
			String staffid = request.getParameter("staffid");
			if(staffid == null ||staffid.isEmpty() ){
	           
					try {
						dao.add(staff);
					} catch (NoSuchAlgorithmException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else {
					staff.setStaffid(Integer.parseInt(staffid));
			        dao.updateStaff(staff);
				}
			response.sendRedirect("staff.jsp");
	        }
			 
	
	}
