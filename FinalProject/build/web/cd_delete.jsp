<%@page import="JSP.dao.cashdataDao"%>  
<jsp:useBean id="u" class="JSP.bean.cashdata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
cashdataDao.delete(u);  
response.sendRedirect("viewcd.jsp");  
%>  