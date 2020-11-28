<%@page import="JSP.dao.cashdataDao,JSP.bean.cashdata"%>  
  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>My Cash Data</title>

    <style>
        .border-bottom,
        .border-right {
            border-width: 5px !important;
        }
    </style>
</head>

<body>
	 <%  
            String id=request.getParameter("id");  
            cashdata u=cashdataDao.getRecordById(Integer.parseInt(id));  
         %> 

    <div class="container-fluid">
        <div class="row mt-3 pb-2 border-bottom border-success">
            <div class="col-md-6">
                <h1>My Cash Data</h1>
            </div>
            <div class="col-md-6">
                <img src="images/blank-profile-picture-973460_640.png" class="rounded float-right" width="100"
                    height="100" alt="profile picture">
            </div>
        </div>

        <div class="row">
            <div class="col-md-2 border-right border-success">
                <div class="list-group mt-3">
                    <a href="home.jsp" class="list-group-item list-group-item-action">Home</a>
                    <a href="update-info.jsp" class="list-group-item list-group-item-action">Update profile</a>
                    <a href="view-users.jsp" class="list-group-item list-group-item-action">Show other users</a>
                    <a href="viewcd.jsp" class="list-group-item list-group-item-action disabled active">Cash Data</a>
                    <a href="viewcredit.jsp" class="list-group-item list-group-item-action">Credit Data</a>
                    
                </div>
            </div>
            <div class="col-md-10">
                <div class="row m-3">
                    <div class="container">
                        <h1>Edit Cash Data</h1>
                        <p><br></p>
                        
                       
           
<!--                        <form action="update-process.jsp">-->
                        <form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Week1:</td><td>  
<input type="number" name="week1" value="<%= u.getWeek1()%>"/></td></tr>  

<tr><td>Week2:</td><td>  
<input type="number" name="week2" value="<%= u.getWeek2()%>"/></td></tr>  

<tr><td>Week3:</td><td>  
<input type="number" name="week3" value="<%= u.getWeek3()%>"/></td></tr>  

<tr><td>Week4:</td><td>  
<input type="number" name="week4" value="<%= u.getWeek4()%>"/></td></tr>  

<tr><td>Week5:</td><td>  
<input type="number" name="week5" value="<%= u.getWeek5()%>"/></td></tr>  

<tr><td>Week6:</td><td>  
<input type="number" name="week6" value="<%= u.getWeek6()%>"/></td></tr>  

<tr><td>Week7:</td><td>  
<input type="number" name="week7" value="<%= u.getWeek7()%>"/></td></tr>  

<tr><td>Week8:</td><td>  
<input type="number" name="week8" value="<%= u.getWeek8()%>"/></td></tr>  

<tr><td>Week9:</td><td>  
<input type="number" name="week9" value="<%= u.getWeek9()%>"/></td></tr>  

<tr><td>Week10:</td><td>  
<input type="number" name="week10" value="<%= u.getWeek10()%>"/></td></tr>  



<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
                        
                        <br/>

<!--                        <a href="addcashdata.jsp" class="btn btn-primary">Add Cash Data</a> -->

                        
  
                    

                </div>
                </div>
<!--                <div class="row m-3">
                    Image by <a
                        href="https://pixabay.com/users/WandererCreative-855399/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=973460"
                        target="_blank">Stephanie
                        Edwards</a> from <a
                        href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=973460"
                        target="_blank">Pixabay</a>
                    <div style="height: 300px;"></div>

                </div>-->
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <script src="js/script.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
</body>

</html>