<%@page import="JSP.dao.creditdataDao"%>  
<jsp:useBean id="u" class="JSP.bean.creditdata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=creditdataDao.save(u);  
if(i>0){  
response.sendRedirect("credit_sukses.jsp");  
}else{  
response.sendRedirect("credit_error.jsp");  
}  
%>  