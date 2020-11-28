<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Credit Data Form</title>  
</head>  
<body>  
<%@page import="JSP.dao.creditdataDao,JSP.bean.creditdata"%>  
  
<%  
String id=request.getParameter("id");  
creditdata u=creditdataDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="editcreditpost.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Date:</td><td>  
<input type="text" name="dates" value="<%= u.getDates()%>"/></td></tr>  
<tr><td>Credit Information:</td><td>  
<input type="text" name="information" value="<%= u.getInformation()%>"/></td></tr>  
<tr><td>Amount:</td><td>  
<input type="number" name="amount" value="<%= u.getAmount()%>"/></td></tr>  
 
<tr><td colspan="2"><input type="submit" value="Edit Credit Data"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>