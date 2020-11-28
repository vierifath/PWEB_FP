<%@page import="JSP.dao.creditdataDao"%>  
<jsp:useBean id="u" class="JSP.bean.creditdata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
creditdataDao.delete(u);  
response.sendRedirect("viewcredit.jsp");  
%>  