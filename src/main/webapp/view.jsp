<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.ust.reminder.servlets.ViewReminder" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="30">
<title>List Reminders</title>
</head>
<body>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Reminders</h2></caption>
            <tr>
                <th>ID</th>
                <th>Content</th>
                <th>Place</th>
                <th>Rem_Date</th>
                <th>Rem_Time</th>
            </tr>
            <%
            	try{
                        Connection con = com.ust.reminder.dbconn.DatabaseConnection.getConnectivity();
               			 String query="select * from rem1";
               			 Statement stmt=con.createStatement();
               			 ResultSet rs=stmt.executeQuery(query);
                        	while(rs.next()){
            %>
            		<tr>
            		 <td><%=rs.getInt("id") %></td>
                     <td><%=rs.getString("content")%></td>
                     <td><%=rs.getString("place")%></td>
                     <td><%=rs.getString("rem_date") %></td>
                     <td><%=rs.getString("rem_time") %></td>
                     </tr>
                     <%
            	}
            	//con.close();
            	} catch (Exception e) {
            	e.printStackTrace();
            	}
            	%>
       </table>
    </div>
    <a href="index.jsp">Click Here for Home Page..!</a>
</body>
</html>