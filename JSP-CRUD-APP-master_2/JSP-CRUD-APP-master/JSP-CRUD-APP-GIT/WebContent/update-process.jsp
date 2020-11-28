<%@page import="JSP.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="theUser" class="JSP.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="theUser" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	int i = UserDao.update(theUser);
	response.sendRedirect("view-users.jsp");
%>

</body>
</html>