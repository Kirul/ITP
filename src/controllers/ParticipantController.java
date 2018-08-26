package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbConnection.DBConnector;
import models.Participants;

public class ParticipantController {

	//Inserting
	public boolean ParticipantInsert(Participants sp) {
		
		DBConnector dc = new DBConnector();
		Connection con = dc.getConnection();
		String sql = "INSERT INTO participant VALUES (?,?,?,?,?,?,?,?)" ;

		PreparedStatement statement;
		int rowUpdated = 0;
		try {
			statement = (PreparedStatement)con.prepareStatement(sql);
			
			statement.setString(1, sp.getStudentID());
			statement.setString(2, sp.getSportsID());
			statement.setString(3, sp.getPartName());
			statement.setString(4, sp.getHundred());
			statement.setString(5, sp.getTwoh());
			statement.setString(6, sp.getHighj());
			statement.setString(7, sp.getLongj());
			statement.setString(8, sp.getEight());
			
			statement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
			con.close();
			}catch(Exception e) {	
			}
		}
		
		return rowUpdated > 0;

	}
	
	//Deleting
	public boolean ParticipantDelete(Participants sp)  {
		
			DBConnector dc = new DBConnector();
			Connection con = dc.getConnection();
			String sql = "DELETE FROM participant WHERE ship_ID ="+sp.getStudentID() ;
			
			
			PreparedStatement statement;
			int rowUpdated = 0;
			try {
				statement = con.prepareStatement(sql);
				statement.setString(1, sp.getStudentID());
				statement.setString(2, sp.getSportsID());
				statement.setString(3, sp.getPartName());
				
				statement.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return rowUpdated > 0;
	
		}
	
	//updating
	public boolean ParticipantUpdate(Participants sp) {
			
		DBConnector dc = new DBConnector();
		Connection con = dc.getConnection();
		String sql = "UPDATE participant SET SportsID=?,PartName=? WHERE StudentID" + ;
			
			
		PreparedStatement statement;
		int rowUpdated = 0;
		try {
			statement = con.prepareStatement(sql);
			statement.setString(1, sp.getStudentID());
			statement.setString(2, sp.getSportsID());
			statement.setString(3, sp.getPartName());
			statement.setString(4, sp.getHundred());
			statement.setString(5, sp.getTwoh());
			statement.setString(6, sp.getHighj());
			statement.setString(7, sp.getLongj());
			statement.setString(8, sp.getEight());
				
			statement.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return rowUpdated > 0;

	}


}
