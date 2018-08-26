package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Participants;

@WebServlet("/ParticipantSUpdate")
public class ParticipantSUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ParticipantSUpdate() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		try {
			ParticipantUpdate(request,response);
			
			} catch (Exception ex) {
				throw new ServletException();
			}
	}

	private void ParticipantUpdate(HttpServletRequest request, HttpServletResponse response) {

		Participants sh = new Participants(null, null, null);
		sh.setStudentID(request.getParameter("StudentID"));
		sh.setSportsID(request.getParameter("SportsID"));
		sh.setPartName(request.getParameter("PartName"));
		sh.setPartName(request.getParameter("Hundred"));
		sh.setPartName(request.getParameter("Twoh"));
		sh.setPartName(request.getParameter("Highj"));
		sh.setPartName(request.getParameter("Longj"));
		sh.setPartName(request.getParameter("Eight"));
//		sh.setCost_per_unit(Float.parseFloat("Cost_per_unit"));
		
		sh.getStudentID();
		try {
			request.getRequestDispatcher("/StudentPL.jsp").forward(request,response);
		} catch(ServletException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}
	
		
	}

}
