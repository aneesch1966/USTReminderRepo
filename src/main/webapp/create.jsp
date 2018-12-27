<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Reminder</title>
</head>
<body>
<div align = "center">
<h2>Create Reminder</h2><br>
<form action="create" method="post" >
Content&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type  = "text" name = "content"><br><br>
Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type  = "text" name = "place"><br><br>
Reminder Date : <input type="text" name="rem_date" placeholder="dd/mm/yyyy"/><br><br>
Reminder Time : <input type = "text" name = rem_time placeholder = "hh:mm:ss"><br><br>
<input type = "submit" name = "submitbtn">
</form>
</div>
</body>
</html>