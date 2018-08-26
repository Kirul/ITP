package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Participants;

@WebServlet("/ParticipantSDelete")
public class ParticipantSDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ParticipantSDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
		try {
			ParticipantDelete(request,response);
			
			} catch (Exception ex) {
				throw new ServletException();
			
	}

}

	private void ParticipantDelete(HttpServletRequest request, HttpServletResponse response) {
		

		// TODO Auto-generated method stub
		Participants sh = new Participants(null, null, null);
		sh.setStudentID(request.getParameter("StudentID"));
		sh.setSportsID(request.getParameter("SportsID"));
		sh.setPartName(request.getParameter("PartName"));
//		sh.setCost_per_unit(Float.parseFloat("Cost_per_unit"));
		
		sh.ParticipantDelete();
		try {
			request.getRequestDispatcher("/updateView.jsp").forward(request,response);
		} catch(ServletException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}
		
	}
