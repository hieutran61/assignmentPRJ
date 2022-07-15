<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Account Manager</title>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <form class="form-inline">                
                        <a role="button" class="btn btn-outline-success" href="login">Login</a>               
                   
                   
                        <a role="button" class="btn btn-outline-success" href="logout">Logout</a>    
                        <a role="button" class="btn btn-sm btn-outline-secondary" href="#">hello </a>                             
                </form>
            </nav>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>Username</td>
                        <td>Password</td>
                        <td>Fullname</td>
                        <td>Avatar</td>
                        <td>Role</td>
                        <td>Status</td>
                    </tr>
                </thead>

                    <tbody>
                        <c:forEach items="${list}" var="i">
                        <tr>
                            <td>${i.username}</td>
                            <td>${i.password}</td>
                            <td>${i.fullname}</td>
                            <td><img src="images/${i.avatar}" class="img-thumbnail" width="100px"></td>
                            <c:if test="${i.role==0}" >
                            <td>Admin</td>
                            </c:if>
                            <c:if test="${i.role==1}" >
                            <td>Writer</td>
                            </c:if>
                            <c:if test="${i.role==2}" >
                            <td>User</td>
                            </c:if>
                            <td>${i.status=="true" ? "Active":"Inactive"}</td>
                            <td>
                                <a role="button" class="btn btn-info" href="updateAccount?username=${i.username}">Update</a>
                                <a role="button" class="btn btn-danger" href="DeleteAccount?username=${i.username}">Delete</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>


                
             
            </table>
                <a role="button" class="btn btn-secondary" href="createAcc">Create new user</a>
            <a role="button" class="btn btn-outline-success" href="home">Back to homepage</a>
        </div>
    </body>
</html>
