<%@page import="JSP.dao.UserDao"%>
<%@page import="JSP.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>User list</title>

    <style>
        .border-bottom,
        .border-right {
            border-width: 5px !important;
        }
    </style>
</head>

<body>
	<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("user", list);
		
		int i=0;
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
                    <a href="view-users.jsp" class="list-group-item list-group-item-action disabled active">Show other
                        users</a>
                    <a href="viewcd.jsp" class="list-group-item list-group-item-action">Cash Data</a>
                    <a href="viewcredit.jsp" class="list-group-item list-group-item-action">Credit Data</a>
                   
                </div>
            </div>
            <div class="col-md-10">
                <div class="row m-3">
                    <table class="table">
                        <thead class="bg-success">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Names</th>
                                <th scope="col">Usernames</th>
                                <th scope="col">Contacts</th>
                            </tr>
                        </thead>
                        <tbody>
	                        <c:forEach items="${ user }" var="u">
	                            <tr>
	                                <td><% out.print(i+=1); %></td>
	                                <td>${ u.getName() }</td>
	                                <td>${ u.getUsername() }</td>
	                                <td>${ u.getEmail() }</td>
	                            </tr>
	                        </c:forEach>
                        </tbody>
                    </table>
                </div>
              
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
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