	package dbcourt.controller;
	
	import java.io.IOException;
	import java.security.NoSuchAlgorithmException;
	
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import dbcourt.model.CourtBean;
	import dbcourt.dao.CourtDAO;
	/**
	 * Servlet implementation class StaffController
	 */
	@WebServlet("/CourtController")
	public class CourtController extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private CourtDAO dao;
		private static String INSERT = "/addcourt.jsp";
		private static String LIST_ALL = "/admincourt.jsp";
		private static String EDIT = "/editcourt.jsp";
		String forward="";
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public CourtController() {
	        super();
	        dao = new CourtDAO();
	        // TODO Auto-generated constructor stub
	    }
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
	String action = request.getParameter("action");
	
		if (action.equalsIgnoreCase("insert")){
			forward = INSERT;
			} 
		
		else if (action.equalsIgnoreCase("delete")){
			int courtid = Integer.parseInt(request.getParameter("courtid"));
			dao.deleteCourt(courtid);
			forward = LIST_ALL;
			request.setAttribute("staffs", dao.getAllCourt());
			}
		else if (action.equalsIgnoreCase("edit")){
		    forward = EDIT;
		    int courtid = Integer.parseInt(request.getParameter("courtid"));
	        CourtBean court = dao.getCourtById(courtid);
	        request.setAttribute("court", court);
			}
		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	    }
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			CourtBean court = new CourtBean();
			court.setCourttype(request.getParameter("courttype"));
			court.setCourtprice(Integer.parseInt(request.getParameter("courtprice")));
			court.setCourtequipment(request.getParameter("courtequipment"));
			court.setCourtroom(request.getParameter("courtroom"));
			
			String courtid = request.getParameter("courtid");
			if(courtid == null ||courtid.isEmpty() ){
	           
					try {
						dao.add(court);
					} catch (NoSuchAlgorithmException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else {
					court.setCourtid(Integer.parseInt(courtid));
			        dao.updateCourt(court);
				}
			response.sendRedirect("admincourt.jsp");
	        }
			 
	
	}
