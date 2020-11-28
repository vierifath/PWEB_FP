<%@page import="JSP.dao.cashdataDao"%>  
<jsp:useBean id="u" class="JSP.bean.cashdata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=cashdataDao.save(u);  
if(i>0){  
response.sendRedirect("cd_sukses.jsp");  
}else{  
response.sendRedirect("cd_error.jsp");  
}  
%>  