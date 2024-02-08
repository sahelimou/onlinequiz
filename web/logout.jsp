<%-- 
    Document   : logout
    Created on : 11-Feb-2023, 9:06:10 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		<jsp:forward page="index.jsp"/>
	</body>
</html>