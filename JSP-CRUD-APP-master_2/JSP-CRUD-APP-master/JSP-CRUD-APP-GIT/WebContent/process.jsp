<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="JSP.dao.UserDao" %>
<jsp:useBean id="u" class="JSP.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String uniqueUsername = request.getParameter("username");
	session.setAttribute("uniqueUser", uniqueUsername);
	
	int i = UserDao.save(u);
	
	if( i > 0 ) {
		response.sendRedirect("home.jsp");
	}
	else {
		response.sendRedirect("error.html");
	}
%>

</body>
</html>