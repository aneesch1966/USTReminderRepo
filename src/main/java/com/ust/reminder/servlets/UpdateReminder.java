package com.ust.reminder.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ust.reminder.dbconn.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Servlet implementation class Test
 */
@WebServlet("/update")
public class UpdateReminder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String c  = request.getParameter("content");
		String p = request.getParameter("place");
		String rem_date = request.getParameter("rem_date");
		String rem_time = request.getParameter("rem_time");
		String id = request.getParameter("id");

		String qry="update rem1 set content = ?, place = ? ,rem_date = ?, rem_time =? where id = ?";
		
		Connection conn =  DatabaseConnection.getConnectivity();
		try {
			PreparedStatement pst = conn.prepareStatement(qry);
			pst.setString(1,c);
			pst.setString(2,p);
			pst.setString(3,rem_date);
			pst.setString(4,rem_time);
			pst.setInt(5,Integer.parseInt(id));
			
			int i=pst.executeUpdate();
			
			if(i>0) {
				response.sendRedirect("update.jsp?sucessMsg=Reminder Updated Successfully..!");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		System.out.println("user is : "+c);
		System.out.println("user is : "+p);
		System.out.println("user is : "+rem_date);
		System.out.println("user is : "+rem_time);
	}

}
