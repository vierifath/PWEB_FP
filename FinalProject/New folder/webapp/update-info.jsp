<%@page import="JSP.bean.User"%>
<%@page import="JSP.dao.UserDao"%>
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

    <title>Update Info</title>

    <style>
        .border-bottom,
        .border-right {
            border-width: 5px !important;
        }
    </style>
</head>

<body>
	<%
		String uniqueUsername = (String)session.getAttribute("uniqueUser");
		User theUser = UserDao.getRecordByUsername(uniqueUsername);
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
                    <a href="update-info.jsp" class="list-group-item list-group-item-action disabled active">Update profile</a>
                    <a href="view-users.jsp" class="list-group-item list-group-item-action">Show other
                        users</a>
                    <a href="viewcd.jsp" class="list-group-item list-group-item-action">Cash Data</a>
                    <a href="viewcredit.jsp.jsp" class="list-group-item list-group-item-action">Credit Data</a>
                  
                </div>
            </div>
            <div class="col-md-10">
                <div class="row m-3">
                    <div class="container">
                        <form action="update-process.jsp">
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="name" value="<%=theUser.getName() %>" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label">Username</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="username" value="<%= theUser.getUsername() %>" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" name="email" value="<%= theUser.getEmail() %>" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="password" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-success float-right" onclick="disableBtn()">Update</button>
                                </div>
                            </div>
                        </form>
                </div>
                </div>
              
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