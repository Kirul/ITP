/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal;


import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Calendar;

@WebServlet(name = "CalJServlet", urlPatterns = {"/CalJServlet"})
public class CalJServlet extends HttpServlet {
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            List progs = new ArrayList();
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
            ResultSet rs = con.createStatement().executeQuery("SELECT sid, title, start, end,location,starttime,duration FROM schedule");
            
            while (rs.next()) {
                Calendar cc = new Calendar();
                cc.setId(Integer.parseInt(rs.getString(1)));
                cc.setStart(rs.getString(3));
                cc.setEnd(rs.getString(4));
                cc.setTitle(rs.getString(2));
                cc.setLocation(rs.getString(5));
                cc.setStarttime(rs.getString(6));
                cc.setDuration(rs.getString(7));
                progs.add(cc);
                
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.write(new Gson().toJson(progs));
            
           
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CalJServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CalJServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}