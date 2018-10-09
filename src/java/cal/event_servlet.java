/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Calendar;

/**
 *
 * @author Saroj
 */
@WebServlet(name = "event_servlet", urlPatterns = {"/event_servlet"})
public class event_servlet extends HttpServlet {

    
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Calendar c = new Calendar();
            c.setId(Integer.parseInt(request.getParameter("sid")));
            c.setTitle(request.getParameter("title"));
            c.setStart(request.getParameter("start"));
            c.setEnd(request.getParameter("end"));
            c.setLocation(request.getParameter("location"));
            c.setStarttime(request.getParameter("starttime"));
            c.setDuration(request.getParameter("duration"));
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
            int success = con.createStatement().executeUpdate("INSERT INTO schedule(sid, title, start, end,location,starttime,duration) VALUES ('" + c.getId() + "','" + c.getTitle() + "','" + c.getStart() + "','" + c.getEnd()+ "','"+ c.getLoaction() +"','"+ c.getStarttime()+"','"+c.getDuration() +"')");
            
            if (success > 0) {
                response.sendRedirect("add_event.jsp?message=Succussfully Inserted");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CalJServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}