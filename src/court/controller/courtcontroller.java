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
import court.dao.courtdao;
import court.model.courtbean;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/courtcontroller")

public class courtcontroller extends HttpServlet {
	 /**
     * @see HttpServlet#HttpServlet()
     */
	private static final long serialVersionUID = 1L;
	 private static String ADD = "/package.jsp";
	    private static String UPDATE = "/edit.jsp";
	   
	    private static String LIST_ALL = "/bookingdetail.jsp";
	    private courtdao dao;
    
    public courtcontroller() {
        super();
        dao = new courtdao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
        	    int courtid = Integer.parseInt(request.getParameter("courtid"));
	            dao.deleteCourt(courtid);
	            forward = LIST_ALL;
	            request.setAttribute("courts", dao.getAllCourt());    
        } else if (action.equalsIgnoreCase("update")){
        	    forward = UPDATE;
        	      
        	    int courtid= Integer.parseInt(request.getParameter("courtid"));
	            courtbean court = dao.getCourtById(courtid);
	            request.setAttribute("court", court);
        } else if (action.equalsIgnoreCase("listAll")){
        	forward = LIST_ALL;
        	request.setAttribute("courts", dao.getAllCourt());
        }else {
            forward = ADD;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		courtbean court = new courtbean();
		court.setCourttype(request.getParameter("courttype"));
		court.setCourtequipment(request.getParameter("courtequipment"));
		court.setCourtroom(request.getParameter("courtroom"));
		String courtprice = request.getParameter("courtprice");
	

		String courtid = request.getParameter("courtid");
		if(courtid == null || courtid.isEmpty()){
	        dao.add(court);
	    }
	    else{
	        court.setCourtid(Integer.parseInt(courtid));
	         dao.updateCourt(court);
	   }
	        response.sendRedirect("court.jsp");
	}

}
