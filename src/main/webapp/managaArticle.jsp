<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>ARTICLE</title>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <form class="form-inline">
                   
                        <a role="button" class="btn btn-secondary" href="login">Login</a>               

                   
                        <a role="button" class="btn btn-secondary"  href="logout">Logout</a>    
                        <a role="button">hello </a>             
                   
                </form>
            </nav>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>ArticleID</td>
                        <td>Title</td>
                        <td>Description</td>
                        <td>Image</td>
                        <td>Author</td>       
                        <td>TimePost</td>
                         <td>Like</td>
                        <td>CateId</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="i">
                    <tr>
                        <td>${i.articleId}</td>
                        <td>${i.title}</td>
                        <td>${i.description}</td>                       
                        <td><img src="images/${i.image}" class="img-thumbnail" width="100px"></td>
                        <td>${i.author}</td>
                        <td>${i.timePost}</td>
                        <td>${i.likes}</td>
                        <td>${i.cateId}</td>
                     
                            <td>
                                <a role="button" class="btn btn-secondary"  href="updateProduct?articleId=${i.articleId}">Update</a>
                                <a role="button" class="btn btn-secondary"  href="DeleteArticle?articleId=${i.articleId}">Delete</a>
                            </td>
                       
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            
                <a role="button" class="btn btn-secondary"  href="createNews">Tạo bài báo mới</a>
            
            <a role="button" class="btn btn-secondary"  href="home">home</a>

        </div>
    </body>
</html>
